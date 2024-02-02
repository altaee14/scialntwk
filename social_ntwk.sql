--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

-- Started on 2024-02-02 16:48:52

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

--
-- TOC entry 5 (class 2615 OID 2200)
-- Name: main_data; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA main_data;


ALTER SCHEMA main_data OWNER TO pg_database_owner;

--
-- TOC entry 3407 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA main_data; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA main_data IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 223 (class 1259 OID 57625)
-- Name: friends; Type: TABLE; Schema: main_data; Owner: postgres
--

CREATE TABLE main_data.friends (
    id integer NOT NULL,
    id_user1 integer NOT NULL,
    id_user2 integer NOT NULL,
    "startFriends" date NOT NULL
);


ALTER TABLE main_data.friends OWNER TO postgres;

--
-- TOC entry 3408 (class 0 OID 0)
-- Dependencies: 223
-- Name: TABLE friends; Type: COMMENT; Schema: main_data; Owner: postgres
--

COMMENT ON TABLE main_data.friends IS 'Таблица, в которой указано кто с кем дружит';


--
-- TOC entry 3409 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN friends."startFriends"; Type: COMMENT; Schema: main_data; Owner: postgres
--

COMMENT ON COLUMN main_data.friends."startFriends" IS 'дата начала дружбы между юзерами';


--
-- TOC entry 222 (class 1259 OID 57624)
-- Name: friends_id_seq; Type: SEQUENCE; Schema: main_data; Owner: postgres
--

CREATE SEQUENCE main_data.friends_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE main_data.friends_id_seq OWNER TO postgres;

--
-- TOC entry 3410 (class 0 OID 0)
-- Dependencies: 222
-- Name: friends_id_seq; Type: SEQUENCE OWNED BY; Schema: main_data; Owner: postgres
--

ALTER SEQUENCE main_data.friends_id_seq OWNED BY main_data.friends.id;


--
-- TOC entry 224 (class 1259 OID 57631)
-- Name: friends_id_user1_seq; Type: SEQUENCE; Schema: main_data; Owner: postgres
--

CREATE SEQUENCE main_data.friends_id_user1_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE main_data.friends_id_user1_seq OWNER TO postgres;

--
-- TOC entry 3411 (class 0 OID 0)
-- Dependencies: 224
-- Name: friends_id_user1_seq; Type: SEQUENCE OWNED BY; Schema: main_data; Owner: postgres
--

ALTER SEQUENCE main_data.friends_id_user1_seq OWNED BY main_data.friends.id_user1;


--
-- TOC entry 225 (class 1259 OID 57637)
-- Name: friends_id_user2_seq; Type: SEQUENCE; Schema: main_data; Owner: postgres
--

CREATE SEQUENCE main_data.friends_id_user2_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE main_data.friends_id_user2_seq OWNER TO postgres;

--
-- TOC entry 3412 (class 0 OID 0)
-- Dependencies: 225
-- Name: friends_id_user2_seq; Type: SEQUENCE OWNED BY; Schema: main_data; Owner: postgres
--

ALTER SEQUENCE main_data.friends_id_user2_seq OWNED BY main_data.friends.id_user2;


--
-- TOC entry 217 (class 1259 OID 57584)
-- Name: group; Type: TABLE; Schema: main_data; Owner: postgres
--

CREATE TABLE main_data."group" (
    id integer NOT NULL,
    "groupName" "char" NOT NULL
);


ALTER TABLE main_data."group" OWNER TO postgres;

--
-- TOC entry 3413 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN "group"."groupName"; Type: COMMENT; Schema: main_data; Owner: postgres
--

COMMENT ON COLUMN main_data."group"."groupName" IS 'Название группы';


--
-- TOC entry 216 (class 1259 OID 57583)
-- Name: group_id_seq; Type: SEQUENCE; Schema: main_data; Owner: postgres
--

CREATE SEQUENCE main_data.group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE main_data.group_id_seq OWNER TO postgres;

