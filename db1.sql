--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

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
-- Name: actors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actors (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.actors OWNER TO postgres;

--
-- Name: actors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.actors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.actors_id_seq OWNER TO postgres;

--
-- Name: actors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.actors_id_seq OWNED BY public.actors.id;


--
-- Name: director; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.director (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.director OWNER TO postgres;

--
-- Name: director_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.director_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.director_id_seq OWNER TO postgres;

--
-- Name: director_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.director_id_seq OWNED BY public.director.id;


--
-- Name: films; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.films (
    id integer NOT NULL,
    name text NOT NULL,
    year character varying(100) NOT NULL
);


ALTER TABLE public.films OWNER TO postgres;

--
-- Name: films_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.films_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.films_id_seq OWNER TO postgres;

--
-- Name: films_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.films_id_seq OWNED BY public.films.id;


--
-- Name: actors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actors ALTER COLUMN id SET DEFAULT nextval('public.actors_id_seq'::regclass);


--
-- Name: director id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.director ALTER COLUMN id SET DEFAULT nextval('public.director_id_seq'::regclass);


--
-- Name: films id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films ALTER COLUMN id SET DEFAULT nextval('public.films_id_seq'::regclass);


--
-- Data for Name: actors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.actors (id, name) FROM stdin;
1	Tim Robbins
2	Henry Fonda
3	Christian Bale
4	Marlon Brando
\.


--
-- Data for Name: director; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.director (id, name) FROM stdin;
1	Frank Darabont
2	Francis Ford Coppola
3	Christopher Nolan
4	Sidney Lumet
\.


--
-- Data for Name: films; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.films (id, name, year) FROM stdin;
1	The Shawshank Redemption	1994
2	The Godfather	1972
3	The Dark Knight	2008
4	12 Angry Men	1957
\.


--
-- Name: actors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.actors_id_seq', 4, true);


--
-- Name: director_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.director_id_seq', 4, true);


--
-- Name: films_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.films_id_seq', 4, true);


--
-- PostgreSQL database dump complete
--

