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

DROP DATABASE users;
--
-- Name: users; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE users WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE users OWNER TO freecodecamp;

\connect users

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
    best_game integer DEFAULT 0
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

INSERT INTO public.users VALUES (2, 'chris', 0, 0);
INSERT INTO public.users VALUES (3, 'bob', 0, 0);
INSERT INTO public.users VALUES (4, 'testy', 0, 0);
INSERT INTO public.users VALUES (5, 'wow', 0, 0);
INSERT INTO public.users VALUES (6, 'another', 0, 0);
INSERT INTO public.users VALUES (7, 'user_1695855401419', 0, 0);
INSERT INTO public.users VALUES (8, 'user_1695855401418', 0, 0);
INSERT INTO public.users VALUES (48, 'user_1695860358697', 5, 218);
INSERT INTO public.users VALUES (68, 'user_1695860423726', 5, 71);
INSERT INTO public.users VALUES (23, 'user_1695859330805', 2, 423);
INSERT INTO public.users VALUES (10, 'user_1695856975631', 1, 869);
INSERT INTO public.users VALUES (9, 'user_1695856975632', 1, 518);
INSERT INTO public.users VALUES (22, 'user_1695859330806', 5, 93);
INSERT INTO public.users VALUES (37, 'user_1695859561111', 2, 209);
INSERT INTO public.users VALUES (61, 'user_1695860400747', 2, 876);
INSERT INTO public.users VALUES (76, 'user_1695860451712', 5, 73);
INSERT INTO public.users VALUES (36, 'user_1695859561112', 5, 250);
INSERT INTO public.users VALUES (25, 'user_1695859344456', 2, 659);
INSERT INTO public.users VALUES (51, 'user_1695860362111', 2, 136);
INSERT INTO public.users VALUES (24, 'user_1695859344457', 5, 127);
INSERT INTO public.users VALUES (12, 'user_1695858735479', 2, 279);
INSERT INTO public.users VALUES (60, 'user_1695860400748', 5, 121);
INSERT INTO public.users VALUES (11, 'user_1695858735480', 5, 108);
INSERT INTO public.users VALUES (13, 'shwoopty', 0, 0);
INSERT INTO public.users VALUES (50, 'user_1695860362112', 5, 30);
INSERT INTO public.users VALUES (39, 'user_1695859571202', 2, 354);
INSERT INTO public.users VALUES (15, 'user_1695858861887', 2, 37);
INSERT INTO public.users VALUES (27, 'user_1695859355766', 2, 623);
INSERT INTO public.users VALUES (88, 'user_1695860581418', 5, 195);
INSERT INTO public.users VALUES (14, 'user_1695858861888', 5, 72);
INSERT INTO public.users VALUES (26, 'user_1695859355767', 5, 173);
INSERT INTO public.users VALUES (38, 'user_1695859571203', 5, 126);
INSERT INTO public.users VALUES (17, 'user_1695859235231', 2, 607);
INSERT INTO public.users VALUES (16, 'user_1695859235232', 5, 281);
INSERT INTO public.users VALUES (71, 'user_1695860426766', 2, 123);
INSERT INTO public.users VALUES (29, 'user_1695859365153', 2, 160);
INSERT INTO public.users VALUES (41, 'user_1695859629017', 2, 404);
INSERT INTO public.users VALUES (28, 'user_1695859365154', 5, 164);
INSERT INTO public.users VALUES (19, 'user_1695859242826', 2, 588);
INSERT INTO public.users VALUES (63, 'user_1695860403721', 2, 654);
INSERT INTO public.users VALUES (53, 'user_1695860368952', 2, 883);
INSERT INTO public.users VALUES (85, 'user_1695860529158', 2, 108);
INSERT INTO public.users VALUES (18, 'user_1695859242827', 5, 199);
INSERT INTO public.users VALUES (40, 'user_1695859629018', 5, 65);
INSERT INTO public.users VALUES (31, 'user_1695859371354', 2, 266);
INSERT INTO public.users VALUES (100, 'user_1695860640177', 5, 31);
INSERT INTO public.users VALUES (21, 'user_1695859248116', 2, 124);
INSERT INTO public.users VALUES (52, 'user_1695860368953', 5, 196);
INSERT INTO public.users VALUES (20, 'user_1695859248117', 5, 208);
INSERT INTO public.users VALUES (30, 'user_1695859371355', 5, 143);
INSERT INTO public.users VALUES (79, 'user_1695860455770', 2, 92);
INSERT INTO public.users VALUES (70, 'user_1695860426767', 5, 108);
INSERT INTO public.users VALUES (62, 'user_1695860403722', 5, 110);
INSERT INTO public.users VALUES (43, 'user_1695859679193', 2, 10);
INSERT INTO public.users VALUES (33, 'user_1695859396883', 2, 736);
INSERT INTO public.users VALUES (42, 'user_1695859679194', 5, 33);
INSERT INTO public.users VALUES (32, 'user_1695859396884', 5, 123);
INSERT INTO public.users VALUES (55, 'user_1695860389744', 2, 193);
INSERT INTO public.users VALUES (35, 'user_1695859404854', 2, 60);
INSERT INTO public.users VALUES (95, 'user_1695860598373', 2, 265);
INSERT INTO public.users VALUES (45, 'user_1695859694326', 2, 313);
INSERT INTO public.users VALUES (54, 'user_1695860389745', 5, 143);
INSERT INTO public.users VALUES (34, 'user_1695859404855', 5, 409);
INSERT INTO public.users VALUES (78, 'user_1695860455771', 5, 61);
INSERT INTO public.users VALUES (44, 'user_1695859694327', 5, 16);
INSERT INTO public.users VALUES (1, 'test', 4, 3);
INSERT INTO public.users VALUES (65, 'user_1695860408553', 2, 169);
INSERT INTO public.users VALUES (73, 'user_1695860433371', 2, 537);
INSERT INTO public.users VALUES (47, 'user_1695860355590', 2, 145);
INSERT INTO public.users VALUES (64, 'user_1695860408554', 5, 14);
INSERT INTO public.users VALUES (57, 'user_1695860393582', 2, 671);
INSERT INTO public.users VALUES (46, 'user_1695860355591', 5, 157);
INSERT INTO public.users VALUES (84, 'user_1695860529159', 5, 89);
INSERT INTO public.users VALUES (56, 'user_1695860393583', 5, 131);
INSERT INTO public.users VALUES (49, 'user_1695860358696', 2, 871);
INSERT INTO public.users VALUES (72, 'user_1695860433372', 5, 136);
INSERT INTO public.users VALUES (59, 'user_1695860397051', 2, 652);
INSERT INTO public.users VALUES (67, 'user_1695860419760', 2, 278);
INSERT INTO public.users VALUES (91, 'user_1695860585830', 2, 424);
INSERT INTO public.users VALUES (94, 'user_1695860598374', 5, 158);
INSERT INTO public.users VALUES (66, 'user_1695860419761', 5, 46);
INSERT INTO public.users VALUES (58, 'user_1695860397052', 5, 248);
INSERT INTO public.users VALUES (81, 'user_1695860485668', 2, 205);
INSERT INTO public.users VALUES (75, 'user_1695860437405', 2, 61);
INSERT INTO public.users VALUES (90, 'user_1695860585831', 5, 296);
INSERT INTO public.users VALUES (74, 'user_1695860437406', 5, 2);
INSERT INTO public.users VALUES (69, 'user_1695860423725', 2, 732);
INSERT INTO public.users VALUES (80, 'user_1695860485669', 5, 139);
INSERT INTO public.users VALUES (87, 'user_1695860538827', 2, 792);
INSERT INTO public.users VALUES (77, 'user_1695860451711', 2, 452);
INSERT INTO public.users VALUES (99, 'user_1695860634029', 2, 262);
INSERT INTO public.users VALUES (86, 'user_1695860538828', 5, 47);
INSERT INTO public.users VALUES (83, 'user_1695860489706', 2, 569);
INSERT INTO public.users VALUES (82, 'user_1695860489707', 5, 198);
INSERT INTO public.users VALUES (98, 'user_1695860634030', 5, 17);
INSERT INTO public.users VALUES (93, 'user_1695860592834', 2, 324);
INSERT INTO public.users VALUES (89, 'user_1695860581417', 2, 975);
INSERT INTO public.users VALUES (97, 'user_1695860629121', 2, 218);
INSERT INTO public.users VALUES (92, 'user_1695860592835', 5, 238);
INSERT INTO public.users VALUES (105, 'user_1695860704334', 2, 361);
INSERT INTO public.users VALUES (103, 'user_1695860652208', 2, 652);
INSERT INTO public.users VALUES (96, 'user_1695860629122', 5, 203);
INSERT INTO public.users VALUES (101, 'user_1695860640176', 2, 351);
INSERT INTO public.users VALUES (102, 'user_1695860652209', 5, 106);
INSERT INTO public.users VALUES (104, 'user_1695860704335', 5, 68);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 105, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