--
-- TOC entry 3414 (class 0 OID 0)
-- Dependencies: 216
-- Name: group_id_seq; Type: SEQUENCE OWNED BY; Schema: main_data; Owner: postgres
--

ALTER SEQUENCE main_data.group_id_seq OWNED BY main_data."group".id;


--
-- TOC entry 227 (class 1259 OID 57654)
-- Name: message; Type: TABLE; Schema: main_data; Owner: postgres
--

CREATE TABLE main_data.message (
    id integer NOT NULL,
    id_user_from integer NOT NULL,
    id_user_to integer NOT NULL,
    "messageText" "char" NOT NULL,
    private boolean NOT NULL,
    "dateMessage" date NOT NULL
);


ALTER TABLE main_data.message OWNER TO postgres;

--
-- TOC entry 3415 (class 0 OID 0)
-- Dependencies: 227
-- Name: TABLE message; Type: COMMENT; Schema: main_data; Owner: postgres
--

COMMENT ON TABLE main_data.message IS 'Хранит в себе все сообщения';


--
-- TOC entry 3416 (class 0 OID 0)
-- Dependencies: 227
-- Name: COLUMN message.id_user_from; Type: COMMENT; Schema: main_data; Owner: postgres
--

COMMENT ON COLUMN main_data.message.id_user_from IS 'id пользователя который отправляет сообщение';


--
-- TOC entry 3417 (class 0 OID 0)
-- Dependencies: 227
-- Name: COLUMN message.id_user_to; Type: COMMENT; Schema: main_data; Owner: postgres
--

COMMENT ON COLUMN main_data.message.id_user_to IS 'id пользователя который получаетсообщение';


--
-- TOC entry 3418 (class 0 OID 0)
-- Dependencies: 227
-- Name: COLUMN message."messageText"; Type: COMMENT; Schema: main_data; Owner: postgres
--

COMMENT ON COLUMN main_data.message."messageText" IS 'тест сообщения';


--
-- TOC entry 3419 (class 0 OID 0)
-- Dependencies: 227
-- Name: COLUMN message.private; Type: COMMENT; Schema: main_data; Owner: postgres
--

COMMENT ON COLUMN main_data.message.private IS 'флаг приватности (1-приватное 0-общедоступное)';


--
-- TOC entry 3420 (class 0 OID 0)
-- Dependencies: 227
-- Name: COLUMN message."dateMessage"; Type: COMMENT; Schema: main_data; Owner: postgres
--

COMMENT ON COLUMN main_data.message."dateMessage" IS 'дата отправки';


--
-- TOC entry 226 (class 1259 OID 57653)
-- Name: message_id_seq; Type: SEQUENCE; Schema: main_data; Owner: postgres
--

CREATE SEQUENCE main_data.message_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE main_data.message_id_seq OWNER TO postgres;

--
-- TOC entry 3421 (class 0 OID 0)
-- Dependencies: 226
-- Name: message_id_seq; Type: SEQUENCE OWNED BY; Schema: main_data; Owner: postgres
--

ALTER SEQUENCE main_data.message_id_seq OWNED BY main_data.message.id;


--
-- TOC entry 228 (class 1259 OID 57660)
-- Name: message_id_user_from_seq; Type: SEQUENCE; Schema: main_data; Owner: postgres
--

CREATE SEQUENCE main_data.message_id_user_from_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE main_data.message_id_user_from_seq OWNER TO postgres;

--
-- TOC entry 3422 (class 0 OID 0)
-- Dependencies: 228
-- Name: message_id_user_from_seq; Type: SEQUENCE OWNED BY; Schema: main_data; Owner: postgres
--

ALTER SEQUENCE main_data.message_id_user_from_seq OWNED BY main_data.message.id_user_from;


--
-- TOC entry 229 (class 1259 OID 57666)
-- Name: message_id_user_to_seq; Type: SEQUENCE; Schema: main_data; Owner: postgres
--

