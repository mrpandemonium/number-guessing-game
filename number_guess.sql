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
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 10, 1);
INSERT INTO public.games VALUES (2, 10, 4);
INSERT INTO public.games VALUES (3, 10, 4);
INSERT INTO public.games VALUES (4, 10, 7);
INSERT INTO public.games VALUES (5, 11, 542);
INSERT INTO public.games VALUES (6, 11, 53);
INSERT INTO public.games VALUES (7, 12, 346);
INSERT INTO public.games VALUES (8, 12, 70);
INSERT INTO public.games VALUES (9, 11, 57);
INSERT INTO public.games VALUES (10, 11, 1);
INSERT INTO public.games VALUES (11, 11, 525);
INSERT INTO public.games VALUES (12, 7, 1);
INSERT INTO public.games VALUES (13, 13, 80);
INSERT INTO public.games VALUES (14, 14, 20);
INSERT INTO public.games VALUES (15, 7, 4);
INSERT INTO public.games VALUES (16, 17, 299);
INSERT INTO public.games VALUES (17, 17, 337);
INSERT INTO public.games VALUES (48, 7, 1);
INSERT INTO public.games VALUES (49, 54, 259);
INSERT INTO public.games VALUES (50, 54, 130);
INSERT INTO public.games VALUES (51, 55, 168);
INSERT INTO public.games VALUES (52, 55, 360);
INSERT INTO public.games VALUES (53, 7, 6);
INSERT INTO public.games VALUES (54, 7, 1);
INSERT INTO public.games VALUES (55, 61, 110);
INSERT INTO public.games VALUES (56, 65, 408);
INSERT INTO public.games VALUES (57, 65, 404);
INSERT INTO public.games VALUES (58, 66, 70);
INSERT INTO public.games VALUES (59, 68, 80);
INSERT INTO public.games VALUES (60, 70, 78);
INSERT INTO public.games VALUES (61, 7, 12);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, '');
INSERT INTO public.users VALUES (7, 'wincent');
INSERT INTO public.users VALUES (8, 'user_1686090957425');
INSERT INTO public.users VALUES (9, 'user_1686090957424');
INSERT INTO public.users VALUES (10, 'Wincent');
INSERT INTO public.users VALUES (11, 'user_1686091627586');
INSERT INTO public.users VALUES (12, 'user_1686091627585');
INSERT INTO public.users VALUES (13, 'user_1686092776746');
INSERT INTO public.users VALUES (14, 'user_1686092776745');
INSERT INTO public.users VALUES (15, 'user_1686092820737');
INSERT INTO public.users VALUES (16, 'user_1686092820736');
INSERT INTO public.users VALUES (17, 'user_1686092934441');
INSERT INTO public.users VALUES (18, 'user_1686092934440');
INSERT INTO public.users VALUES (50, 'user_1686093031731');
INSERT INTO public.users VALUES (51, 'user_1686093031730');
INSERT INTO public.users VALUES (52, 'user_1686102361498');
INSERT INTO public.users VALUES (53, 'user_1686102361497');
INSERT INTO public.users VALUES (54, 'user_1686102468320');
INSERT INTO public.users VALUES (55, 'user_1686102468318');
INSERT INTO public.users VALUES (56, 'user_1686102542848');
INSERT INTO public.users VALUES (57, 'user_1686102542847');
INSERT INTO public.users VALUES (58, 'Jame');
INSERT INTO public.users VALUES (59, 'user_1686102969166');
INSERT INTO public.users VALUES (60, 'user_1686102969165');
INSERT INTO public.users VALUES (61, 'user_1686103353228');
INSERT INTO public.users VALUES (62, 'user_1686103353227');
INSERT INTO public.users VALUES (63, 'user_1686111184625');
INSERT INTO public.users VALUES (64, 'user_1686111184624');
INSERT INTO public.users VALUES (65, 'user_1686111430558');
INSERT INTO public.users VALUES (66, 'user_1686111430557');
INSERT INTO public.users VALUES (67, 'user_1686111537934');
INSERT INTO public.users VALUES (68, 'user_1686111537933');
INSERT INTO public.users VALUES (69, 'user_1686111614346');
INSERT INTO public.users VALUES (70, 'user_1686111614345');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 61, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 70, true);


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
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

