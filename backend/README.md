```markdown
# Backend Setup

## Prerequisites
- Docker
- PostgreSQL Database

## Setup Instructions

1. **Database Setup**
   - Create a PostgreSQL database named `nfl_data`.
   - Use the `setup_database.sql` file (found in the `database/` directory) to set up the necessary tables.

2. **Build and Run Docker Container**
   ```sh
   docker build -t nfl-backend .
   docker run -d -p 8000:8000 --name nfl-backend nfl-backend
   ```

3. **Data Processing**
   - Use the `update_data.sh` script to run data updates periodically.
   - You can set up a cron job to run this script daily.

4. **API Endpoints**
   - `/team_leaderboard/{season}/{week}`: Get the team leaderboard for a specific season and week.
   - `/player_leaderboard/{stat_type}`: Get the player leaderboard for a specific statistic.
