CREATE TABLE "passengers" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "age" INTEGER NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE "check_ins" (
    "passenger_id" INTEGER,
    "date" TEXT NOT NULL,
    "time" TEXT NOT NULL,
    "flight_number" INTEGER,
    FOREIGN KEY ("passenger_id") REFERENCES "passengers"("id"),
    FOREIGN KEY ("flight_number") REFERENCES "flights"("flight_number")
);

CREATE TABLE "airlines" (
    "name" TEXT NOT NULL,
    "concourse" TEXT NOT NULL CHECK ("concourse" IN ('A', 'B', 'C', 'D', 'E', 'F', 'T'))
);

CREATE TABLE "flights" (
    "flight_number" INTEGER NOT NULL,
    "airline" TEXT,
    "code_depart" TEXT NOT NULL,
    "code_arrive" TEXT NOT NULL,
    "depart_date" TEXT NOT NULL,
    "depart_time" TEXT NOT NULL,
    "arrive_date" TEXT NOT NULL,
    "arrive_time" TEXT NOT NULL,
    FOREIGN KEY ("airline") REFERENCES "airlines"("name")
);