CREATE SEQUENCE main_data.message_id_user_to_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE main_data.message_id_user_to_seq OWNER TO postgres;

--
-- TOC entry 3423 (class 0 OID 0)
-- Dependencies: 229
-- Name: message_id_user_to_seq; Type: SEQUENCE OWNED BY; Schema: main_data; Owner: postgres
--

ALTER SEQUENCE main_data.message_id_user_to_seq OWNED BY main_data.message.id_user_to;


--
-- TOC entry 231 (class 1259 OID 57683)
-- Name: post; Type: TABLE; Schema: main_data; Owner: postgres
--

CREATE TABLE main_data.post (
    id integer NOT NULL,
    id_user integer NOT NULL,
    id_group integer NOT NULL,
    text text NOT NULL
);


ALTER TABLE main_data.post OWNER TO postgres;

--
-- TOC entry 3424 (class 0 OID 0)
-- Dependencies: 231
-- Name: TABLE post; Type: COMMENT; Schema: main_data; Owner: postgres
--

COMMENT ON TABLE main_data.post IS 'Хранит в себе публикации в группе';


--
-- TOC entry 233 (class 1259 OID 57695)
-- Name: post_id_group_seq; Type: SEQUENCE; Schema: main_data; Owner: postgres
--

CREATE SEQUENCE main_data.post_id_group_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE main_data.post_id_group_seq OWNER TO postgres;

--
-- TOC entry 3425 (class 0 OID 0)
-- Dependencies: 233
-- Name: post_id_group_seq; Type: SEQUENCE OWNED BY; Schema: main_data; Owner: postgres
--

ALTER SEQUENCE main_data.post_id_group_seq OWNED BY main_data.post.id_group;


--
-- TOC entry 230 (class 1259 OID 57682)
-- Name: post_id_seq; Type: SEQUENCE; Schema: main_data; Owner: postgres
--

CREATE SEQUENCE main_data.post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE main_data.post_id_seq OWNER TO postgres;

--
-- TOC entry 3426 (class 0 OID 0)
-- Dependencies: 230
-- Name: post_id_seq; Type: SEQUENCE OWNED BY; Schema: main_data; Owner: postgres
--

ALTER SEQUENCE main_data.post_id_seq OWNED BY main_data.post.id;


--
-- TOC entry 232 (class 1259 OID 57689)
-- Name: post_id_user_seq; Type: SEQUENCE; Schema: main_data; Owner: postgres
--

CREATE SEQUENCE main_data.post_id_user_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE main_data.post_id_user_seq OWNER TO postgres;

--
-- TOC entry 3427 (class 0 OID 0)
-- Dependencies: 232
-- Name: post_id_user_seq; Type: SEQUENCE OWNED BY; Schema: main_data; Owner: postgres
--

ALTER SEQUENCE main_data.post_id_user_seq OWNED BY main_data.post.id_user;


--
-- TOC entry 215 (class 1259 OID 57577)
-- Name: user; Type: TABLE; Schema: main_data; Owner: postgres
--

CREATE TABLE main_data."user" (
    id integer NOT NULL,
    name "char" NOT NULL,
    surname "char" NOT NULL
);


ALTER TABLE main_data."user" OWNER TO postgres;

--
-- TOC entry 3428 (class 0 OID 0)
-- Dependencies: 215
-- Name: TABLE "user"; Type: COMMENT; Schema: main_data; Owner: postgres
--

COMMENT ON TABLE main_data."user" IS 'Таблица с пользователями соц. сети';


--
-- TOC entry 3429 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN "user".name; Type: COMMENT; Schema: main_data; Owner: postgres
--

COMMENT ON COLUMN main_data."user".name IS 'Имя пользователя';


--
-- TOC entry 3430 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN "user".surname; Type: COMMENT; Schema: main_data; Owner: postgres
--

COMMENT ON COLUMN main_data."user".surname IS 'Фамилия пользователя';


