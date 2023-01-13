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
    name character varying(40) NOT NULL,
    description text,
    distance_from_earth integer,
    galaxy_types_id integer
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    name character varying(40) NOT NULL,
    galaxy_types_id integer NOT NULL,
    galaxy_description text
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_types_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_types_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    distance_from_earth integer,
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
    name character varying(40) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric(10,1),
    distance_from_earth integer,
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
    name character varying(40) NOT NULL,
    description text,
    distance_from_earth integer,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_types_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'The Milky Way', 'is a collection of dust', 0, 1);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'one of the nearest galaxies to Earth', 2480000, 1);
INSERT INTO public.galaxy VALUES (3, 'Cigar', 'shines brightly at infrared wavelengths and is remarkable for its star formation activity', 11420000, 3);
INSERT INTO public.galaxy VALUES (4, 'Pinwheel', 'nebula without star, very obscure and pretty large', 20870000, 1);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'fast-moving, massive galaxy', 29350000, 1);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 'he graceful, winding arms of the majestic spiral galaxy M51 appear like a grand spiral staircase sweeping through space', 23160000, 1);
INSERT INTO public.galaxy VALUES (7, 'Cygnus A', 'is an extremely bright radio source', 600000000, 2);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES ('Spiral', 1, 'Made up of gas and neon stars');
INSERT INTO public.galaxy_types VALUES ('Elliptical', 2, 'Highly flat in size');
INSERT INTO public.galaxy_types VALUES ('Irregular', 3, 'Very uncommon, they used to be a spiral or elliptical galaxy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Adrastea', 'oddly shaped, lacking either the mass and/or fluidity of composition', 0, 5);
INSERT INTO public.moon VALUES (2, 'Aitne', 'has a mean radius of about 1.5 km. At a mean distance of about 23.2 million km from Jupiter', 0, 5);
INSERT INTO public.moon VALUES (3, 'Amalthea', ' rotate on their axes once for each orbit around Jupiter, always keeping the same side facing the planet.', 0, 5);
INSERT INTO public.moon VALUES (4, 'Ananke', 'color is somewhere between gray and light red.', 0, 5);
INSERT INTO public.moon VALUES (5, 'Aoede', ' has a mean radius of two km, assuming an albedo of 0.04.', 0, 5);
INSERT INTO public.moon VALUES (6, 'Arche', 'has a mean radius of about 1 mile (1.5 km). At a mean distance of about 14.5 million miles (23.4 million) km from Jupiter', 0, 5);
INSERT INTO public.moon VALUES (7, 'Autonoe', 'Autonoe has a mean radius of 1.2 miles (2 km), assuming an albedo of 0.04.', 0, 5);
INSERT INTO public.moon VALUES (8, 'Callirrhoe', 'Callirrhoe has a mean radius of 2.7 miles (4.3 km), assuming an albedo of 0.04.', 0, 5);
INSERT INTO public.moon VALUES (9, 'Callisto', 'Jupiter second largest moon and the third largest moon in our solar system.', 0, 5);
INSERT INTO public.moon VALUES (10, 'Carme', 'takes about 734 Earth days to complete one orbit.', 0, 5);
INSERT INTO public.moon VALUES (11, 'Carpo', 'some 1.9 miles (3 km) across (assuming an albedo of 0.04), orbits Jupiter at a distance of about 10.5 million miles (17 million km)', 0, 5);
INSERT INTO public.moon VALUES (12, 'Chaldene', 'has a mean radius of about 1 mile (1.9 km). At a mean distance of about 14.3 million miles (23.1 million km) from Jupiter', 0, 5);
INSERT INTO public.moon VALUES (13, 'Cyllene', 'the satellite takes about 752 Earth days to complete one orbit.', 0, 5);
INSERT INTO public.moon VALUES (14, 'Elara', 'takes nearly 260 Earth days to complete one orbit.', 0, 5);
INSERT INTO public.moon VALUES (15, 'Erinome', 'member of the Carme group, a family of Jovian satellites which have similar orbits and appearance', 0, 5);
INSERT INTO public.moon VALUES (16, 'Ersa', 'This tiny moon of Jupiter was first spotted in 2017', 0, 5);
INSERT INTO public.moon VALUES (17, 'Euanthe', 'it takes about 620 Earth days to complete one orbit.', 0, 5);
INSERT INTO public.moon VALUES (18, 'Eukelade', 'has a mean radius of about 1.2 miles (2 kilometers). At a mean distance of about 14.4 million miles (23.3 million kilometers) from Jupiter', 0, 5);
INSERT INTO public.moon VALUES (19, 'Europa', 'may be the most promising place in our solar system to find present-day environments suitable for some form of life', 0, 5);
INSERT INTO public.moon VALUES (20, 'Ganymede', 'Largest moon in our solar system', 0, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'The planet we live in', true, true, 4543.1, 0, 8);
INSERT INTO public.planet VALUES (2, 'Mercury', 'smallest planet in the solar system', false, true, 4503.1, 0, 8);
INSERT INTO public.planet VALUES (3, 'Venus', 'It rotates in the opposite direction to all planets', false, true, 4503.1, 0, 8);
INSERT INTO public.planet VALUES (4, 'Mars', 'Its red colour also makes it known as the red planet', false, true, 4500.1, 0, 8);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Largest planet in the solar system', false, true, 4500.1, 0, 8);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Its a giant gas planet', false, true, 4500.1, 0, 8);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Its also referred to as ice giant', false, true, 4500.1, 0, 8);
INSERT INTO public.planet VALUES (8, 'Neptune', 'presence of similar kinds of planets in other systems and constellations', false, true, 4500.1, 0, 8);
INSERT INTO public.planet VALUES (10, 'Kepler-90b', 'it takes 7 days to complete one orbit of its star', false, true, 20000000.1, 0, 9);
INSERT INTO public.planet VALUES (11, 'Kepler-90c', 'it takes 8.7 days to complete one orbit of its star', false, true, 20000000.1, 0, 9);
INSERT INTO public.planet VALUES (12, 'Kepler-90i', 'it takes 14.4 days to complete one orbit of its star.', false, true, 20000000.1, 0, 9);
INSERT INTO public.planet VALUES (13, 'Kepler-90d', 'it takes 59.7 days to complete one orbit of its star', false, true, 2000000.1, 0, 9);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Polaris', 'is actually a triple star, the brighter of two visual components being a spectroscopic binary', 323, 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 'One of the largest and most luminous stars in the night sky.', 65, 1);
INSERT INTO public.star VALUES (3, 'Rigel', 'what appears to be a blue supergiant is actually a multistar system.', 700, 1);
INSERT INTO public.star VALUES (4, 'Vega', 'Characterized as a white dwarf star, Vega is roughly 2.1 times as massive as our Sun.', 25, 1);
INSERT INTO public.star VALUES (5, 'Pleiades', 'Also known as the “Seven Sisters”, is actually an open star cluster located in the constellation of Taurus.', 43, 1);
INSERT INTO public.star VALUES (6, 'Antares', 'It’s location is also close to the ecliptic, the imaginary band in the sky where the planets, Moon and Sun move.', 550, 1);
INSERT INTO public.star VALUES (7, 'Canopus', 'this white giant is the brightest star in the southern constellation of Carina', 300, 1);
INSERT INTO public.star VALUES (8, 'The Sun', 'Our solar system star', 0, 1);
INSERT INTO public.star VALUES (9, 'Kepler-90', 'Only star apart from the Sun with at least eight planets.', 0, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_types_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


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
-- Name: galaxy_types galaxy_types_galaxy_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_galaxy_type_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_galaxy_types_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_galaxy_types_id_key UNIQUE (galaxy_types_id);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


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
-- Name: galaxy galaxy_galaxy_types_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_types_id_fkey FOREIGN KEY (galaxy_types_id) REFERENCES public.galaxy_types(galaxy_types_id);


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

