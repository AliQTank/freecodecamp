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
-- Name: constellations; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellations (
    name character varying(30) NOT NULL,
    constellations_id integer NOT NULL,
    quadrant character varying(20),
    english_name character varying(30)
);


ALTER TABLE public.constellations OWNER TO freecodecamp;

--
-- Name: constellations_constellations_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellations_constellations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellations_constellations_id_seq OWNER TO freecodecamp;

--
-- Name: constellations_constellations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellations_constellations_id_seq OWNED BY public.constellations.constellations_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    constellation character varying(30) NOT NULL,
    link character varying(255),
    origin_of_name character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    description text,
    planet_id integer,
    fifth_column_name character varying(50)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    length_of_year_in_days integer,
    dwarf_planet boolean,
    description text,
    has_moons boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    distance_light_years numeric,
    exoplanets integer,
    fifth_column_name character varying(50)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: constellations constellations_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations ALTER COLUMN constellations_id SET DEFAULT nextval('public.constellations_constellations_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: constellations; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellations VALUES ('Andromeda', 1, 'NQ1', 'Andromeda');
INSERT INTO public.constellations VALUES ('Antlia', 2, 'SQ2', 'Air Pump');
INSERT INTO public.constellations VALUES ('Apus', 3, 'SQ3', 'bird of paradise');
INSERT INTO public.constellations VALUES ('Aquarius', 4, 'SQ3', 'Water Bearer');
INSERT INTO public.constellations VALUES ('Aquila', 5, 'NQ4', 'Eagle');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Andromeda', 1, 'Andromeda', NULL, NULL);
INSERT INTO public.galaxy VALUES ('Antennae Galaxies', 2, 'Corvus', NULL, NULL);
INSERT INTO public.galaxy VALUES ('Backward Galaxy', 3, 'Centaurus', NULL, NULL);
INSERT INTO public.galaxy VALUES ('Black Eye Galaxy', 4, 'Coma berenices', NULL, NULL);
INSERT INTO public.galaxy VALUES ('Bode s Galaxy', 5, 'Ursa Major', NULL, NULL);
INSERT INTO public.galaxy VALUES ('Butterfly Galaxies', 6, 'Virgo', NULL, NULL);
INSERT INTO public.galaxy VALUES ('Cartwheel Galaxy', 7, 'Sculptor', NULL, NULL);
INSERT INTO public.galaxy VALUES ('Centaurus A', 8, 'Centaurus', NULL, NULL);
INSERT INTO public.galaxy VALUES ('Cigar Galaxy', 9, 'Ursa Major', NULL, NULL);
INSERT INTO public.galaxy VALUES ('Circinus Galaxy', 10, 'Circinus', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 1, NULL, 3, NULL);
INSERT INTO public.moon VALUES ('Phobos', 2, NULL, 4, NULL);
INSERT INTO public.moon VALUES ('Deimos', 3, NULL, 4, NULL);
INSERT INTO public.moon VALUES ('Io', 4, NULL, 5, NULL);
INSERT INTO public.moon VALUES ('Europa', 5, NULL, 5, NULL);
INSERT INTO public.moon VALUES ('Ganymede', 6, NULL, 5, NULL);
INSERT INTO public.moon VALUES ('Callisto', 7, NULL, 5, NULL);
INSERT INTO public.moon VALUES ('Aegaeon', 8, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Aegir', 9, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Albiorix', 10, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Alvaldi', 11, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Angrboda', 12, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Anthe', 13, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Atlas', 14, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Bebhionn', 15, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Beli', 16, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Bergelmir', 17, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Bestla', 18, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Calypso', 19, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Daphnis', 20, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Dione', 21, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Eggther', 22, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Enceladus', 23, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Epimetheus', 24, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Erriapus', 25, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Farbauti', 26, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Fenrir', 27, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Fornjot', 28, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Geirrod', 29, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Gerd', 30, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Greip', 31, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Gridr', 32, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Gunnlod', 33, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Hati', 34, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Helene', 35, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Hyperion', 36, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Hyrrokkin', 37, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Iapetus', 38, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Ijiraq', 39, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Janus', 40, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Jarnsaxa', 41, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Kari', 42, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Kiviuq', 43, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Loge', 44, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Methone', 45, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Mimas', 46, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Mundilfari', 47, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('Ariel', 48, NULL, 7, NULL);
INSERT INTO public.moon VALUES ('Belinda', 49, NULL, 7, NULL);
INSERT INTO public.moon VALUES ('Bianca', 50, NULL, 7, NULL);
INSERT INTO public.moon VALUES ('Caliban', 51, NULL, 7, NULL);
INSERT INTO public.moon VALUES ('Cordelia', 52, NULL, 7, NULL);
INSERT INTO public.moon VALUES ('Cressida', 53, NULL, 7, NULL);
INSERT INTO public.moon VALUES ('Cupid', 54, NULL, 7, NULL);
INSERT INTO public.moon VALUES ('Desdemona', 55, NULL, 7, NULL);
INSERT INTO public.moon VALUES ('Ferdinand', 56, NULL, 7, NULL);
INSERT INTO public.moon VALUES ('Francisco', 57, NULL, 7, NULL);
INSERT INTO public.moon VALUES ('Juliet', 58, NULL, 7, NULL);
INSERT INTO public.moon VALUES ('Mab', 59, NULL, 7, NULL);
INSERT INTO public.moon VALUES ('Margaret', 60, NULL, 7, NULL);
INSERT INTO public.moon VALUES ('Miranda', 61, NULL, 7, NULL);
INSERT INTO public.moon VALUES ('Oberon', 62, NULL, 7, NULL);
INSERT INTO public.moon VALUES ('Ophelia', 63, NULL, 7, NULL);
INSERT INTO public.moon VALUES ('Perdita', 64, NULL, 7, NULL);
INSERT INTO public.moon VALUES ('Portia', 65, NULL, 7, NULL);
INSERT INTO public.moon VALUES ('Prospero', 66, NULL, 7, NULL);
INSERT INTO public.moon VALUES ('Puck', 67, NULL, 7, NULL);
INSERT INTO public.moon VALUES ('Rosalind', 68, NULL, 7, NULL);
INSERT INTO public.moon VALUES ('Setebos', 69, NULL, 7, NULL);
INSERT INTO public.moon VALUES ('Stephano', 70, NULL, 7, NULL);
INSERT INTO public.moon VALUES ('Sycorax', 71, NULL, 7, NULL);
INSERT INTO public.moon VALUES ('Titania', 72, NULL, 7, NULL);
INSERT INTO public.moon VALUES ('Trinculo', 73, NULL, 7, NULL);
INSERT INTO public.moon VALUES ('Umbriel', 74, NULL, 7, NULL);
INSERT INTO public.moon VALUES ('Despina', 75, NULL, 8, NULL);
INSERT INTO public.moon VALUES ('Galatea', 76, NULL, 8, NULL);
INSERT INTO public.moon VALUES ('Halimede', 77, NULL, 8, NULL);
INSERT INTO public.moon VALUES ('Hippocamp', 78, NULL, 8, NULL);
INSERT INTO public.moon VALUES ('Laomedeia', 79, NULL, 8, NULL);
INSERT INTO public.moon VALUES ('Larissa', 80, NULL, 8, NULL);
INSERT INTO public.moon VALUES ('Naiad', 81, NULL, 8, NULL);
INSERT INTO public.moon VALUES ('Nereid', 82, NULL, 8, NULL);
INSERT INTO public.moon VALUES ('Neso', 83, NULL, 8, NULL);
INSERT INTO public.moon VALUES ('Proteus', 84, NULL, 8, NULL);
INSERT INTO public.moon VALUES ('Psamathe', 85, NULL, 8, NULL);
INSERT INTO public.moon VALUES ('Sao', 86, NULL, 8, NULL);
INSERT INTO public.moon VALUES ('Thalassa', 87, NULL, 8, NULL);
INSERT INTO public.moon VALUES ('Triton', 88, NULL, 8, NULL);
INSERT INTO public.moon VALUES ('Charon', 89, NULL, 9, NULL);
INSERT INTO public.moon VALUES ('Hydra', 90, NULL, 9, NULL);
INSERT INTO public.moon VALUES ('Kerberos', 91, NULL, 9, NULL);
INSERT INTO public.moon VALUES ('Nix', 92, NULL, 9, NULL);
INSERT INTO public.moon VALUES ('Styx', 93, NULL, 9, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 3, 365, false, NULL, true);
INSERT INTO public.planet VALUES ('Mars', 4, 687, false, NULL, true);
INSERT INTO public.planet VALUES ('Jupiter', 5, 4333, false, NULL, true);
INSERT INTO public.planet VALUES ('Saturn', 6, 10759, false, NULL, true);
INSERT INTO public.planet VALUES ('Uranus', 7, 30687, false, NULL, true);
INSERT INTO public.planet VALUES ('Neptune', 8, 60190, false, NULL, true);
INSERT INTO public.planet VALUES ('Pluto', 9, 90530, true, NULL, true);
INSERT INTO public.planet VALUES ('Mercury', 1, 88, false, NULL, false);
INSERT INTO public.planet VALUES ('Venus', 2, 225, false, NULL, false);
INSERT INTO public.planet VALUES ('Ceres', 10, 1680, true, NULL, false);
INSERT INTO public.planet VALUES ('Makemake', 11, 111449, true, NULL, false);
INSERT INTO public.planet VALUES ('Haumea', 12, 104025, true, NULL, false);
INSERT INTO public.planet VALUES ('Eris', 13, 203305, true, NULL, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 1, 0.00016, 8, NULL);
INSERT INTO public.star VALUES ('Proxima Centauri', 2, 4.37, 1, NULL);
INSERT INTO public.star VALUES ('Lalande 21185', 7, 8.31, 1, NULL);
INSERT INTO public.star VALUES ('Ross 128', 16, 11.01, 1, NULL);
INSERT INTO public.star VALUES ('Epsilon Indi', 28, 11.87, 1, NULL);
INSERT INTO public.star VALUES ('Gliese 674', 43, 14.84, 1, NULL);
INSERT INTO public.star VALUES ('Gliese 687', 44, 14.84, 1, NULL);
INSERT INTO public.star VALUES ('Wolf 359', 6, 7.86, 2, NULL);
INSERT INTO public.star VALUES ('Epsilon Eridani', 14, 10.45, 2, NULL);
INSERT INTO public.star VALUES ('Struve 2398 B', 23, 11.49, 2, NULL);
INSERT INTO public.star VALUES ('Groombridge 34 A', 24, 11.62, 2, NULL);
INSERT INTO public.star VALUES ('Teegardens Star', 32, 12.50, 2, NULL);
INSERT INTO public.star VALUES ('Kapteins Star', 34, 12.83, 2, NULL);
INSERT INTO public.star VALUES ('Lacaille 9352', 15, 10.72, 3, NULL);
INSERT INTO public.star VALUES ('61 Cygni A', 18, 11.40, 3, NULL);
INSERT INTO public.star VALUES ('Gliese 1061', 29, 11.98, 3, NULL);
INSERT INTO public.star VALUES ('Wolf 1061', 38, 14.05, 3, NULL);
INSERT INTO public.star VALUES ('YZ Ceti', 30, 12.11, 4, NULL);
INSERT INTO public.star VALUES ('Luytens Star', 31, 12.20, 4, NULL);
INSERT INTO public.star VALUES ('a Centauri A', 3, 4.37, 0, NULL);
INSERT INTO public.star VALUES ('a Centauri B', 4, 4.37, 0, NULL);
INSERT INTO public.star VALUES ('Sirius A', 8, 8.66, 0, NULL);
INSERT INTO public.star VALUES ('Sirius B', 9, 8.66, 0, NULL);
INSERT INTO public.star VALUES ('Luyten 726-8 A', 10, 8.79, 0, NULL);
INSERT INTO public.star VALUES ('Luyteg 726-8 B', 11, 8.79, 0, NULL);
INSERT INTO public.star VALUES ('Ross 154', 12, 9.70, 0, NULL);
INSERT INTO public.star VALUES ('Ross 248', 13, 10.29, 0, NULL);
INSERT INTO public.star VALUES ('Bernards Star', 5, 4.37, 1, NULL);
INSERT INTO public.star VALUES ('Gliese 1', 41, 14.17, 0, NULL);
INSERT INTO public.star VALUES ('TZ Arietis', 42, 14.58, 0, NULL);
INSERT INTO public.star VALUES ('Van Maanens star', 40, 14.07, 0, NULL);
INSERT INTO public.star VALUES ('Wolf 424 A', 39, 14.05, 0, NULL);
INSERT INTO public.star VALUES ('Kruger 60 A', 36, 13.07, 0, NULL);
INSERT INTO public.star VALUES ('Kruger 60 B', 37, 13.07, 0, NULL);
INSERT INTO public.star VALUES ('Lacaille 8760', 35, 12.95, 0, NULL);
INSERT INTO public.star VALUES ('SCR 1845-6357', 33, 13.05, 0, NULL);
INSERT INTO public.star VALUES ('Tau Ceti', 27, 11.75, 5, NULL);
INSERT INTO public.star VALUES ('DX Cancri', 26, 11.68, 0, NULL);
INSERT INTO public.star VALUES ('Groombridge 34 B', 25, 11.62, 0, NULL);
INSERT INTO public.star VALUES ('Struve 2398 A', 22, 11.49, 0, NULL);
INSERT INTO public.star VALUES ('Procyon B', 21, 11.40, 0, NULL);
INSERT INTO public.star VALUES ('Procyon A', 20, 11.40, 0, NULL);
INSERT INTO public.star VALUES ('61 Cygni B', 19, 11.40, 0, NULL);
INSERT INTO public.star VALUES ('EZ Aquarii A', 17, 11.11, 0, NULL);


--
-- Name: constellations_constellations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellations_constellations_id_seq', 5, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 10, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 93, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 13, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 44, true);


--
-- Name: constellations constellations_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations
    ADD CONSTRAINT constellations_name_key UNIQUE (name);


--
-- Name: constellations constellations_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations
    ADD CONSTRAINT constellations_pkey PRIMARY KEY (constellations_id);


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
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


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
-- Name: star star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_key UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_belongs_to_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_belongs_to_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