--
-- TOC entry 219 (class 1259 OID 57591)
-- Name: userGroups; Type: TABLE; Schema: main_data; Owner: postgres
--

CREATE TABLE main_data."userGroups" (
    id integer NOT NULL,
    id_user integer NOT NULL,
    id_group integer NOT NULL
);


ALTER TABLE main_data."userGroups" OWNER TO postgres;

--
-- TOC entry 3431 (class 0 OID 0)
-- Dependencies: 219
-- Name: TABLE "userGroups"; Type: COMMENT; Schema: main_data; Owner: postgres
--

COMMENT ON TABLE main_data."userGroups" IS 'Группы n-го пользователя';


--
-- TOC entry 221 (class 1259 OID 57613)
-- Name: userGroups_id_group_seq; Type: SEQUENCE; Schema: main_data; Owner: postgres
--

CREATE SEQUENCE main_data."userGroups_id_group_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE main_data."userGroups_id_group_seq" OWNER TO postgres;

--
-- TOC entry 3432 (class 0 OID 0)
-- Dependencies: 221
-- Name: userGroups_id_group_seq; Type: SEQUENCE OWNED BY; Schema: main_data; Owner: postgres
--

ALTER SEQUENCE main_data."userGroups_id_group_seq" OWNED BY main_data."userGroups".id_group;


--
-- TOC entry 220 (class 1259 OID 57597)
-- Name: userGroups_id_user_seq; Type: SEQUENCE; Schema: main_data; Owner: postgres
--

CREATE SEQUENCE main_data."userGroups_id_user_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE main_data."userGroups_id_user_seq" OWNER TO postgres;

--
-- TOC entry 3433 (class 0 OID 0)
-- Dependencies: 220
-- Name: userGroups_id_user_seq; Type: SEQUENCE OWNED BY; Schema: main_data; Owner: postgres
--

ALTER SEQUENCE main_data."userGroups_id_user_seq" OWNED BY main_data."userGroups".id_user;


--
-- TOC entry 214 (class 1259 OID 57576)
-- Name: user_id_seq; Type: SEQUENCE; Schema: main_data; Owner: postgres
--

CREATE SEQUENCE main_data.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE main_data.user_id_seq OWNER TO postgres;

--
-- TOC entry 3434 (class 0 OID 0)
-- Dependencies: 214
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: main_data; Owner: postgres
--

ALTER SEQUENCE main_data.user_id_seq OWNED BY main_data."user".id;


--
-- TOC entry 218 (class 1259 OID 57590)
-- Name: usersGroup_id_seq; Type: SEQUENCE; Schema: main_data; Owner: postgres
--

CREATE SEQUENCE main_data."usersGroup_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE main_data."usersGroup_id_seq" OWNER TO postgres;

--
-- TOC entry 3435 (class 0 OID 0)
-- Dependencies: 218
-- Name: usersGroup_id_seq; Type: SEQUENCE OWNED BY; Schema: main_data; Owner: postgres
--

ALTER SEQUENCE main_data."usersGroup_id_seq" OWNED BY main_data."userGroups".id;


--
-- TOC entry 3211 (class 2604 OID 57628)
-- Name: friends id; Type: DEFAULT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data.friends ALTER COLUMN id SET DEFAULT nextval('main_data.friends_id_seq'::regclass);


--
-- TOC entry 3212 (class 2604 OID 57632)
-- Name: friends id_user1; Type: DEFAULT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data.friends ALTER COLUMN id_user1 SET DEFAULT nextval('main_data.friends_id_user1_seq'::regclass);


--
-- TOC entry 3213 (class 2604 OID 57638)
-- Name: friends id_user2; Type: DEFAULT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data.friends ALTER COLUMN id_user2 SET DEFAULT nextval('main_data.friends_id_user2_seq'::regclass);


--
-- TOC entry 3207 (class 2604 OID 57587)
-- Name: group id; Type: DEFAULT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data."group" ALTER COLUMN id SET DEFAULT nextval('main_data.group_id_seq'::regclass);


