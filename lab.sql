CREATE SCHEMA public AUTHORIZATION pg_database_owner;


CREATE TABLE public.пациенты (
	id int4 NOT NULL GENERATED ALWAYS AS IDENTITY,
	CONSTRAINT пациенты_pk PRIMARY KEY (id)
);



CREATE TABLE public.врачи (
	id int4 NOT NULL GENERATED ALWAYS AS IDENTITY,
	CONSTRAINT врачи_pk PRIMARY KEY (id)
);




CREATE TABLE public."журнал приёма" (
	id int4 NOT NULL GENERATED ALWAYS AS IDENTITY,
	пациент int4 NOT NULL,
	врач int4 NOT NULL,
	анамнез varchar NULL,
	диагноз varchar NULL,
	CONSTRAINT журнал_приёма_pk PRIMARY KEY (id)
);




CREATE TABLE public."личные дела сотрудников" (
	id int4 NOT NULL,
	фио varchar NOT NULL,
	специализация varchar NOT NULL,
	адрес varchar NULL,
	телефон numeric NULL,
	timefrom timestamp NOT NULL,
	timeto timestamp NULL
);



CREATE TABLE public."больничные карты" (
	id int4 NOT NULL,
	фио varchar NOT NULL,
	адрес varchar NULL,
	телефон numeric NULL,
	timefrom timestamp NOT NULL,
	timeto timestamp NULL
);




CREATE TABLE public."личный кабинет" (
	id int4 NOT NULL,
	фио varchar NOT NULL,
	"электронная почта" varchar NULL,
	записи varchar NULL,
	timefrom timestamp NOT NULL,
	timeto timestamp NULL
);