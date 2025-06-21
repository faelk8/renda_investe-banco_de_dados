import os
import psycopg2
import pandas as pd
from dotenv import load_dotenv
from psycopg2.extras import RealDictCursor
import warnings
warnings.filterwarnings("ignore")


class PostgresConnector:
    def __init__(self):
        load_dotenv()
        self.conn = psycopg2.connect(
            host=os.getenv("DB_HOST"),
            port=os.getenv("DB_PORT"),
            dbname=os.getenv("DB_NAME"),
            user=os.getenv("DB_USER"),
            password=os.getenv("DB_PASSWORD")
        )
        self.conn.autocommit = True  # útil para operações simples
        self.cursor = self.conn.cursor(cursor_factory=RealDictCursor)

    def buscar(self, query, params=None):
        self.cursor.execute(query, params)
        rows = self.cursor.fetchall()
        if not rows:
            return pd.DataFrame()
        return pd.DataFrame(rows)

    def inserir(self, query, params=None):
        self.cursor.execute(query, params)
        self.conn.commit()

    def close(self):
        self.cursor.close()
        self.conn.close()
