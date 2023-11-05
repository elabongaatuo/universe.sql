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
    name character varying(30),
    star_num integer,
    light_years integer,
    light_year_across numeric(4,1),
    galaxy_type text NOT NULL,
    has_blackhole boolean,
    has_oort_cloud boolean
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
-- Name: hurrah; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.hurrah (
    name character varying(30) NOT NULL,
    hurrah_text text NOT NULL,
    hurrah_id integer NOT NULL
);


ALTER TABLE public.hurrah OWNER TO freecodecamp;

--
-- Name: hurrah_hurrah_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.hurrah_hurrah_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hurrah_hurrah_id_seq OWNER TO freecodecamp;

--
-- Name: hurrah_hurrah_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.hurrah_hurrah_id_seq OWNED BY public.hurrah.hurrah_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    satellite_num integer,
    mountain_num integer,
    diameter numeric(4,1),
    physical_formations text NOT NULL,
    rogue boolean,
    is_spherical boolean,
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
    name character varying(30),
    moon_num integer,
    ring_num integer,
    diameter numeric(4,1),
    elements_on_surface text NOT NULL,
    is_spherical boolean,
    habitable boolean,
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
    name character varying(30),
    planet_num integer,
    habitable_planet_num integer,
    lumens numeric(4,1),
    life_stage text NOT NULL,
    dwarf_star boolean,
    young_star boolean,
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
-- Name: hurrah hurrah_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.hurrah ALTER COLUMN hurrah_id SET DEFAULT nextval('public.hurrah_hurrah_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 12, 3, 1.5, 'Round and Oval', true, false);
INSERT INTO public.galaxy VALUES (2, 'Thor', 24, 6, 3.1, 'Spiralish beautiful', false, false);
INSERT INTO public.galaxy VALUES (3, 'Loki', 8, 24, 3.1, 'Corkscrew', true, true);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 7, 12, 4.6, 'Kofia tu', false, false);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 8, 9, 1.2, 'Maji ni muhimu, maji ni uhai', true, true);
INSERT INTO public.galaxy VALUES (6, 'Triangulum', 3, 3, 3.3, 'Youve got a smooth brain', true, false);


