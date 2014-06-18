CREATE TABLE butterflies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  image TEXT,
  family TEXT 
);

CREATE TABLE butterflies_in_families (
  butterfly_id INTEGER,
  family_id INTEGER
);

CREATE TABLE families(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  family TEXT
);
