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
    name character varying(30) NOT NULL,
    has_life boolean NOT NULL,
    age integer,
    description text,
    has_drugs boolean
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
-- Name: galaxy_planets; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_planets (
    galaxy_planets_id integer NOT NULL,
    name character varying(30) NOT NULL,
    rd integer,
    rds integer
);


ALTER TABLE public.galaxy_planets OWNER TO freecodecamp;

--
-- Name: galaxy_planets_galaxy_planets_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_planets_galaxy_planets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_planets_galaxy_planets_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_planets_galaxy_planets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_planets_galaxy_planets_id_seq OWNED BY public.galaxy_planets.galaxy_planets_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    year integer NOT NULL,
    month integer NOT NULL,
    location numeric
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
    name character varying(30),
    has_lif boolean NOT NULL,
    age integer,
    number integer
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
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    distance numeric,
    description text
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_planets galaxy_planets_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_planets ALTER COLUMN galaxy_planets_id SET DEFAULT nextval('public.galaxy_planets_galaxy_planets_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (11, 'milky way', true, 14, 'we live here', true);
INSERT INTO public.galaxy VALUES (12, 'andromeda', false, 24, 'idk', true);
INSERT INTO public.galaxy VALUES (13, 'cigar', false, 24, 'idk', true);
INSERT INTO public.galaxy VALUES (14, 'name4', false, 12, 'idk', true);
INSERT INTO public.galaxy VALUES (15, 'name5', false, 12, 'idk', true);
INSERT INTO public.galaxy VALUES (16, 'name6', false, 12, 'idk', true);


--
-- Data for Name: galaxy_planets; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_planets VALUES (4, 'name1', NULL, NULL);
INSERT INTO public.galaxy_planets VALUES (5, 'name2', NULL, NULL);
INSERT INTO public.galaxy_planets VALUES (6, 'name3', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'name1', 2000, 1, 112.3);
INSERT INTO public.moon VALUES (2, 'name2', 2000, 1, 112.3);
INSERT INTO public.moon VALUES (3, 'name3', 2000, 1, 112.3);
INSERT INTO public.moon VALUES (4, 'name4', 2000, 1, 112.3);
INSERT INTO public.moon VALUES (5, 'name5', 2000, 1, 112.3);
INSERT INTO public.moon VALUES (6, 'name6', 2000, 1, 112.3);
INSERT INTO public.moon VALUES (7, 'name7', 2000, 1, 112.3);
INSERT INTO public.moon VALUES (8, 'name8', 2000, 1, 112.3);
INSERT INTO public.moon VALUES (9, 'name9', 2000, 1, 112.3);
INSERT INTO public.moon VALUES (10, 'name10', 2000, 1, 112.3);
INSERT INTO public.moon VALUES (11, 'name11', 2000, 1, 112.3);
INSERT INTO public.moon VALUES (12, 'name12', 2000, 1, 112.3);
INSERT INTO public.moon VALUES (13, 'name13', 2000, 1, 112.3);
INSERT INTO public.moon VALUES (14, 'name14', 2000, 1, 112.3);
INSERT INTO public.moon VALUES (15, 'name15', 2000, 1, 112.3);
INSERT INTO public.moon VALUES (16, 'name16', 2000, 1, 112.3);
INSERT INTO public.moon VALUES (17, 'name17', 2000, 1, 112.3);
INSERT INTO public.moon VALUES (18, 'name18', 2000, 1, 112.3);
INSERT INTO public.moon VALUES (19, 'name19', 2000, 1, 112.3);
INSERT INTO public.moon VALUES (20, 'name20', 2000, 1, 112.3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (24, 'earth', true, 14, NULL);
INSERT INTO public.planet VALUES (25, 'uranus', false, 714, NULL);
INSERT INTO public.planet VALUES (26, 'mars', false, 514, NULL);
INSERT INTO public.planet VALUES (27, 'venus', false, 124, NULL);
INSERT INTO public.planet VALUES (28, 'jupiter', false, 214, NULL);
INSERT INTO public.planet VALUES (29, 'nepton', false, 164, NULL);
INSERT INTO public.planet VALUES (30, 'pluto', false, 154, NULL);
INSERT INTO public.planet VALUES (31, 'saturn', false, 144, NULL);
INSERT INTO public.planet VALUES (32, 'mercury', false, 134, NULL);
INSERT INTO public.planet VALUES (33, 'neptune', false, 2154, NULL);
INSERT INTO public.planet VALUES (34, 'nine', false, 2614, NULL);
INSERT INTO public.planet VALUES (35, 'eight', false, 1424, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 22, 213.2, NULL);
INSERT INTO public.star VALUES (2, 'star2', 22, 213.2, NULL);
INSERT INTO public.star VALUES (3, 'star3', 22, 213.2, NULL);
INSERT INTO public.star VALUES (4, 'star4', 22, 213.2, NULL);
INSERT INTO public.star VALUES (5, 'star5', 22, 213.2, NULL);
INSERT INTO public.star VALUES (6, 'star6', 22, 213.2, NULL);
INSERT INTO public.star VALUES (7, 'star7', 22, 213.2, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 16, true);


--
-- Name: galaxy_planets_galaxy_planets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_planets_galaxy_planets_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 35, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


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
-- Name: galaxy_planets galaxy_planets_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_planets
    ADD CONSTRAINT galaxy_planets_name_key UNIQUE (name);


--
-- Name: galaxy_planets galaxy_planets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_planets
    ADD CONSTRAINT galaxy_planets_pkey PRIMARY KEY (galaxy_planets_id);


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
-- Name: planet planet_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_age_key UNIQUE (age);


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
-- Name: galaxy_planets galaxy_planets_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_planets
    ADD CONSTRAINT galaxy_planets_name_fkey FOREIGN KEY (name) REFERENCES public.moon(name);


--
-- PostgreSQL database dump complete
--

