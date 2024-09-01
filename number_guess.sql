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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22),
    games_played integer DEFAULT 0,
    best_game integer
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
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'user_1725206819126', 2, 102);
INSERT INTO public.users VALUES (1, 'user_1725206819127', 5, 75);
INSERT INTO public.users VALUES (4, 'user_1725207297799', 0, NULL);
INSERT INTO public.users VALUES (5, 'user_1725207297798', 0, NULL);
INSERT INTO public.users VALUES (21, 'user_1725208555268', 2, 590);
INSERT INTO public.users VALUES (7, 'user_1725207349487', 2, 139);
INSERT INTO public.users VALUES (20, 'user_1725208555269', 5, 96);
INSERT INTO public.users VALUES (6, 'user_1725207349488', 5, 113);
INSERT INTO public.users VALUES (41, 'user_1725209405896', 2, 469);
INSERT INTO public.users VALUES (9, 'user_1725207351058', 2, 141);
INSERT INTO public.users VALUES (23, 'user_1725208556986', 2, 268);
INSERT INTO public.users VALUES (8, 'user_1725207351059', 5, 89);
INSERT INTO public.users VALUES (40, 'user_1725209405897', 5, 219);
INSERT INTO public.users VALUES (22, 'user_1725208556987', 5, 142);
INSERT INTO public.users VALUES (11, 'user_1725207352387', 2, 186);
INSERT INTO public.users VALUES (10, 'user_1725207352388', 5, 157);
INSERT INTO public.users VALUES (13, 'user_1725207355451', 2, 234);
INSERT INTO public.users VALUES (25, 'user_1725208571912', 2, 759);
INSERT INTO public.users VALUES (12, 'user_1725207355452', 5, 10);
INSERT INTO public.users VALUES (43, 'user_1725209407782', 2, 50);
INSERT INTO public.users VALUES (24, 'user_1725208571913', 5, 33);
INSERT INTO public.users VALUES (15, 'user_1725207356848', 2, 106);
INSERT INTO public.users VALUES (14, 'user_1725207356849', 5, 9);
INSERT INTO public.users VALUES (42, 'user_1725209407783', 5, 179);
INSERT INTO public.users VALUES (27, 'user_1725208581661', 2, 520);
INSERT INTO public.users VALUES (17, 'user_1725207388961', 2, 431);
INSERT INTO public.users VALUES (16, 'user_1725207388962', 5, 22);
INSERT INTO public.users VALUES (3, 'Dinu', 1, 13);
INSERT INTO public.users VALUES (26, 'user_1725208581662', 5, 416);
INSERT INTO public.users VALUES (19, 'user_1725208224714', 2, 349);
INSERT INTO public.users VALUES (18, 'user_1725208224715', 5, 195);
INSERT INTO public.users VALUES (29, 'user_1725208948278', 2, 352);
INSERT INTO public.users VALUES (28, 'user_1725208948279', 5, 181);
INSERT INTO public.users VALUES (31, 'user_1725208950425', 2, 157);
INSERT INTO public.users VALUES (30, 'user_1725208950426', 5, 144);
INSERT INTO public.users VALUES (33, 'user_1725208953696', 2, 53);
INSERT INTO public.users VALUES (32, 'user_1725208953697', 5, 122);
INSERT INTO public.users VALUES (35, 'user_1725208954797', 2, 272);
INSERT INTO public.users VALUES (34, 'user_1725208954798', 5, 4);
INSERT INTO public.users VALUES (37, 'user_1725208960369', 2, 49);
INSERT INTO public.users VALUES (36, 'user_1725208960370', 5, 11);
INSERT INTO public.users VALUES (39, 'user_1725208964619', 2, 272);
INSERT INTO public.users VALUES (38, 'user_1725208964620', 5, 2);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 43, true);


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
-- PostgreSQL database dump complete
--

