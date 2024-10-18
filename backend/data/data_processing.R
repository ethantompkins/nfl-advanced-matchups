# Load necessary libraries
library(nflfastR)
library(dplyr)
library(DBI)
library(RPostgres)

# Connect to the database (PostgreSQL)
con <- dbConnect(RPostgres::Postgres(), 
                 dbname = "nfl_data",
                 host = "db",  # Use the Docker service name for PostgreSQL
                 user = "nfl_user",
                 password = "nfl_password")

# Function to load play-by-play data for a given year range
load_pbp_data <- function(start_year, end_year) {
  pbp_data <- load_pbp(start_year:end_year)
  
  # Process the data (e.g., filter relevant columns)
  processed_data <- pbp_data %>%
    select(game_id, play_id, season, week, home_team, away_team, posteam, defteam, 
           down, ydstogo, yards_gained, play_type, passer, rusher, receiver, 
           epa, wpa, success)
  
  # Write to the PostgreSQL database
  dbWriteTable(con, "pbp_data", processed_data, append = TRUE, row.names = FALSE)
}

# Load data for the current and past seasons
load_pbp_data(2020, 2024)

# Disconnect from the database
dbDisconnect(con)