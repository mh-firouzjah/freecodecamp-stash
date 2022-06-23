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
-- Name: fifth_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fifth_table (
    fifth_table_id integer NOT NULL,
    name character varying(20) NOT NULL,
    second_col integer NOT NULL,
    third_col integer NOT NULL
);


ALTER TABLE public.fifth_table OWNER TO freecodecamp;

--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fifth_table_fifth_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fifth_table_fifth_table_id_seq OWNER TO freecodecamp;

--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fifth_table_fifth_table_id_seq OWNED BY public.fifth_table.fifth_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    distance_from_earth integer NOT NULL,
    radius integer,
    age_in_millions_of_years numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    planet_id integer NOT NULL,
    distance_from_earth integer NOT NULL,
    radius integer,
    age_in_millions_of_years numeric,
    is_spherical boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    star_id integer NOT NULL,
    distance_from_earth integer NOT NULL,
    radius integer,
    age_in_millions_of_years numeric,
    has_life boolean,
    is_spherical boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    galaxy_id integer NOT NULL,
    distance_from_earth integer NOT NULL,
    radius integer,
    age_in_millions_of_years numeric
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: fifth_table fifth_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table ALTER COLUMN fifth_table_id SET DEFAULT nextval('public.fifth_table_fifth_table_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: fifth_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fifth_table VALUES (1, 'row 1', 1, 3);
INSERT INTO public.fifth_table VALUES (2, 'row 2', 1, 2);
INSERT INTO public.fifth_table VALUES (3, 'row 3', 2, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky way', 'this our home galaxy', 0, 27000, 12.5);
INSERT INTO public.galaxy VALUES (2, 'Andromeda ', 'also known as Messier 31,M31, or NGC 224 and originally the Andromeda Nebula', 0, 27000, 12.5);
INSERT INTO public.galaxy VALUES (3, 'Backward', 'It appears to rotate backwards, as the tips of the spiral arms point in the direction of rotation.', 2000, 27000, 112.5);
INSERT INTO public.galaxy VALUES (4, 'Black Eye', 'The Black Eye Galaxy (also called Sleeping Beauty Galaxy or Evil Eye Galaxy and designated Messier 64, M64, or NGC 4826)', 2500000, 27000, 778.5);
INSERT INTO public.galaxy VALUES (5, 'Comet', 'The Comet Galaxy, a spiral galaxy located 3.2 billion light - years from Earth,in the galaxy cluster Abell 2667,was found with the Hubble Space Telescope.This galaxy has slightly more mass than our Milky Way.It was detected on 2 March 2007.[1]', 3000, 34000, 42.5);
INSERT INTO public.galaxy VALUES (6, 'Cosmos Redshift 7', 'CR7 shows some of the expected signatures of Population III stars i.e.the first generation of stars produced during early galaxy formation.[1] [2] [3] [4] [5] These signatures were detected in a bright pocket of blue stars; the rest of the galaxy contains redder Population II stars.', 13000, 27000, 800);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'moon 1', 'this moon number 1', 13, 32, 56, 4234, false);
INSERT INTO public.moon VALUES (22, 'moon 2', 'this moon number 2', 21, 12, 36, 234, true);
INSERT INTO public.moon VALUES (23, 'moon 3', 'this moon number 3', 13, 2, 6, 434, false);
INSERT INTO public.moon VALUES (24, 'moon 4', 'this moon number 4', 24, 312, 546, 42434, true);
INSERT INTO public.moon VALUES (25, 'moon 5', 'this moon number 5', 15, 122, 53, 876, false);
INSERT INTO public.moon VALUES (26, 'moon 6', 'this moon number 6', 16, 56, 234, 57568, false);
INSERT INTO public.moon VALUES (27, 'moon 7', 'this moon number 7', 17, 534, 5623, 42388, false);
INSERT INTO public.moon VALUES (28, 'moon 8', 'this moon number 8', 18, 329, 5698, 429876, false);
INSERT INTO public.moon VALUES (29, 'moon 9', 'this moon number 9', 19, 322, 526, 4214, false);
INSERT INTO public.moon VALUES (30, 'moon 10', 'this moon number 13', 20, 322, 536, 42534, false);
INSERT INTO public.moon VALUES (31, 'moon 11', 'this moon number 11', 21, 982, 599, 4994, false);
INSERT INTO public.moon VALUES (32, 'moon 12', 'this moon number 12', 22, 2345, 765, 9874, false);
INSERT INTO public.moon VALUES (33, 'moon 13', 'this moon number 13', 23, 312, 516, 42134, false);
INSERT INTO public.moon VALUES (34, 'moon 14', 'this moon number 14', 24, 321, 561, 42341, false);
INSERT INTO public.moon VALUES (35, 'moon 15', 'this moon number 15', 15, 352, 556, 42534, false);
INSERT INTO public.moon VALUES (36, 'moon 16', 'this moon number 16', 16, 362, 656, 42634, false);
INSERT INTO public.moon VALUES (37, 'moon 17', 'this moon number 17', 13, 372, 567, 42374, false);
INSERT INTO public.moon VALUES (38, 'moon 18', 'this moon number 18', 18, 332, 563, 42334, false);
INSERT INTO public.moon VALUES (39, 'moon 19', 'this moon number 19', 19, 332, 536, 42314, false);
INSERT INTO public.moon VALUES (40, 'moon 20', 'this moon number 20', 21, 302, 506, 42034, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (13, 'Mercury', 'Mercury is a chemical element with the symbol Hg and atomic number 80.It is commonly known as quicksilver and was formerly named hydrargyrum from the Greek words, hydor and argyros.', 1, 32, 121, 3.5, false, true);
INSERT INTO public.planet VALUES (14, 'Venus', 'enus is the second planet from the Sun and is named after the Roman goddess of love and beauty.', 2, 12, 21, 4.5, false, true);
INSERT INTO public.planet VALUES (15, 'Earth', 'Earth is an ellipsoid with a circumference of about 40,000 km.It is the densest planet in the Solar System.Of the four rocky planets.', 3, 13, 21, 23.5, true, true);
INSERT INTO public.planet VALUES (16, 'Mars', 'Mars is the fourth planet from the Sun and the second - smallest planet in the Solar System, being larger than only Mercury.In English, Mars carries the name of the Roman god of war.', 4, 312, 14, 91.5, true, true);
INSERT INTO public.planet VALUES (17, 'Jupiter', 'Jupiter is the fifth plane from the Sun and the largest in the Solar System.It is a gas giant with a mass more than two and a half times that of all the...', 5, 52, 921, 39.5, true, false);
INSERT INTO public.planet VALUES (18, 'Saturn', 'Saturn is the sixth planet from the Sun and the second - largest in the Solar System, after Jupiter.', 6, 42, 21, 83.5, false, false);
INSERT INTO public.planet VALUES (19, 'Uranus', 'Uranus is the seventh planet from the Sun.', 1, 62, 324, 98.5, false, false);
INSERT INTO public.planet VALUES (20, 'Neptune', 'Neptune is the eighth and farthest-known Solar planet from the Sun.', 2, 98, 865, 4.5, false, true);
INSERT INTO public.planet VALUES (21, 'Jupiter out', 'Jupiter out is out of solar system', 3, 52, 921, 39.5, true, false);
INSERT INTO public.planet VALUES (22, 'Saturn out', 'Saturn out is out of solar system', 4, 42, 21, 83.5, false, false);
INSERT INTO public.planet VALUES (23, 'Uranus out', 'Uranus is the out of solar system', 5, 62, 324, 98.5, false, false);
INSERT INTO public.planet VALUES (24, 'Neptune out', 'Neptune is the eighth and farthest-known Solar planet from the Sun.', 6, 98, 865, 4.5, false, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The Sun in milky way galaxy', 1, 14, 10, 5.2);
INSERT INTO public.star VALUES (2, 'Sun 2', 'The Sun 2', 2, 140, 110, 9.2);
INSERT INTO public.star VALUES (3, 'Sun 3', 'The Sun 3', 3, 114, 11, 12.7);
INSERT INTO public.star VALUES (4, 'Sun 4', 'The Sun 4', 4, 32, 44, 4.7);
INSERT INTO public.star VALUES (5, 'Sun 5', 'The Sun 5', 5, 14, 10, 5);
INSERT INTO public.star VALUES (6, 'Sun 6', 'The Sun 6', 6, 114, 101, 5.5);


--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fifth_table_fifth_table_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: fifth_table fifth_table_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_name_key UNIQUE (name);


--
-- Name: fifth_table fifth_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_pkey PRIMARY KEY (fifth_table_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


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
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


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

