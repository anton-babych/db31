CREATE TABLE "auto" (
  "id_auto" serial PRIMARY KEY,
  "car_number" char(6),
  "brand" varchar(20)
);

CREATE TABLE "spot" (
  "id_spot" serial PRIMARY KEY,
  "seat_number" int,
  "type" varchar(20)
);

CREATE TABLE "parking" (
  "id_parking" serial PRIMARY KEY,
  "date_entry" date,
  "time_entry" time,
  "id_spot" int,
  "id_auto" int,
  "date_departure" date,
  "time_departure" time
);

ALTER TABLE "parking" ADD FOREIGN KEY ("id_spot") REFERENCES "spot" ("id_spot");

ALTER TABLE "parking" ADD FOREIGN KEY ("id_auto") REFERENCES "auto" ("id_auto");
