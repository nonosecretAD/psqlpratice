
--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    star_amount integer NOT NULL,
    location text,
    age_in_millions_of_years integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    quality numeric NOT NULL,
    location text,
    alive boolean,
    planet_id integer,
    age_in_millions_of_years integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: mountain; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.mountain (
    mountain_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_millions_of_years integer
);


ALTER TABLE public.mountain OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    location text,
    alive boolean,
    star_id integer,
    age_in_millions_of_years integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    planet_amount integer NOT NULL,
    location text,
    galaxy_id integer,
    age_in_millions_of_years integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'first', 3, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'second', 3, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'third', 3, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'fouth', 3, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'fifth', 3, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'sixth', 3, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, '1', 1, NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (2, '2', 1, NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (3, '3', 1, NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (4, '4', 1, NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (5, '5', 1, NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (6, '6', 1, NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (7, '7', 1, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (8, '8', 1, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (9, '9', 1, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (10, '10', 1, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (11, '11', 1, NULL, NULL, 3, NULL);
INSERT INTO public.moon VALUES (12, '12', 1, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (13, '13', 1, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (14, '14', 1, NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (15, '15', 1, NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (16, '16', 1, NULL, NULL, 8, NULL);
INSERT INTO public.moon VALUES (17, '17', 1, NULL, NULL, 9, NULL);
INSERT INTO public.moon VALUES (18, '18', 2, NULL, NULL, 10, NULL);
INSERT INTO public.moon VALUES (19, '19', 3, NULL, NULL, 11, NULL);
INSERT INTO public.moon VALUES (20, '20', 4, NULL, NULL, 12, NULL);


--
-- Data for Name: mountain; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.mountain VALUES (1, 'first', NULL);
INSERT INTO public.mountain VALUES (2, 'second', NULL);
INSERT INTO public.mountain VALUES (3, 'third', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'first', NULL, NULL, 3, NULL);
INSERT INTO public.planet VALUES (2, 'second', NULL, NULL, 3, NULL);
INSERT INTO public.planet VALUES (3, 'third', NULL, NULL, 3, NULL);
INSERT INTO public.planet VALUES (4, 'fouth', NULL, NULL, 3, NULL);
INSERT INTO public.planet VALUES (5, 'fifth', NULL, NULL, 3, NULL);
INSERT INTO public.planet VALUES (6, 'sixth', NULL, NULL, 3, NULL);
INSERT INTO public.planet VALUES (7, '7', NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (8, '8', NULL, NULL, 2, NULL);
INSERT INTO public.planet VALUES (9, '9', NULL, NULL, 4, NULL);
INSERT INTO public.planet VALUES (10, '10', NULL, NULL, 5, NULL);
INSERT INTO public.planet VALUES (11, '11', NULL, NULL, 6, NULL);
INSERT INTO public.planet VALUES (12, '12', NULL, NULL, 6, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'first', 3, NULL, 1, NULL);
INSERT INTO public.star VALUES (2, 'second', 3, NULL, 1, NULL);
INSERT INTO public.star VALUES (3, 'third', 3, NULL, 2, NULL);
INSERT INTO public.star VALUES (4, 'fouth', 3, NULL, 2, NULL);
INSERT INTO public.star VALUES (5, 'fifth', 3, NULL, 3, NULL);
INSERT INTO public.star VALUES (6, 'sixth', 3, NULL, 3, NULL);


--
-- Name: galaxy galaxy_location_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_location_key UNIQUE (location);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_alive_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_alive_key UNIQUE (alive);


--
-- Name: moon moon_location_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_location_key UNIQUE (location);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: mountain mountain_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mountain
    ADD CONSTRAINT mountain_name_key UNIQUE (name);


--
-- Name: mountain mountain_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mountain
    ADD CONSTRAINT mountain_pkey PRIMARY KEY (mountain_id);


--
-- Name: planet planet_alive_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_alive_key UNIQUE (alive);


--
-- Name: planet planet_location_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_location_key UNIQUE (location);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_location_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_location_key UNIQUE (location);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

