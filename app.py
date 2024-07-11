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

@app.route('/booth/<int:id>', methods=['GET','POST'])
def booth(id):
    conn = get_db_connection()
    booth = conn.execute('SELECT * FROM events WHERE id = ?', (id,)).fetchone()
    conn.close()

    if booth is None:
        return "Booth not Found", 404

    return render_template('booth.html', booth=booth)

if __name__ == '__main__':
    app.run(debug=True)
