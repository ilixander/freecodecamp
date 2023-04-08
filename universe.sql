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
-- Name: aliens; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.aliens (
    aliens_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer
);


ALTER TABLE public.aliens OWNER TO freecodecamp;

--
-- Name: aliens_race_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.aliens_race_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aliens_race_id_seq OWNER TO freecodecamp;

--
-- Name: aliens_race_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.aliens_race_id_seq OWNED BY public.aliens.aliens_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    number_of_stars integer,
    distance integer,
    coordinates character varying(30)
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
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    size integer,
    orbiting_speed_in_kmh integer,
    planet_id integer
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
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    orbiting_moons integer,
    potential_life boolean,
    temperature numeric,
    composition text,
    star_id integer
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
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    distance integer,
    orbiting_planets integer,
    alive boolean,
    size numeric,
    galaxy_id integer
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
-- Name: aliens aliens_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aliens ALTER COLUMN aliens_id SET DEFAULT nextval('public.aliens_race_id_seq'::regclass);


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
-- Data for Name: aliens; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.aliens VALUES (1, 'Martians', 13);
INSERT INTO public.aliens VALUES (2, 'Spartians', 12);
INSERT INTO public.aliens VALUES (3, 'Humans', 2);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Canis Major Dwarf Galaxy', 2, 100, 25000, NULL);
INSERT INTO public.galaxy VALUES ('Andromeda', 3, 150, 80000, NULL);
INSERT INTO public.galaxy VALUES ('Cygnus A', 4, 90, 10000, NULL);
INSERT INTO public.galaxy VALUES ('Maffei 1', 5, 900, 100000, NULL);
INSERT INTO public.galaxy VALUES ('Maffei 2', 6, 1500, 200000, NULL);
INSERT INTO public.galaxy VALUES ('Magellanic Clouds', 7, 70, 70000, NULL);
INSERT INTO public.galaxy VALUES ('Milky way', 8, 100, 0, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Luna', 1, 10, 2000, 3);
INSERT INTO public.moon VALUES ('Luna2', 2, 10, 1000, 3);
INSERT INTO public.moon VALUES ('Luna3', 3, 10, 1000, 3);
INSERT INTO public.moon VALUES ('Luna4', 4, 10, 1000, 3);
INSERT INTO public.moon VALUES ('Luna5', 5, 10, 1000, 3);
INSERT INTO public.moon VALUES ('Luna6', 6, 10, 1000, 3);
INSERT INTO public.moon VALUES ('Luna7', 7, 10, 1000, 3);
INSERT INTO public.moon VALUES ('Luna8', 8, 10, 1000, 3);
INSERT INTO public.moon VALUES ('Luna9', 9, 10, 1000, 3);
INSERT INTO public.moon VALUES ('Luna10', 10, 10, 1000, 3);
INSERT INTO public.moon VALUES ('Luna11', 11, 10, 1000, 3);
INSERT INTO public.moon VALUES ('Luna12', 12, 10, 1000, 3);
INSERT INTO public.moon VALUES ('Luna13', 13, 10, 1000, 3);
INSERT INTO public.moon VALUES ('Luna14', 14, 10, 1000, 3);
INSERT INTO public.moon VALUES ('Luna15', 15, 10, 1000, 3);
INSERT INTO public.moon VALUES ('Luna16', 16, 10, 1000, 3);
INSERT INTO public.moon VALUES ('Luna17', 17, 10, 1000, 3);
INSERT INTO public.moon VALUES ('Luna18', 18, 10, 1000, 3);
INSERT INTO public.moon VALUES ('Luna19', 19, 10, 1000, 3);
INSERT INTO public.moon VALUES ('Luna20', 20, 10, 1000, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Vormir', 1, 0, false, 15, 'solid', 3);
INSERT INTO public.planet VALUES ('Earth', 2, 1, true, 35, 'solid', 2);
INSERT INTO public.planet VALUES ('Jupiter', 3, 92, false, -25, 'gas', 2);
INSERT INTO public.planet VALUES ('Inferus', 4, 0, false, 55, 'solid', 3);
INSERT INTO public.planet VALUES ('Atarius', 5, 1, true, 7, 'solid', 6);
INSERT INTO public.planet VALUES ('Copernicus', 6, 5, false, 25, 'gas', 4);
INSERT INTO public.planet VALUES ('Inferus2', 7, 0, false, 55, 'solid', 3);
INSERT INTO public.planet VALUES ('Atarius2', 8, 1, true, 7, 'solid', 6);
INSERT INTO public.planet VALUES ('Copernicus2', 9, 5, false, 25, 'gas', 4);
INSERT INTO public.planet VALUES ('Inferus3', 10, 0, false, 55, 'solid', 3);
INSERT INTO public.planet VALUES ('Atarius3', 11, 1, true, 7, 'solid', 6);
INSERT INTO public.planet VALUES ('Copernicus3', 12, 5, false, 25, 'gas', 4);
INSERT INTO public.planet VALUES ('Mars', 13, 0, true, -5, 'solid', 2);
INSERT INTO public.planet VALUES ('Nostrum', 14, 1, true, 22, 'solid', 4);
INSERT INTO public.planet VALUES ('Helios', 15, 1, false, 14, 'gas', 4);
INSERT INTO public.planet VALUES ('Venus', 16, 0, false, 80, 'solid', 2);
INSERT INTO public.planet VALUES ('Mercury', 17, 0, false, 400, 'solid', 2);
INSERT INTO public.planet VALUES ('Saturn', 18, 1, false, -50, 'gas', 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Lynx', 1, 200, 3, true, 100, 2);
INSERT INTO public.star VALUES ('Scorpius', 2, 300, 50, true, 150, 2);
INSERT INTO public.star VALUES ('Crux', 3, 500, 0, true, 60, 3);
INSERT INTO public.star VALUES ('Cepheus', 4, 800, 5, false, 150, 3);
INSERT INTO public.star VALUES ('Ursa Major', 5, 600, 120, true, 1000, 2);
INSERT INTO public.star VALUES ('Draco', 6, 1500, 55, true, 700, 2);
INSERT INTO public.star VALUES ('Taurus', 7, 240, 1, true, 20, 2);
INSERT INTO public.star VALUES ('Grus', 8, 700, 5, true, 120, 3);


--
-- Name: aliens_race_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.aliens_race_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 18, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: aliens aliens_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aliens
    ADD CONSTRAINT aliens_name_key UNIQUE (name);


--
-- Name: aliens aliens_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aliens
    ADD CONSTRAINT aliens_pkey PRIMARY KEY (aliens_id);


--
-- Name: galaxy galaxy_coordinates_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_coordinates_key UNIQUE (coordinates);


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
-- Name: aliens aliens_planet_of_origin_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aliens
    ADD CONSTRAINT aliens_planet_of_origin_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

