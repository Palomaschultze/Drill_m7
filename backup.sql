toc.dat                                                                                             0000600 0004000 0002000 00000017436 14447627752 0014474 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP           )                {            db_bootcamp    15.3    15.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                     0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         !           1262    33224    db_bootcamp    DATABASE     ~   CREATE DATABASE db_bootcamp WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE db_bootcamp;
                postgres    false         �            1259    42074 	   bootcamps    TABLE       CREATE TABLE public.bootcamps (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    cue integer NOT NULL,
    description character varying(500) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.bootcamps;
       public         heap    postgres    false         �            1259    42073    bootcamps_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bootcamps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.bootcamps_id_seq;
       public          postgres    false    225         "           0    0    bootcamps_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.bootcamps_id_seq OWNED BY public.bootcamps.id;
          public          postgres    false    224         �            1259    42082    userBootcamp    TABLE     �   CREATE TABLE public."userBootcamp" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer NOT NULL,
    "bootcampId" integer NOT NULL
);
 "   DROP TABLE public."userBootcamp";
       public         heap    postgres    false         �            1259    42064    users    TABLE     H  CREATE TABLE public.users (
    id integer NOT NULL,
    "firstName" character varying(50) NOT NULL,
    "lastName" character varying(50) NOT NULL,
    email character varying(254) NOT NULL,
    status boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false         �            1259    42063    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    223         #           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    222         x           2604    42077    bootcamps id    DEFAULT     l   ALTER TABLE ONLY public.bootcamps ALTER COLUMN id SET DEFAULT nextval('public.bootcamps_id_seq'::regclass);
 ;   ALTER TABLE public.bootcamps ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225         v           2604    42067    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223                   0    42074 	   bootcamps 
   TABLE DATA           Z   COPY public.bootcamps (id, title, cue, description, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    225       3354.dat           0    42082    userBootcamp 
   TABLE DATA           Z   COPY public."userBootcamp" ("createdAt", "updatedAt", "userId", "bootcampId") FROM stdin;
    public          postgres    false    226       3355.dat           0    42064    users 
   TABLE DATA           e   COPY public.users (id, "firstName", "lastName", email, status, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    223       3352.dat $           0    0    bootcamps_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.bootcamps_id_seq', 3, true);
          public          postgres    false    224         %           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 5, true);
          public          postgres    false    222         �           2606    42081    bootcamps bootcamps_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.bootcamps
    ADD CONSTRAINT bootcamps_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.bootcamps DROP CONSTRAINT bootcamps_pkey;
       public            postgres    false    225         �           2606    42086    userBootcamp userBootcamp_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."userBootcamp"
    ADD CONSTRAINT "userBootcamp_pkey" PRIMARY KEY ("userId", "bootcampId");
 L   ALTER TABLE ONLY public."userBootcamp" DROP CONSTRAINT "userBootcamp_pkey";
       public            postgres    false    226    226         z           2606    42129    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    223         |           2606    42131    users users_email_key1 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key1 UNIQUE (email);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key1;
       public            postgres    false    223         ~           2606    42127    users users_email_key2 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key2 UNIQUE (email);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key2;
       public            postgres    false    223         �           2606    42133    users users_email_key3 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key3 UNIQUE (email);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key3;
       public            postgres    false    223         �           2606    42070    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    223         �           2606    42092 )   userBootcamp userBootcamp_bootcampId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."userBootcamp"
    ADD CONSTRAINT "userBootcamp_bootcampId_fkey" FOREIGN KEY ("bootcampId") REFERENCES public.bootcamps(id) ON UPDATE CASCADE ON DELETE CASCADE;
 W   ALTER TABLE ONLY public."userBootcamp" DROP CONSTRAINT "userBootcamp_bootcampId_fkey";
       public          postgres    false    225    226    3204         �           2606    42087 %   userBootcamp userBootcamp_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."userBootcamp"
    ADD CONSTRAINT "userBootcamp_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY public."userBootcamp" DROP CONSTRAINT "userBootcamp_userId_fkey";
       public          postgres    false    3202    223    226                                                                                                                                                                                                                                          3354.dat                                                                                            0000600 0004000 0002000 00000001231 14447627752 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Introduciendo El Bootcamp De React.	10	React es la librería más usada en JavaScript para el desarrollo de interfaces.	2023-06-30 15:08:00.008-04	2023-06-30 15:08:00.008-04
2	Bootcamp Desarrollo Web Full Stack.	12	Crearás aplicaciones web utilizando las tecnologías y lenguajes más actuales y populares, como: JavaScript, nodeJS, Angular, MongoDB, ExpressJS.	2023-06-30 15:08:28.811-04	2023-06-30 15:08:28.811-04
3	Bootcamp Big Data, Inteligencia Artificial & Machine Learning.	18	Domina Data Science, y todo el ecosistema de lenguajes y herramientas de Big Data, e intégralos con modelos avanzados	2023-06-30 15:13:56.321-04	2023-06-30 15:13:56.321-04
\.


                                                                                                                                                                                                                                                                                                                                                                       3355.dat                                                                                            0000600 0004000 0002000 00000000535 14447627752 0014276 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2023-06-30 15:16:13.151-04	2023-06-30 15:16:13.151-04	2	1
2023-06-30 15:17:03.901-04	2023-06-30 15:17:03.901-04	3	1
2023-06-30 15:18:06.414-04	2023-06-30 15:18:06.414-04	2	2
2023-06-30 15:18:11.551-04	2023-06-30 15:18:11.551-04	2	3
2023-06-30 15:19:40.464-04	2023-06-30 15:19:40.464-04	3	3
2023-06-30 15:20:21.4-04	2023-06-30 15:20:21.4-04	4	3
\.


                                                                                                                                                                   3352.dat                                                                                            0000600 0004000 0002000 00000000620 14447627752 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        3	Santiago	Mejías	santiago.mejias@correo.com	t	2023-06-30 15:05:44.367-04	2023-06-30 15:05:44.367-04
4	Lucas	Rojas	lucas.rojas@correo.com	t	2023-06-30 15:06:09.062-04	2023-06-30 15:06:09.062-04
5	Facundo	Fernandez	facundo.fernandez@correo.com	t	2023-06-30 15:06:31.146-04	2023-06-30 15:06:31.146-04
2	Pedro	Sánchez	mateo.diaz@correo.com	f	2023-06-30 14:01:04.421-04	2023-06-30 15:34:42.356-04
\.


                                                                                                                restore.sql                                                                                         0000600 0004000 0002000 00000015140 14447627752 0015407 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

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

DROP DATABASE db_bootcamp;
--
-- Name: db_bootcamp; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE db_bootcamp WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';


ALTER DATABASE db_bootcamp OWNER TO postgres;

\connect db_bootcamp

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
-- Name: bootcamps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bootcamps (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    cue integer NOT NULL,
    description character varying(500) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.bootcamps OWNER TO postgres;

--
-- Name: bootcamps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bootcamps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bootcamps_id_seq OWNER TO postgres;

--
-- Name: bootcamps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bootcamps_id_seq OWNED BY public.bootcamps.id;


--
-- Name: userBootcamp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."userBootcamp" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer NOT NULL,
    "bootcampId" integer NOT NULL
);


ALTER TABLE public."userBootcamp" OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    "firstName" character varying(50) NOT NULL,
    "lastName" character varying(50) NOT NULL,
    email character varying(254) NOT NULL,
    status boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: bootcamps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootcamps ALTER COLUMN id SET DEFAULT nextval('public.bootcamps_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: bootcamps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bootcamps (id, title, cue, description, "createdAt", "updatedAt") FROM stdin;
\.
COPY public.bootcamps (id, title, cue, description, "createdAt", "updatedAt") FROM '$$PATH$$/3354.dat';

--
-- Data for Name: userBootcamp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."userBootcamp" ("createdAt", "updatedAt", "userId", "bootcampId") FROM stdin;
\.
COPY public."userBootcamp" ("createdAt", "updatedAt", "userId", "bootcampId") FROM '$$PATH$$/3355.dat';

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, "firstName", "lastName", email, status, "createdAt", "updatedAt") FROM stdin;
\.
COPY public.users (id, "firstName", "lastName", email, status, "createdAt", "updatedAt") FROM '$$PATH$$/3352.dat';

--
-- Name: bootcamps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bootcamps_id_seq', 3, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 5, true);


--
-- Name: bootcamps bootcamps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootcamps
    ADD CONSTRAINT bootcamps_pkey PRIMARY KEY (id);


--
-- Name: userBootcamp userBootcamp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."userBootcamp"
    ADD CONSTRAINT "userBootcamp_pkey" PRIMARY KEY ("userId", "bootcampId");


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_email_key1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key1 UNIQUE (email);


--
-- Name: users users_email_key2; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key2 UNIQUE (email);


--
-- Name: users users_email_key3; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key3 UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: userBootcamp userBootcamp_bootcampId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."userBootcamp"
    ADD CONSTRAINT "userBootcamp_bootcampId_fkey" FOREIGN KEY ("bootcampId") REFERENCES public.bootcamps(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: userBootcamp userBootcamp_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."userBootcamp"
    ADD CONSTRAINT "userBootcamp_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                