--
-- TOC entry 3214 (class 2604 OID 57657)
-- Name: message id; Type: DEFAULT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data.message ALTER COLUMN id SET DEFAULT nextval('main_data.message_id_seq'::regclass);


--
-- TOC entry 3215 (class 2604 OID 57661)
-- Name: message id_user_from; Type: DEFAULT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data.message ALTER COLUMN id_user_from SET DEFAULT nextval('main_data.message_id_user_from_seq'::regclass);


--
-- TOC entry 3216 (class 2604 OID 57667)
-- Name: message id_user_to; Type: DEFAULT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data.message ALTER COLUMN id_user_to SET DEFAULT nextval('main_data.message_id_user_to_seq'::regclass);


--
-- TOC entry 3217 (class 2604 OID 57686)
-- Name: post id; Type: DEFAULT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data.post ALTER COLUMN id SET DEFAULT nextval('main_data.post_id_seq'::regclass);


--
-- TOC entry 3218 (class 2604 OID 57690)
-- Name: post id_user; Type: DEFAULT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data.post ALTER COLUMN id_user SET DEFAULT nextval('main_data.post_id_user_seq'::regclass);


--
-- TOC entry 3219 (class 2604 OID 57696)
-- Name: post id_group; Type: DEFAULT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data.post ALTER COLUMN id_group SET DEFAULT nextval('main_data.post_id_group_seq'::regclass);


--
-- TOC entry 3206 (class 2604 OID 57580)
-- Name: user id; Type: DEFAULT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data."user" ALTER COLUMN id SET DEFAULT nextval('main_data.user_id_seq'::regclass);


--
-- TOC entry 3208 (class 2604 OID 57594)
-- Name: userGroups id; Type: DEFAULT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data."userGroups" ALTER COLUMN id SET DEFAULT nextval('main_data."usersGroup_id_seq"'::regclass);


--
-- TOC entry 3209 (class 2604 OID 57598)
-- Name: userGroups id_user; Type: DEFAULT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data."userGroups" ALTER COLUMN id_user SET DEFAULT nextval('main_data."userGroups_id_user_seq"'::regclass);


--
-- TOC entry 3210 (class 2604 OID 57614)
-- Name: userGroups id_group; Type: DEFAULT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data."userGroups" ALTER COLUMN id_group SET DEFAULT nextval('main_data."userGroups_id_group_seq"'::regclass);


--
-- TOC entry 3391 (class 0 OID 57625)
-- Dependencies: 223
-- Data for Name: friends; Type: TABLE DATA; Schema: main_data; Owner: postgres
--

COPY main_data.friends (id, id_user1, id_user2, "startFriends") FROM stdin;
\.


--
-- TOC entry 3385 (class 0 OID 57584)
-- Dependencies: 217
-- Data for Name: group; Type: TABLE DATA; Schema: main_data; Owner: postgres
--

COPY main_data."group" (id, "groupName") FROM stdin;
\.


--
-- TOC entry 3395 (class 0 OID 57654)
-- Dependencies: 227
-- Data for Name: message; Type: TABLE DATA; Schema: main_data; Owner: postgres
--

COPY main_data.message (id, id_user_from, id_user_to, "messageText", private, "dateMessage") FROM stdin;
\.


--
-- TOC entry 3399 (class 0 OID 57683)
-- Dependencies: 231
-- Data for Name: post; Type: TABLE DATA; Schema: main_data; Owner: postgres
--

COPY main_data.post (id, id_user, id_group, text) FROM stdin;
\.


--
-- TOC entry 3383 (class 0 OID 57577)
-- Dependencies: 215
-- Data for Name: user; Type: TABLE DATA; Schema: main_data; Owner: postgres
--

COPY main_data."user" (id, name, surname) FROM stdin;
\.


