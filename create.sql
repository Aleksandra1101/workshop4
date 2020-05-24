-- Generated by Oracle SQL Developer Data Modeler 19.4.0.350.1424
--   at:        2020-05-24 18:09:02 MSK
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



CREATE TABLE actor (
    actor_name NVARCHAR2(40) NOT NULL
);

ALTER TABLE actor ADD CONSTRAINT actor_pk PRIMARY KEY ( actor_name );

CREATE TABLE country (
    country_name NVARCHAR2(50) NOT NULL
);

ALTER TABLE country ADD CONSTRAINT country_pk PRIMARY KEY ( country_name );

CREATE TABLE film (
    film_id  INTEGER NOT NULL,
    title    NVARCHAR2(50),
    year     INTEGER
);

ALTER TABLE film ADD CONSTRAINT film_pk PRIMARY KEY ( film_id );

CREATE TABLE film_actor (
    film_film_id      INTEGER NOT NULL,
    actor_actor_name  NVARCHAR2(40) NOT NULL
);

ALTER TABLE film_actor ADD CONSTRAINT film_actor_pk PRIMARY KEY ( film_film_id,
                                                                  actor_actor_name );

CREATE TABLE film_country (
    film_film_id          INTEGER NOT NULL,
    country_country_name  NVARCHAR2(50) NOT NULL
);

ALTER TABLE film_country ADD CONSTRAINT film_country_pk PRIMARY KEY ( film_film_id );

ALTER TABLE film_actor
    ADD CONSTRAINT film_actor_actor_fk FOREIGN KEY ( actor_actor_name )
        REFERENCES actor ( actor_name );

ALTER TABLE film_actor
    ADD CONSTRAINT film_actor_film_fk FOREIGN KEY ( film_film_id )
        REFERENCES film ( film_id );

ALTER TABLE film_country
    ADD CONSTRAINT film_country_country_fk FOREIGN KEY ( country_country_name )
        REFERENCES country ( country_name );

ALTER TABLE film_country
    ADD CONSTRAINT film_country_film_fk FOREIGN KEY ( film_film_id )
        REFERENCES film ( film_id );