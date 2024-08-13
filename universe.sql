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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    type text NOT NULL,
    size numeric,
    age integer,
    is_spiral boolean
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
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    planet_id integer,
    diameter numeric,
    orbital_period integer NOT NULL
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
-- Name: nebula; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nebula (
    nebula_id integer NOT NULL,
    name character varying(100) NOT NULL,
    galaxy_id integer,
    shape text NOT NULL,
    size numeric
);


ALTER TABLE public.nebula OWNER TO freecodecamp;

--
-- Name: nebula_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.nebula_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nebula_id_seq OWNER TO freecodecamp;

--
-- Name: nebula_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.nebula_id_seq OWNED BY public.nebula.nebula_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    star_id integer,
    type text NOT NULL,
    diameter numeric,
    has_atmosphere boolean
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
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    galaxy_id integer,
    type text NOT NULL,
    mass numeric,
    temperature integer
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: nebula nebula_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula ALTER COLUMN nebula_id SET DEFAULT nextval('public.nebula_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Vía Láctea', 'Espiral barrada', 100, 14, true);
INSERT INTO public.galaxy VALUES (2, 'Andrómeda', 'Espiral', 220, 10, true);
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 'Lenteticular', 50, 13, false);
INSERT INTO public.galaxy VALUES (4, 'Triángulo', 'Espiral', 60, 13, true);
INSERT INTO public.galaxy VALUES (5, 'Centauro A', 'Elíptica', 150, 14, false);
INSERT INTO public.galaxy VALUES (6, 'M87', 'Elíptica gigante', 150, 14, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (81, 'Luna', 25, 3474, 27);
INSERT INTO public.moon VALUES (82, 'Europa', 26, 3122, 4);
INSERT INTO public.moon VALUES (83, 'Ganymede', 26, 5262, 7);
INSERT INTO public.moon VALUES (84, 'Callisto', 26, 4821, 17);
INSERT INTO public.moon VALUES (85, 'Titan', 27, 5150, 16);
INSERT INTO public.moon VALUES (86, 'Encelado', 27, 504, 1);
INSERT INTO public.moon VALUES (87, 'Miranda', 28, 472, 1);
INSERT INTO public.moon VALUES (88, 'Tritón', 29, 2707, 6);
INSERT INTO public.moon VALUES (89, 'Charon', 30, 1212, 6);
INSERT INTO public.moon VALUES (90, 'Titania', 28, 1578, 9);
INSERT INTO public.moon VALUES (91, 'Oberon', 28, 1523, 13);
INSERT INTO public.moon VALUES (92, 'Ariel', 28, 1158, 3);
INSERT INTO public.moon VALUES (93, 'Umbriel', 28, 1169, 4);
INSERT INTO public.moon VALUES (94, 'Mimas', 27, 396, 1);
INSERT INTO public.moon VALUES (95, 'Tethys', 27, 1062, 2);
INSERT INTO public.moon VALUES (96, 'Dione', 27, 1123, 3);
INSERT INTO public.moon VALUES (97, 'Rhea', 27, 1527, 5);
INSERT INTO public.moon VALUES (98, 'Iapetus', 27, 1471, 79);
INSERT INTO public.moon VALUES (99, 'Hyperion', 27, 410, 21);
INSERT INTO public.moon VALUES (100, 'Phoebe', 27, 220, 550);


--
-- Data for Name: nebula; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nebula VALUES (1, 'Nebulosa de Orión', 1, 'Irregular', 24);
INSERT INTO public.nebula VALUES (2, 'Nebulosa del Anillo', 1, 'Esférica', 1);
INSERT INTO public.nebula VALUES (3, 'Nebulosa de Carina', 1, 'Irregular', 300);
INSERT INTO public.nebula VALUES (4, 'Nebulosa de Andrómeda', 2, 'Irregular', 130);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (25, 'Mercurio', 1, 'Terrestre', 4879, false);
INSERT INTO public.planet VALUES (26, 'Venus', 1, 'Terrestre', 12104, true);
INSERT INTO public.planet VALUES (27, 'Tierra', 1, 'Terrestre', 12742, true);
INSERT INTO public.planet VALUES (28, 'Marte', 1, 'Terrestre', 6792, true);
INSERT INTO public.planet VALUES (29, 'Jupiter', 1, 'Gaseoso', 142984, true);
INSERT INTO public.planet VALUES (30, 'Saturno', 1, 'Gaseoso', 120536, true);
INSERT INTO public.planet VALUES (31, 'Urano', 1, 'Gigante de hielo', 51118, true);
INSERT INTO public.planet VALUES (32, 'Neptuno', 1, 'Gigante de hielo', 49528, true);
INSERT INTO public.planet VALUES (33, 'Plutón', 1, 'Enano', 2370, true);
INSERT INTO public.planet VALUES (34, 'Exoplaneta1', 2, 'Rocoso', 10000, false);
INSERT INTO public.planet VALUES (35, 'Exoplaneta2', 2, 'Gaseoso', 150000, true);
INSERT INTO public.planet VALUES (36, 'Exoplaneta3', 3, 'Super-Tierra', 12000, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Rigel', 1, 'Supergigante azul', 21, 11000);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 1, 'Supergigante roja', 20, 3500);
INSERT INTO public.star VALUES (3, 'Sirio', 1, 'Estrella blanca', 2.3, 9940);
INSERT INTO public.star VALUES (4, 'Aldebarán', 1, 'Gigante naranja', 152, 4000);
INSERT INTO public.star VALUES (5, 'Vega', 1, 'Estrella blanca', 2.1, 9602);
INSERT INTO public.star VALUES (6, 'M31-V1', 2, 'Supergigante azul', 25, 12000);
INSERT INTO public.star VALUES (7, 'M31-V2', 2, 'Gigante roja', 18, 3800);
INSERT INTO public.star VALUES (8, 'M31-V3', 2, 'Estrella blanca', 1.9, 9500);
INSERT INTO public.star VALUES (9, 'NGC5128-V1', 5, 'Supergigante azul', 23, 11500);
INSERT INTO public.star VALUES (10, 'NGC5128-V2', 5, 'Gigante roja', 16, 3600);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 100, true);


--
-- Name: nebula_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.nebula_id_seq', 4, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 36, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 10, true);


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
-- Name: nebula nebula_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_name_key UNIQUE (name);


--
-- Name: nebula nebula_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_pkey PRIMARY KEY (nebula_id);


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
-- Name: nebula nebula_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

