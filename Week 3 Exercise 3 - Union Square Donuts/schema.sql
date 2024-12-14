CREATE TABLE "ingredients" (
    "name" TEXT,
    "price_per_unit" NUMERIC NOT NULL,
    PRIMARY KEY ("name")
);

CREATE TABLE "donuts" (
    "donut_name" TEXT,
    "gluten_free" INTEGER NOT NULL,
    "price" NUMERIC NOT NULL,
    "ingredient" TEXT,
    PRIMARY KEY ("donut_name"),
    FOREIGN KEY ("ingredient") REFERENCES "ingredients"("name")
);

CREATE TABLE "orders" (
    "order_number" INTEGER,
    "donut" TEXT,
    "customer" INTEGER,
    PRIMARY KEY ("order_number"),
    FOREIGN KEY ("donut") REFERENCES "donuts"("donut_name"),
    FOREIGN KEY ("customer") REFERENCES "customers"("id")
);

CREATE TABLE "customers" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "order_history" INTEGER,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("order_history") REFERENCES "orders"("order_number")
);
