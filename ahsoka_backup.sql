--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

-- Started on 2024-04-24 17:19:08

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
-- TOC entry 220 (class 1259 OID 16423)
-- Name: likes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.likes (
    id integer NOT NULL,
    id_usuaria integer,
    id_logro integer,
    fecha date NOT NULL
);


ALTER TABLE public.likes OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16422)
-- Name: likes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.likes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.likes_id_seq OWNER TO postgres;

--
-- TOC entry 4868 (class 0 OID 0)
-- Dependencies: 219
-- Name: likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.likes_id_seq OWNED BY public.likes.id;


--
-- TOC entry 218 (class 1259 OID 16411)
-- Name: logros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.logros (
    id integer NOT NULL,
    id_usuario integer,
    titulo character varying(100) NOT NULL,
    fecha date NOT NULL,
    area character varying(50) NOT NULL,
    descripcion character varying(200)
);


ALTER TABLE public.logros OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16410)
-- Name: logros_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.logros_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.logros_id_seq OWNER TO postgres;

--
-- TOC entry 4869 (class 0 OID 0)
-- Dependencies: 217
-- Name: logros_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.logros_id_seq OWNED BY public.logros.id;


--
-- TOC entry 216 (class 1259 OID 16400)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    id integer NOT NULL,
    correoelectronico character varying(100) NOT NULL,
    fechanacimiento date NOT NULL,
    nomusuario character varying(50) NOT NULL,
    contrasenia character varying(50) NOT NULL
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16399)
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuarios_id_seq OWNER TO postgres;

--
-- TOC entry 4870 (class 0 OID 0)
-- Dependencies: 215
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;


--
-- TOC entry 4700 (class 2604 OID 16426)
-- Name: likes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.likes ALTER COLUMN id SET DEFAULT nextval('public.likes_id_seq'::regclass);


--
-- TOC entry 4699 (class 2604 OID 16414)
-- Name: logros id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logros ALTER COLUMN id SET DEFAULT nextval('public.logros_id_seq'::regclass);


--
-- TOC entry 4698 (class 2604 OID 16403)
-- Name: usuarios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);


--
-- TOC entry 4862 (class 0 OID 16423)
-- Dependencies: 220
-- Data for Name: likes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.likes (id, id_usuaria, id_logro, fecha) FROM stdin;
1	1	2	2024-04-20
2	2	4	2024-03-15
3	3	1	2024-02-10
4	4	3	2024-01-05
5	5	5	2023-12-01
\.


--
-- TOC entry 4860 (class 0 OID 16411)
-- Dependencies: 218
-- Data for Name: logros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.logros (id, id_usuario, titulo, fecha, area, descripcion) FROM stdin;
1	1	Aprendí a cocinar una nueva receta	2024-04-20	Cocina	Hice una deliciosa paella por primera vez
2	2	Corrí mi primera maratón	2024-03-15	Deportes	Completé una maratón de 42 km
3	3	Publiqué mi primer poema	2024-02-10	Arte	Mi poema fue seleccionado para una antología
4	4	Adopté un gato callejero	2024-01-05	Vida Personal	Encontré a un gato abandonado y lo llevé a casa
5	5	Terminé mi primer libro	2023-12-01	Literatura	Escribí y publiqué mi primera novela
\.


--
-- TOC entry 4858 (class 0 OID 16400)
-- Dependencies: 216
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios (id, correoelectronico, fechanacimiento, nomusuario, contrasenia) FROM stdin;
1	usuario1@example.com	1990-01-01	usuario1	contraseña1
2	usuario2@example.com	1995-05-15	usuario2	contraseña2
3	usuario3@example.com	1985-07-10	usuario3	contraseña3
4	usuario4@example.com	1992-09-20	usuario4	contraseña4
5	usuario5@example.com	1988-11-25	usuario5	contraseña5
\.


--
-- TOC entry 4871 (class 0 OID 0)
-- Dependencies: 219
-- Name: likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.likes_id_seq', 5, true);


--
-- TOC entry 4872 (class 0 OID 0)
-- Dependencies: 217
-- Name: logros_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.logros_id_seq', 5, true);


--
-- TOC entry 4873 (class 0 OID 0)
-- Dependencies: 215
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_id_seq', 5, true);


--
-- TOC entry 4710 (class 2606 OID 16428)
-- Name: likes likes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_pkey PRIMARY KEY (id);


--
-- TOC entry 4708 (class 2606 OID 16416)
-- Name: logros logros_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logros
    ADD CONSTRAINT logros_pkey PRIMARY KEY (id);


--
-- TOC entry 4702 (class 2606 OID 16407)
-- Name: usuarios usuarios_correoelectronico_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_correoelectronico_key UNIQUE (correoelectronico);


--
-- TOC entry 4704 (class 2606 OID 16409)
-- Name: usuarios usuarios_nomusuario_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_nomusuario_key UNIQUE (nomusuario);


--
-- TOC entry 4706 (class 2606 OID 16405)
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


--
-- TOC entry 4712 (class 2606 OID 16434)
-- Name: likes likes_id_logro_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_id_logro_fkey FOREIGN KEY (id_logro) REFERENCES public.logros(id);


--
-- TOC entry 4713 (class 2606 OID 16429)
-- Name: likes likes_id_usuaria_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_id_usuaria_fkey FOREIGN KEY (id_usuaria) REFERENCES public.usuarios(id);


--
-- TOC entry 4711 (class 2606 OID 16417)
-- Name: logros logros_id_usuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logros
    ADD CONSTRAINT logros_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id);


-- Completed on 2024-04-24 17:19:12

--
-- PostgreSQL database dump complete
--

