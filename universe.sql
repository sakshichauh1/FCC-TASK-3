--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    name character varying(80) NOT NULL,
    age integer NOT NULL,
    height numeric,
    email text,
    indian boolean
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(80) NOT NULL,
    age integer NOT NULL,
    height numeric,
    text integer,
    indian boolean,
    email text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(80) NOT NULL,
    age integer NOT NULL,
    height numeric,
    email text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(80) NOT NULL,
    age integer NOT NULL,
    height numeric,
    email text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(80) NOT NULL,
    age integer NOT NULL,
    height numeric,
    email text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (1, 'A', 78, 98, 'A', NULL);
INSERT INTO public.earth VALUES (2, 'B', 78, 98, 'A', NULL);
INSERT INTO public.earth VALUES (3, 'C', 78, 98, 'A', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'A', 67, 78, NULL, NULL, 'A');
INSERT INTO public.galaxy VALUES (2, 'B', 67, 78, NULL, NULL, 'A');
INSERT INTO public.galaxy VALUES (3, 'C', 67, 78, NULL, NULL, 'A');
INSERT INTO public.galaxy VALUES (4, 'D', 67, 78, NULL, NULL, 'A');
INSERT INTO public.galaxy VALUES (5, 'E', 67, 78, NULL, NULL, 'A');
INSERT INTO public.galaxy VALUES (6, 'F', 67, 78, NULL, NULL, 'A');
INSERT INTO public.galaxy VALUES (7, 'G', 67, 78, NULL, NULL, 'A');
INSERT INTO public.galaxy VALUES (8, 'H', 67, 78, NULL, NULL, 'A');
INSERT INTO public.galaxy VALUES (9, 'J', 34, 67, NULL, NULL, 'A');
INSERT INTO public.galaxy VALUES (10, 'K', 34, 67, NULL, NULL, 'A');
INSERT INTO public.galaxy VALUES (11, 'L', 34, 67, NULL, NULL, 'A');
INSERT INTO public.galaxy VALUES (12, 'M', 34, 67, NULL, NULL, 'A');
INSERT INTO public.galaxy VALUES (13, 'N', 34, 67, NULL, NULL, 'A');
INSERT INTO public.galaxy VALUES (14, 'O', 34, 67, NULL, NULL, 'A');
INSERT INTO public.galaxy VALUES (15, 'P', 34, 67, NULL, NULL, 'A');
INSERT INTO public.galaxy VALUES (16, 'Q', 34, 67, NULL, NULL, 'A');
INSERT INTO public.galaxy VALUES (17, 'R', 34, 67, NULL, NULL, 'A');
INSERT INTO public.galaxy VALUES (18, 'S', 34, 67, NULL, NULL, 'A');
INSERT INTO public.galaxy VALUES (19, 'T', 34, 67, NULL, NULL, 'A');
INSERT INTO public.galaxy VALUES (20, 'U', 34, 67, NULL, NULL, 'A');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'a', 89, 34, 'a', 1);
INSERT INTO public.moon VALUES (2, 'b', 89, 34, 'a', 2);
INSERT INTO public.moon VALUES (3, 'c', 89, 34, 'a', 3);
INSERT INTO public.moon VALUES (4, 'd', 89, 34, 'a', 4);
INSERT INTO public.moon VALUES (5, 'e', 89, 34, 'a', 5);
INSERT INTO public.moon VALUES (6, 'f', 89, 34, 'a', 6);
INSERT INTO public.moon VALUES (7, 'g', 89, 34, 'a', 7);
INSERT INTO public.moon VALUES (8, 'h', 89, 34, 'a', 8);
INSERT INTO public.moon VALUES (9, 'i', 89, 34, 'a', 9);
INSERT INTO public.moon VALUES (10, 'j', 89, 34, 'a', 10);
INSERT INTO public.moon VALUES (11, 'k', 89, 34, 'a', 11);
INSERT INTO public.moon VALUES (12, 'K', 67, 89, 'A', 12);
INSERT INTO public.moon VALUES (13, 'L', 67, 89, 'A', 13);
INSERT INTO public.moon VALUES (14, 'M', 67, 89, 'A', 14);
INSERT INTO public.moon VALUES (15, 'N', 67, 89, 'A', 15);
INSERT INTO public.moon VALUES (16, 'O', 67, 89, 'A', 16);
INSERT INTO public.moon VALUES (17, 'P', 67, 89, 'A', 17);
INSERT INTO public.moon VALUES (18, 'Q', 67, 89, 'A', 18);
INSERT INTO public.moon VALUES (19, 'R', 67, 89, 'A', 19);
INSERT INTO public.moon VALUES (20, 'S', 67, 89, 'A', 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'a', 34, 67, 'A', 1);
INSERT INTO public.planet VALUES (2, 'b', 34, 67, 'A', 2);
INSERT INTO public.planet VALUES (3, 'c', 34, 67, 'A', 3);
INSERT INTO public.planet VALUES (4, 'd', 34, 67, 'A', 4);
INSERT INTO public.planet VALUES (5, 'e', 34, 67, 'A', 5);
INSERT INTO public.planet VALUES (6, 'f', 34, 67, 'A', 6);
INSERT INTO public.planet VALUES (7, 'g', 34, 67, 'A', 7);
INSERT INTO public.planet VALUES (8, 'h', 34, 67, 'A', 8);
INSERT INTO public.planet VALUES (9, 'i', 34, 67, 'A', 9);
INSERT INTO public.planet VALUES (10, 'j', 34, 67, 'A', 10);
INSERT INTO public.planet VALUES (11, 'k', 34, 67, 'A', 11);
INSERT INTO public.planet VALUES (12, 'l', 34, 67, 'A', 12);
INSERT INTO public.planet VALUES (13, 'm', 34, 67, 'A', 13);
INSERT INTO public.planet VALUES (14, 't', 89, 34, 'a', 14);
INSERT INTO public.planet VALUES (15, 'u', 89, 34, 'a', 15);
INSERT INTO public.planet VALUES (16, 'v', 89, 34, 'a', 16);
INSERT INTO public.planet VALUES (17, 'w', 89, 34, 'a', 17);
INSERT INTO public.planet VALUES (18, 'x', 89, 34, 'a', 18);
INSERT INTO public.planet VALUES (19, 'y', 89, 34, 'a', 19);
INSERT INTO public.planet VALUES (20, 'z', 89, 34, 'a', 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'A', 34, 67, 'A', 1);
INSERT INTO public.star VALUES (2, 'b', 34, 67, 'A', 2);
INSERT INTO public.star VALUES (3, 'c', 34, 67, 'A', 3);
INSERT INTO public.star VALUES (4, 'd', 34, 67, 'A', 4);
INSERT INTO public.star VALUES (5, 'e', 34, 67, 'A', 5);
INSERT INTO public.star VALUES (6, 'f', 34, 67, 'A', 6);
INSERT INTO public.star VALUES (7, 'g', 34, 67, 'A', 6);
INSERT INTO public.star VALUES (8, 'h', 34, 67, 'A', 8);
INSERT INTO public.star VALUES (9, 'i', 34, 67, 'A', 9);
INSERT INTO public.star VALUES (10, 'j', 34, 67, 'A', 10);
INSERT INTO public.star VALUES (11, 'k', 34, 67, 'A', 11);
INSERT INTO public.star VALUES (12, 'l', 34, 67, 'A', 12);
INSERT INTO public.star VALUES (13, 'm', 34, 67, 'A', 13);
INSERT INTO public.star VALUES (14, 'n', 34, 67, 'A', 14);
INSERT INTO public.star VALUES (15, '0', 34, 67, 'A', 15);
INSERT INTO public.star VALUES (16, 'p', 34, 67, 'A', 16);
INSERT INTO public.star VALUES (17, 'q', 34, 67, 'A', 17);
INSERT INTO public.star VALUES (18, 'r', 34, 67, 'A', 18);
INSERT INTO public.star VALUES (19, 's', 34, 67, 'A', 19);
INSERT INTO public.star VALUES (20, 't', 34, 67, 'A', 20);


--
-- Name: earth earth_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_id UNIQUE (earth_id);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


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

