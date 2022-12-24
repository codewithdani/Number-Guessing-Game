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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(20) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1671806375989');
INSERT INTO public.users VALUES (78, 'user_1671808812797');
INSERT INTO public.users VALUES (3, 'user_1671806375988');
INSERT INTO public.users VALUES (80, 'user_1671808812796');
INSERT INTO public.users VALUES (8, 'user_1671806487168');
INSERT INTO public.users VALUES (10, 'user_1671806487167');
INSERT INTO public.users VALUES (85, 'user_1671808844882');
INSERT INTO public.users VALUES (87, 'user_1671808844881');
INSERT INTO public.users VALUES (15, 'user_1671806627774');
INSERT INTO public.users VALUES (17, 'user_1671806627773');
INSERT INTO public.users VALUES (92, 'user_1671808904568');
INSERT INTO public.users VALUES (22, 'user_1671807046784');
INSERT INTO public.users VALUES (24, 'user_1671807046783');
INSERT INTO public.users VALUES (94, 'user_1671808904567');
INSERT INTO public.users VALUES (29, 'user_1671807052824');
INSERT INTO public.users VALUES (31, 'user_1671807052823');
INSERT INTO public.users VALUES (99, 'user_1671808937837');
INSERT INTO public.users VALUES (101, 'user_1671808937836');
INSERT INTO public.users VALUES (36, 'user_1671807455854');
INSERT INTO public.users VALUES (38, 'user_1671807455853');
INSERT INTO public.users VALUES (106, 'user_1671809047751');
INSERT INTO public.users VALUES (43, 'user_1671807664691');
INSERT INTO public.users VALUES (108, 'user_1671809047750');
INSERT INTO public.users VALUES (45, 'user_1671807664690');
INSERT INTO public.users VALUES (50, 'user_1671807800232');
INSERT INTO public.users VALUES (113, 'user_1671809084558');
INSERT INTO public.users VALUES (52, 'user_1671807800231');
INSERT INTO public.users VALUES (115, 'user_1671809084557');
INSERT INTO public.users VALUES (57, 'user_1671808154748');
INSERT INTO public.users VALUES (59, 'user_1671808154747');
INSERT INTO public.users VALUES (120, 'user_1671809163679');
INSERT INTO public.users VALUES (122, 'user_1671809163678');
INSERT INTO public.users VALUES (64, 'user_1671808592377');
INSERT INTO public.users VALUES (66, 'user_1671808592376');
INSERT INTO public.users VALUES (127, 'user_1671809266192');
INSERT INTO public.users VALUES (71, 'user_1671808682282');
INSERT INTO public.users VALUES (73, 'user_1671808682281');
INSERT INTO public.users VALUES (129, 'user_1671809266191');
INSERT INTO public.users VALUES (134, 'user_1671809378005');
INSERT INTO public.users VALUES (135, 'user_1671809378004');
INSERT INTO public.users VALUES (136, 'user_1671809963379');
INSERT INTO public.users VALUES (137, 'user_1671809963378');
INSERT INTO public.users VALUES (138, 'user_1671810454232');
INSERT INTO public.users VALUES (139, 'user_1671810454231');
INSERT INTO public.users VALUES (140, 'user_1671810603490');
INSERT INTO public.users VALUES (141, 'user_1671810603489');
INSERT INTO public.users VALUES (142, 'user_1671810829289');
INSERT INTO public.users VALUES (143, 'user_1671810829288');
INSERT INTO public.users VALUES (144, 'user_1671811366607');
INSERT INTO public.users VALUES (145, 'user_1671811366606');
INSERT INTO public.users VALUES (146, 'user_1671811522704');
INSERT INTO public.users VALUES (147, 'user_1671811522703');
INSERT INTO public.users VALUES (148, 'user_1671812179014');
INSERT INTO public.users VALUES (149, 'user_1671812179013');
INSERT INTO public.users VALUES (150, 'user_1671812220571');
INSERT INTO public.users VALUES (151, 'user_1671812220570');
INSERT INTO public.users VALUES (152, 'user_1671812374881');
INSERT INTO public.users VALUES (153, 'user_1671812374880');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 1, false);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 153, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

