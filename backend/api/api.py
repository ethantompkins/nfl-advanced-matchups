from fastapi import FastAPI
import psycopg2
from typing import List
import os

app = FastAPI()

def get_db_connection():
    conn = psycopg2.connect(
        dbname=os.getenv("DB_NAME"),
        user=os.getenv("DB_USER"),
        password=os.getenv("DB_PASSWORD"),
        host=os.getenv("DB_HOST"),
        port=os.getenv("DB_PORT")
    )
    return conn


@app.get("/team_leaderboard/{season}/{week}")
def get_team_leaderboard(season: int, week: int):
    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute("""
        SELECT team, points_scored, epa
        FROM team_stats
        WHERE season = %s AND week = %s
        ORDER BY points_scored DESC
    """, (season, week))
    result = cursor.fetchall()
    conn.close()
    return {"leaderboard": result}

@app.get("/player_leaderboard/{stat_type}")
def get_player_leaderboard(stat_type: str):
    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute(f"""
        SELECT player_name, team, {stat_type}
        FROM player_stats
        ORDER BY {stat_type} DESC
        LIMIT 10
    """)
    result = cursor.fetchall()
    conn.close()
    return {"leaderboard": result}