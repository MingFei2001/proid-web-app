DROP TABLE IF EXISTS events;
DROP TABLE IF EXISTS notis;

CREATE TABLE events (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name TEXT NOT NULL,
	location TEXT NOT NULL,
	contacts TEXT NOT NULL
);

INSERT INTO events ('name', 'location', 'contacts')
VALUES
('The Salvation Army', '#01-01', '99908898'),
('Our SG Fund', '#01-02', '99908898'),
('FoodBank', '#02-01', '9906243'),
('Fair Price Foundation', '#02-02', '9906243'),
('Singapore Red Cross Society', '#01-03', '99889988');

CREATE TABLE notis (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	noti TEXT NOT NULL
);

INSERT INTO notis ('noti')
VALUES
('Nothing yet');
