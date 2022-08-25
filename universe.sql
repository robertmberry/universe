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
-- Name: discovered_by; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.discovered_by (
    discovered_by_id integer NOT NULL,
    name character varying(20) NOT NULL,
    discovered date
);


ALTER TABLE public.discovered_by OWNER TO freecodecamp;

--
-- Name: discovered_by_discovered_by_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.discovered_by_discovered_by_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.discovered_by_discovered_by_id_seq OWNER TO freecodecamp;

--
-- Name: discovered_by_discovered_by_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.discovered_by_discovered_by_id_seq OWNED BY public.discovered_by.discovered_by_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance_from_earth integer,
    age numeric,
    description text
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
    name character varying(50) NOT NULL,
    distance_from_earth integer,
    age numeric,
    description text,
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
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance_from_earth integer,
    age numeric,
    description text,
    is_spherical boolean DEFAULT true,
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
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance_from_earth integer,
    age numeric,
    description text,
    is_spherical boolean DEFAULT true,
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
-- Name: discovered_by discovered_by_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discovered_by ALTER COLUMN discovered_by_id SET DEFAULT nextval('public.discovered_by_discovered_by_id_seq'::regclass);


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
-- Data for Name: discovered_by; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.discovered_by VALUES (1, 'Mike', '2022-08-25');
INSERT INTO public.discovered_by VALUES (2, 'Mike', '2022-08-25');
INSERT INTO public.discovered_by VALUES (3, 'Mike', '2022-08-25');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'IC 1101', 1, 1, 'Supergiant');
INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1, 1, 'Our galaxy');
INSERT INTO public.galaxy VALUES (5, 'Hercules A', 1, 1, 'Second largest');
INSERT INTO public.galaxy VALUES (6, 'Planet', 1, 1, 'Test');
INSERT INTO public.galaxy VALUES (7, '5', 1, 1, 'Description');
INSERT INTO public.galaxy VALUES (8, '6', 1, 1, 'Description');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 1, 'Moon', 1);
INSERT INTO public.moon VALUES (2, 'Moon', 1, 1, 'Moon', 1);
INSERT INTO public.moon VALUES (3, 'Moon', 1, 1, 'Moon', 1);
INSERT INTO public.moon VALUES (4, 'Moon', 1, 1, 'Moon', 1);
INSERT INTO public.moon VALUES (5, 'Moon', 1, 1, 'Moon', 1);
INSERT INTO public.moon VALUES (6, 'Moon', 1, 1, 'Moon', 1);
INSERT INTO public.moon VALUES (7, 'Moon', 1, 1, 'Moon', 1);
INSERT INTO public.moon VALUES (8, 'Moon', 1, 1, 'Moon', 1);
INSERT INTO public.moon VALUES (9, 'Moon', 1, 1, 'Moon', 1);
INSERT INTO public.moon VALUES (10, 'Moon', 1, 1, 'Moon', 1);
INSERT INTO public.moon VALUES (11, 'Moon', 1, 1, 'Moon', 1);
INSERT INTO public.moon VALUES (12, 'Moon', 1, 1, 'Moon', 1);
INSERT INTO public.moon VALUES (13, 'Moon', 1, 1, 'Moon', 1);
INSERT INTO public.moon VALUES (14, 'Moon', 1, 1, 'Moon', 1);
INSERT INTO public.moon VALUES (15, 'Moon', 1, 1, 'Moon', 1);
INSERT INTO public.moon VALUES (16, 'Moon', 1, 1, 'Moon', 1);
INSERT INTO public.moon VALUES (17, 'Moon', 1, 1, 'Moon', 1);
INSERT INTO public.moon VALUES (18, 'Moon', 1, 1, 'Moon', 1);
INSERT INTO public.moon VALUES (19, 'Moon', 1, 1, 'Moon', 1);
INSERT INTO public.moon VALUES (20, 'Moon', 1, 1, 'Moon', 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 1, '1', true, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', 1, 1, '1', true, 1);
INSERT INTO public.planet VALUES (3, 'Mercury', 1, 1, '1', true, 1);
INSERT INTO public.planet VALUES (4, 'Mercury', 1, 1, '1', true, 1);
INSERT INTO public.planet VALUES (5, 'Mercury', 1, 1, '1', true, 1);
INSERT INTO public.planet VALUES (6, 'Mercury', 1, 1, '1', true, 1);
INSERT INTO public.planet VALUES (7, 'Mercury', 1, 1, '1', true, 1);
INSERT INTO public.planet VALUES (8, 'Mercury', 1, 1, '1', true, 1);
INSERT INTO public.planet VALUES (9, 'Mercury', 1, 1, '1', true, 1);
INSERT INTO public.planet VALUES (10, 'Mercury', 1, 1, '1', true, 1);
INSERT INTO public.planet VALUES (11, 'Mercury', 1, 1, '1', true, 1);
INSERT INTO public.planet VALUES (12, 'Mercury', 1, 1, '1', true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 1, 'Our sun', true, 1);
INSERT INTO public.star VALUES (2, 'Antares', 1, 1, 'Tenth largest', true, 1);
INSERT INTO public.star VALUES (3, 'Beetlegeuse', 1, 1, 'Ninth largest', true, 1);
INSERT INTO public.star VALUES (4, 'KW', 1, 1, 'Eight largest', true, 1);
INSERT INTO public.star VALUES (5, 'VV', 1, 1, 'Seventh largest', true, 1);
INSERT INTO public.star VALUES (6, 'Mu Cephei', 1, 1, 'Sixth largest', true, 1);


--
-- Name: discovered_by_discovered_by_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.discovered_by_discovered_by_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: discovered_by discovered_by_discovered_by_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discovered_by
    ADD CONSTRAINT discovered_by_discovered_by_id_key UNIQUE (discovered_by_id);


--
-- Name: discovered_by discovered_by_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discovered_by
    ADD CONSTRAINT discovered_by_pkey PRIMARY KEY (discovered_by_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

