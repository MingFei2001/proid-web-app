DROP TABLE IF EXISTS events;

CREATE TABLE events (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name TEXT NOT NULL,
	location TEXT NOT NULL,
	contacts TEXT NOT NULL
);

INSERT INTO events ('name', 'location', 'contacts')
VALUES
('Booth 1: Sharing is Caring', '#01-01', '99908898');