--
-- TOC entry 3387 (class 0 OID 57591)
-- Dependencies: 219
-- Data for Name: userGroups; Type: TABLE DATA; Schema: main_data; Owner: postgres
--

COPY main_data."userGroups" (id, id_user, id_group) FROM stdin;
\.


--
-- TOC entry 3436 (class 0 OID 0)
-- Dependencies: 222
-- Name: friends_id_seq; Type: SEQUENCE SET; Schema: main_data; Owner: postgres
--

SELECT pg_catalog.setval('main_data.friends_id_seq', 1, false);


--
-- TOC entry 3437 (class 0 OID 0)
-- Dependencies: 224
-- Name: friends_id_user1_seq; Type: SEQUENCE SET; Schema: main_data; Owner: postgres
--

SELECT pg_catalog.setval('main_data.friends_id_user1_seq', 1, false);


--
-- TOC entry 3438 (class 0 OID 0)
-- Dependencies: 225
-- Name: friends_id_user2_seq; Type: SEQUENCE SET; Schema: main_data; Owner: postgres
--

SELECT pg_catalog.setval('main_data.friends_id_user2_seq', 1, false);


--
-- TOC entry 3439 (class 0 OID 0)
-- Dependencies: 216
-- Name: group_id_seq; Type: SEQUENCE SET; Schema: main_data; Owner: postgres
--

SELECT pg_catalog.setval('main_data.group_id_seq', 1, false);


--
-- TOC entry 3440 (class 0 OID 0)
-- Dependencies: 226
-- Name: message_id_seq; Type: SEQUENCE SET; Schema: main_data; Owner: postgres
--

SELECT pg_catalog.setval('main_data.message_id_seq', 1, false);


--
-- TOC entry 3441 (class 0 OID 0)
-- Dependencies: 228
-- Name: message_id_user_from_seq; Type: SEQUENCE SET; Schema: main_data; Owner: postgres
--

SELECT pg_catalog.setval('main_data.message_id_user_from_seq', 1, false);


--
-- TOC entry 3442 (class 0 OID 0)
-- Dependencies: 229
-- Name: message_id_user_to_seq; Type: SEQUENCE SET; Schema: main_data; Owner: postgres
--

SELECT pg_catalog.setval('main_data.message_id_user_to_seq', 1, false);


--
-- TOC entry 3443 (class 0 OID 0)
-- Dependencies: 233
-- Name: post_id_group_seq; Type: SEQUENCE SET; Schema: main_data; Owner: postgres
--

SELECT pg_catalog.setval('main_data.post_id_group_seq', 1, false);


--
-- TOC entry 3444 (class 0 OID 0)
-- Dependencies: 230
-- Name: post_id_seq; Type: SEQUENCE SET; Schema: main_data; Owner: postgres
--

SELECT pg_catalog.setval('main_data.post_id_seq', 1, false);


--
-- TOC entry 3445 (class 0 OID 0)
-- Dependencies: 232
-- Name: post_id_user_seq; Type: SEQUENCE SET; Schema: main_data; Owner: postgres
--

SELECT pg_catalog.setval('main_data.post_id_user_seq', 1, false);


--
-- TOC entry 3446 (class 0 OID 0)
-- Dependencies: 221
-- Name: userGroups_id_group_seq; Type: SEQUENCE SET; Schema: main_data; Owner: postgres
--

SELECT pg_catalog.setval('main_data."userGroups_id_group_seq"', 1, false);


--
-- TOC entry 3447 (class 0 OID 0)
-- Dependencies: 220
-- Name: userGroups_id_user_seq; Type: SEQUENCE SET; Schema: main_data; Owner: postgres
--

SELECT pg_catalog.setval('main_data."userGroups_id_user_seq"', 1, false);


--
-- TOC entry 3448 (class 0 OID 0)
-- Dependencies: 214
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: main_data; Owner: postgres
--

SELECT pg_catalog.setval('main_data.user_id_seq', 1, false);


