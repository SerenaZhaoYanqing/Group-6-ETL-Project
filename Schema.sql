-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE "volcano" (
    "volcano_number" integer   NOT NULL,
    "volcano_name" varchar   NOT NULL,
    "primary_volcano_type" varchar   NOT NULL,
    "last_eruption_year" integer   NOT NULL,
    "country" varchar   NOT NULL,
    "region" varchar   NOT NULL,
    "latitude" float   NOT NULL,
    "longitude" float   NOT NULL,
    "population_within_5_km" integer   NOT NULL,
    "population_within_10_km" integer   NOT NULL,
    "population_within_30_km" integer   NOT NULL,
    "population_within_100_km" integer   NOT NULL,
    CONSTRAINT "pk_volcano" PRIMARY KEY (
        "volcano_number"
     )
);

CREATE TABLE "Eruptions" (
    "eruption_number" integer   NOT NULL,
    "volcano_number" integer   NOT NULL,
    "volcano_name" varchar   NOT NULL,
    "latitude" float   NOT NULL,
    "longitude" float   NOT NULL,
    "start date" date   NOT NULL,
    "end date" date   NOT NULL,
    "event_number" integer   NOT NULL,
    "event_type" varchar   NOT NULL,
    "event_date" date   NOT NULL,
    CONSTRAINT "pk_Eruptions" PRIMARY KEY (
        "eruption_number","volcano_number"
     )
);

CREATE TABLE "Significant_Eruptions_impacts" (
    "volcano_number" integer   NOT NULL,
    "volcano_name" varchar   NOT NULL,
    "country" varchar   NOT NULL,
    "damages" integer   NOT NULL,
    "displacedPersons" integer   NOT NULL,
    "start_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "duration" integer   NOT NULL,
    CONSTRAINT "pk_Significant_Eruptions_impacts" PRIMARY KEY (
        "volcano_number"
     )
);

CREATE TABLE "Population_By_Country_Summary" (
    "country" varchar   NOT NULL,
    "population_within_5_km" integer   NOT NULL,
    "population_within_10_km" integer   NOT NULL,
    "population_within_30_km" integer   NOT NULL,
    "population_within_100_km" integer   NOT NULL,
    CONSTRAINT "pk_Population_By_Country_Summary" PRIMARY KEY (
        "country"
     )
);

CREATE TABLE "Events" (
    "event_number" integer   NOT NULL,
    "volcano_number" integer   NOT NULL,
    "volcano_name" varchar   NOT NULL,
    "eruption_number" integer   NOT NULL,
    "eruption_start_year" integer   NOT NULL,
    "event_type" varchar   NOT NULL,
    "event_date" date   NOT NULL,
    CONSTRAINT "pk_Events" PRIMARY KEY (
        "event_number"
     )
);

ALTER TABLE "volcano" ADD CONSTRAINT "fk_volcano_volcano_number" FOREIGN KEY("volcano_number")
REFERENCES "Significant_Eruptions_impacts" ("volcano_number");

ALTER TABLE "volcano" ADD CONSTRAINT "fk_volcano_country" FOREIGN KEY("country")
REFERENCES "Population_By_Country_Summary" ("country");

ALTER TABLE "Eruptions" ADD CONSTRAINT "fk_Eruptions_volcano_number" FOREIGN KEY("volcano_number")
REFERENCES "volcano" ("volcano_number");

ALTER TABLE "Eruptions" ADD CONSTRAINT "fk_Eruptions_event_number" FOREIGN KEY("event_number")
REFERENCES "Events" ("event_number");