--
-- Data for Name: hurrah; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.hurrah VALUES ('mwisho', 'nina furaha mno', 1);
INSERT INTO public.hurrah VALUES ('end', 'i am very happy', 2);
INSERT INTO public.hurrah VALUES ('mwiho', 'nina furaha mno', 3);
INSERT INTO public.hurrah VALUES ('nd', 'i am very happy', 4);
INSERT INTO public.hurrah VALUES ('lafin', 'je suis content', 5);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (22, 'moon', 2, 4, 3.5, 'mountains and rivers', true, true, 5);
INSERT INTO public.moon VALUES (23, 'thebes', 3, 4, 6.8, 'solid ocean', false, false, 4);
INSERT INTO public.moon VALUES (24, 'themisto', 5, 6, 7.9, 'valleys and hils', true, true, 4);
INSERT INTO public.moon VALUES (25, 'cyllene', 5, 6, 7.9, 'gorges and oasis', false, false, 6);
INSERT INTO public.moon VALUES (26, 'herse', 7, 8, 2.1, 'edges and curves', true, true, 7);
INSERT INTO public.moon VALUES (27, 'himalia', 6, 7, 2.1, 'cliffs and volcanoes', false, false, 12);
INSERT INTO public.moon VALUES (28, 'arche', 4, 5, 6.8, 'oceans and lakes', false, false, 11);
INSERT INTO public.moon VALUES (29, 'callisto', 5, 6, 2.2, 'craters tuput tu', true, false, 11);
INSERT INTO public.moon VALUES (30, 'io', 3, 3, 4.6, 'beautiful waterfalls', true, true, 9);
INSERT INTO public.moon VALUES (31, 'ganymede', 3, 4, 5.7, 'deserts and shorelines', false, true, 8);
INSERT INTO public.moon VALUES (32, 'europa', 4, 4, 8.9, 'geysers and rivers', true, true, 8);
INSERT INTO public.moon VALUES (33, 'fornjort', 2, 3, 5.7, 'bjorn and swamps', true, true, 9);
INSERT INTO public.moon VALUES (34, 'methone', 2, 3, 5.7, 'oasis and deserts', false, false, 10);
INSERT INTO public.moon VALUES (35, 'anthe', 3, 4, 7.9, 'trench and hill', true, true, 12);
INSERT INTO public.moon VALUES (36, 'carme', 4, 5, 6.8, 'volcanoes', true, true, 11);
INSERT INTO public.moon VALUES (37, 'ananke', 3, 4, 6.8, 'oxbow lakes', false, true, 10);
INSERT INTO public.moon VALUES (38, 'elara', 2, 3, 1.2, 'forests and shrubs', false, false, 7);
INSERT INTO public.moon VALUES (39, 'isonoe', 5, 6, 7.9, 'plains and plateaus', false, false, 7);
INSERT INTO public.moon VALUES (40, 'surtur', 5, 6, 1.0, 'marshes', true, true, 9);
INSERT INTO public.moon VALUES (41, 'farbauti', 9, 10, 2.3, 'jungle', false, false, 11);
INSERT INTO public.moon VALUES (42, 'sinope', 6, 7, 9.1, 'ravine', true, true, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (4, 'mercury', 1, 0, 2.3, 'sulphur, iron', true, false, 3);
INSERT INTO public.planet VALUES (5, 'venus', 2, 1, 2.4, 'helium and hydrogen', true, false, 3);
INSERT INTO public.planet VALUES (6, 'earth', 3, 2, 5.7, 'carbon, hydorgen and oxygen', true, true, 3);
INSERT INTO public.planet VALUES (7, 'mars', 4, 3, 9.0, 'iron and brimsetone', true, true, 4);
INSERT INTO public.planet VALUES (8, 'jupiter', 5, 4, 7.9, 'gelieum, chlorine and flourine', false, false, 4);
INSERT INTO public.planet VALUES (9, 'saturn', 6, 5, 1.0, 'tungsten, iron and molybdenum', false, false, 4);
INSERT INTO public.planet VALUES (10, 'uranus', 7, 6, 9.1, 'mercury, silver and gold', false, false, 5);
INSERT INTO public.planet VALUES (11, 'neptune', 8, 7, 1.2, 'boron, berelium', false, false, 5);
INSERT INTO public.planet VALUES (12, 'pluto', 9, 8, 2.3, 'myrrh and randomities', false, false, 6);
INSERT INTO public.planet VALUES (13, 'ceres', 10, 9, 5.7, 'earth and fire', false, false, 7);
INSERT INTO public.planet VALUES (14, 'kepler', 12, 11, 8.8, 'lithium and nitrogen', false, false, 8);
INSERT INTO public.planet VALUES (15, 'kepler-381', 13, 12, 4.6, 'argon and neon', false, false, 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (3, 'Orion', 10, 1, 3.5, 'I just a baby', true, true, 1);
INSERT INTO public.star VALUES (4, 'Beetlegeuse', 11, 2, 6.8, 'Alibaba and fourty thieves', true, true, 3);
INSERT INTO public.star VALUES (5, 'Capricornus', 12, 3, 9.0, 'Beberu tu weewe!', false, false, 2);
INSERT INTO public.star VALUES (6, 'Aquila', 13, 4, 5.7, 'Sounds like water', false, false, 4);
INSERT INTO public.star VALUES (7, 'Bootes', 14, 6, 9.1, 'Weeh this is something', true, true, 5);
INSERT INTO public.star VALUES (8, 'Auriga', 15, 7, 7.0, 'I hONESTLy hope im done', true, true, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: hurrah_hurrah_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.hurrah_hurrah_id_seq', 5, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 42, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


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
-- Name: hurrah hurrah_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.hurrah
    ADD CONSTRAINT hurrah_name_key UNIQUE (name);


--
-- Name: hurrah hurrah_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.hurrah
    ADD CONSTRAINT hurrah_pkey PRIMARY KEY (hurrah_id);


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

