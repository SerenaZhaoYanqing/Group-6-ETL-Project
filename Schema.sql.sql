CREATE TABLE "volcano" (
    "volcano_number" integer ,
    "volcano_name" varchar ,
    "primary_volcano_type" varchar ,
    "last_eruption_year" integer ,
    "country" varchar ,
    "region" varchar ,
    "latitude" float ,
    "longitude" float ,
    "population_within_5_km" integer ,
    "population_within_10_km" integer ,
    "population_within_30_km" integer ,
    "population_within_100_km" integer ,
    CONSTRAINT "pk_volcano" PRIMARY KEY (
        "volcano_number"
     )
);


CREATE TABLE "Events" (
    "event_number" integer ,
    "eruption_number" integer ,
    "volcano_number" integer ,
    "volcano_name" varchar ,
    "eruption_category" varchar ,
    "eruption_start_year" integer ,
    "event_type" varchar ,
    "event_date" date ,
    CONSTRAINT "pk_Events" PRIMARY KEY (
        "event_number")
	);

CREATE TABLE "Eruptions" (
    "eruption_number" integer ,
    "volcano_number" integer ,
    "volcano_name" varchar ,
    "latitude" float ,
    "longitude" float ,
    "start date" date ,
    "end date" date ,
    CONSTRAINT "pk_Eruptions" PRIMARY KEY (
        "eruption_number","volcano_number"
     )
);

CREATE TABLE "Significant_Eruptions_impacts" (
    "volcano_number" integer ,
    "country" varchar ,
    "damages" integer ,
    "displacedPersons" integer ,
    "start_date" date ,
    "end_date" date ,
    "duration" integer ,
    "population_within_100km" integer ,
    "totalDeaths" integer ,
    "latitude" float ,
    "longitude" float ,
    CONSTRAINT "pk_Significant_Eruptions_impacts" PRIMARY KEY (
        "volcano_number"
     )
);

