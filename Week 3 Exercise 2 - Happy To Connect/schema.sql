CREATE TABLE "users" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "username" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE "schools" (
    "name" TEXT,
    "type" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    "year_founded" INTEGER NOT NULL,
    PRIMARY KEY ("name")
);

CREATE TABLE "companies" (
    "name" TEXT,
    "industry" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    PRIMARY KEY ("name")
);

CREATE TABLE "connections" (
    "user_id" INTEGER,
    "school" TEXT,
    "company" TEXT,
    "start_school_date" TEXT NOT NULL,
    "end_school_date" TEXT NOT NULL,
    "degree_type" TEXT NOT NULL,
    "start_company_date" TEXT NOT NULL,
    "end_company_date" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    FOREIGN KEY ("user_id") REFERENCES "users"("id"),
    FOREIGN KEY ("school") REFERENCES "schools"("name"),
    FOREIGN KEY ("company") REFERENCES "companies"("name")
);