--
-- TOC entry 3449 (class 0 OID 0)
-- Dependencies: 218
-- Name: usersGroup_id_seq; Type: SEQUENCE SET; Schema: main_data; Owner: postgres
--

SELECT pg_catalog.setval('main_data."usersGroup_id_seq"', 1, false);


--
-- TOC entry 3227 (class 2606 OID 57630)
-- Name: friends friends_pkey; Type: CONSTRAINT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data.friends
    ADD CONSTRAINT friends_pkey PRIMARY KEY (id);


--
-- TOC entry 3223 (class 2606 OID 57589)
-- Name: group group_pkey; Type: CONSTRAINT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data."group"
    ADD CONSTRAINT group_pkey PRIMARY KEY (id);


--
-- TOC entry 3229 (class 2606 OID 57659)
-- Name: message message_pkey; Type: CONSTRAINT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data.message
    ADD CONSTRAINT message_pkey PRIMARY KEY (id);


--
-- TOC entry 3231 (class 2606 OID 57688)
-- Name: post post_pkey; Type: CONSTRAINT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data.post
    ADD CONSTRAINT post_pkey PRIMARY KEY (id);


--
-- TOC entry 3221 (class 2606 OID 57582)
-- Name: user user_pkey; Type: CONSTRAINT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- TOC entry 3225 (class 2606 OID 57596)
-- Name: userGroups usersGroup_pkey; Type: CONSTRAINT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data."userGroups"
    ADD CONSTRAINT "usersGroup_pkey" PRIMARY KEY (id);


--
-- TOC entry 3232 (class 2606 OID 57619)
-- Name: userGroups id_group_fk; Type: FK CONSTRAINT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data."userGroups"
    ADD CONSTRAINT id_group_fk FOREIGN KEY (id_group) REFERENCES main_data."group"(id) NOT VALID;


--
-- TOC entry 3238 (class 2606 OID 57708)
-- Name: post id_group_fk; Type: FK CONSTRAINT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data.post
    ADD CONSTRAINT id_group_fk FOREIGN KEY (id_group) REFERENCES main_data."group"(id) NOT VALID;


--
-- TOC entry 3234 (class 2606 OID 57643)
-- Name: friends id_user1_fk; Type: FK CONSTRAINT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data.friends
    ADD CONSTRAINT id_user1_fk FOREIGN KEY (id_user1) REFERENCES main_data."user"(id) NOT VALID;


--
-- TOC entry 3235 (class 2606 OID 57648)
-- Name: friends id_user2_fk; Type: FK CONSTRAINT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data.friends
    ADD CONSTRAINT id_user2_fk FOREIGN KEY (id_user2) REFERENCES main_data."user"(id) NOT VALID;


--
-- TOC entry 3233 (class 2606 OID 57608)
-- Name: userGroups id_user_fk; Type: FK CONSTRAINT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data."userGroups"
    ADD CONSTRAINT id_user_fk FOREIGN KEY (id_user) REFERENCES main_data."user"(id) NOT VALID;


--
-- TOC entry 3239 (class 2606 OID 57703)
-- Name: post id_user_fk; Type: FK CONSTRAINT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data.post
    ADD CONSTRAINT id_user_fk FOREIGN KEY (id_user) REFERENCES main_data."user"(id) NOT VALID;


--
-- TOC entry 3236 (class 2606 OID 57672)
-- Name: message id_user_from_fk; Type: FK CONSTRAINT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data.message
    ADD CONSTRAINT id_user_from_fk FOREIGN KEY (id_user_from) REFERENCES main_data."user"(id) NOT VALID;


--
-- TOC entry 3237 (class 2606 OID 57677)
-- Name: message id_user_to_fk; Type: FK CONSTRAINT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data.message
    ADD CONSTRAINT id_user_to_fk FOREIGN KEY (id_user_to) REFERENCES main_data."user"(id) NOT VALID;


-- Completed on 2024-02-02 16:48:52

--
-- PostgreSQL database dump complete
--

