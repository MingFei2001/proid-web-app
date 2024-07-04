import sqlite3
from flask import Flask, render_template

app = Flask(__name__, static_folder='static')

connection = sqlite3.connect('database.db')
with open('schema.sql') as f:
    connection.executescript(f.read())
connection.commit()
connection.close()

def get_db_connection():
    conn = sqlite3.connect('database.db')
    conn.row_factory = sqlite3.Row
    return conn

@app.route('/')
def index():
    conn = get_db_connection()
    events = conn.execute('SELECT * FROM events;')
    conn.close()
    return render_template('index.html',events=events)

@app.route('/about')
def about():
    return render_template('about.html')

if __name__ == '__main__':
    app.run(debug=True)
