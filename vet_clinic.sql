--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

-- Started on 2023-12-13 18:34:18

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
-- TOC entry 218 (class 1259 OID 19512)
-- Name: animal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.animal (
    date_of_birth date,
    customer_id integer NOT NULL,
    id bigint NOT NULL,
    breed character varying(255),
    color character varying(255),
    gender character varying(255),
    name character varying(255),
    species character varying(255)
);


ALTER TABLE public.animal OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 19510)
-- Name: animal_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.animal_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.animal_customer_id_seq OWNER TO postgres;

--
-- TOC entry 4913 (class 0 OID 0)
-- Dependencies: 216
-- Name: animal_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.animal_customer_id_seq OWNED BY public.animal.customer_id;


--
-- TOC entry 217 (class 1259 OID 19511)
-- Name: animal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.animal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.animal_id_seq OWNER TO postgres;

--
-- TOC entry 4914 (class 0 OID 0)
-- Dependencies: 217
-- Name: animal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.animal_id_seq OWNED BY public.animal.id;


--
-- TOC entry 222 (class 1259 OID 19524)
-- Name: appointment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.appointment (
    animal_id integer NOT NULL,
    appointment_date timestamp(6) without time zone NOT NULL,
    doctor_id integer NOT NULL,
    id bigint NOT NULL
);


ALTER TABLE public.appointment OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 19521)
-- Name: appointment_animal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.appointment_animal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.appointment_animal_id_seq OWNER TO postgres;

--
-- TOC entry 4915 (class 0 OID 0)
-- Dependencies: 219
-- Name: appointment_animal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.appointment_animal_id_seq OWNED BY public.appointment.animal_id;


--
-- TOC entry 220 (class 1259 OID 19522)
-- Name: appointment_doctor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.appointment_doctor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.appointment_doctor_id_seq OWNER TO postgres;

--
-- TOC entry 4916 (class 0 OID 0)
-- Dependencies: 220
-- Name: appointment_doctor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.appointment_doctor_id_seq OWNED BY public.appointment.doctor_id;


--
-- TOC entry 221 (class 1259 OID 19523)
-- Name: appointment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.appointment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.appointment_id_seq OWNER TO postgres;

--
-- TOC entry 4917 (class 0 OID 0)
-- Dependencies: 221
-- Name: appointment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.appointment_id_seq OWNED BY public.appointment.id;


--
-- TOC entry 225 (class 1259 OID 19534)
-- Name: available_date; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.available_date (
    date date,
    doctor_id integer NOT NULL,
    id bigint NOT NULL
);


ALTER TABLE public.available_date OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 19532)
-- Name: available_date_doctor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.available_date_doctor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.available_date_doctor_id_seq OWNER TO postgres;

--
-- TOC entry 4918 (class 0 OID 0)
-- Dependencies: 223
-- Name: available_date_doctor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.available_date_doctor_id_seq OWNED BY public.available_date.doctor_id;


--
-- TOC entry 224 (class 1259 OID 19533)
-- Name: available_date_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.available_date_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.available_date_id_seq OWNER TO postgres;

--
-- TOC entry 4919 (class 0 OID 0)
-- Dependencies: 224
-- Name: available_date_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.available_date_id_seq OWNED BY public.available_date.id;


--
-- TOC entry 227 (class 1259 OID 19542)
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    id bigint NOT NULL,
    address character varying(255),
    city character varying(255),
    mail character varying(255),
    name character varying(255),
    phone character varying(255)
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 19541)
-- Name: customer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customer_id_seq OWNER TO postgres;

--
-- TOC entry 4920 (class 0 OID 0)
-- Dependencies: 226
-- Name: customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customer_id_seq OWNED BY public.customer.id;


--
-- TOC entry 215 (class 1259 OID 18650)
-- Name: customer_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customer_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customer_seq OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 19551)
-- Name: doctor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.doctor (
    id bigint NOT NULL,
    address character varying(255),
    city character varying(255),
    mail character varying(255),
    name character varying(255),
    phone character varying(255)
);


ALTER TABLE public.doctor OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 19550)
-- Name: doctor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.doctor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.doctor_id_seq OWNER TO postgres;

--
-- TOC entry 4921 (class 0 OID 0)
-- Dependencies: 228
-- Name: doctor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.doctor_id_seq OWNED BY public.doctor.id;


--
-- TOC entry 232 (class 1259 OID 19561)
-- Name: vaccine; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vaccine (
    protection_finish_date date,
    protection_start_date date,
    animal_id integer NOT NULL,
    id bigint NOT NULL,
    code character varying(255),
    name character varying(255)
);


ALTER TABLE public.vaccine OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 19559)
-- Name: vaccine_animal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vaccine_animal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vaccine_animal_id_seq OWNER TO postgres;

--
-- TOC entry 4922 (class 0 OID 0)
-- Dependencies: 230
-- Name: vaccine_animal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vaccine_animal_id_seq OWNED BY public.vaccine.animal_id;


--
-- TOC entry 231 (class 1259 OID 19560)
-- Name: vaccine_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vaccine_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vaccine_id_seq OWNER TO postgres;

--
-- TOC entry 4923 (class 0 OID 0)
-- Dependencies: 231
-- Name: vaccine_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vaccine_id_seq OWNED BY public.vaccine.id;


--
-- TOC entry 4719 (class 2604 OID 19515)
-- Name: animal customer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animal ALTER COLUMN customer_id SET DEFAULT nextval('public.animal_customer_id_seq'::regclass);


--
-- TOC entry 4720 (class 2604 OID 19516)
-- Name: animal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animal ALTER COLUMN id SET DEFAULT nextval('public.animal_id_seq'::regclass);


--
-- TOC entry 4721 (class 2604 OID 19527)
-- Name: appointment animal_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointment ALTER COLUMN animal_id SET DEFAULT nextval('public.appointment_animal_id_seq'::regclass);


--
-- TOC entry 4722 (class 2604 OID 19528)
-- Name: appointment doctor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointment ALTER COLUMN doctor_id SET DEFAULT nextval('public.appointment_doctor_id_seq'::regclass);


--
-- TOC entry 4723 (class 2604 OID 19529)
-- Name: appointment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointment ALTER COLUMN id SET DEFAULT nextval('public.appointment_id_seq'::regclass);


--
-- TOC entry 4724 (class 2604 OID 19537)
-- Name: available_date doctor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.available_date ALTER COLUMN doctor_id SET DEFAULT nextval('public.available_date_doctor_id_seq'::regclass);


--
-- TOC entry 4725 (class 2604 OID 19538)
-- Name: available_date id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.available_date ALTER COLUMN id SET DEFAULT nextval('public.available_date_id_seq'::regclass);


--
-- TOC entry 4726 (class 2604 OID 19545)
-- Name: customer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer ALTER COLUMN id SET DEFAULT nextval('public.customer_id_seq'::regclass);


--
-- TOC entry 4727 (class 2604 OID 19554)
-- Name: doctor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doctor ALTER COLUMN id SET DEFAULT nextval('public.doctor_id_seq'::regclass);


--
-- TOC entry 4728 (class 2604 OID 19564)
-- Name: vaccine animal_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vaccine ALTER COLUMN animal_id SET DEFAULT nextval('public.vaccine_animal_id_seq'::regclass);


--
-- TOC entry 4729 (class 2604 OID 19565)
-- Name: vaccine id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vaccine ALTER COLUMN id SET DEFAULT nextval('public.vaccine_id_seq'::regclass);


--
-- TOC entry 4893 (class 0 OID 19512)
-- Dependencies: 218
-- Data for Name: animal; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.animal VALUES ('2013-08-23', 1, 1, 'rseals0', 'Red', 'Male', 'Reece', 'Wolf spider');
INSERT INTO public.animal VALUES ('2016-09-06', 2, 2, 'ogowen1', 'Blue', 'Female', 'Ofella', 'Ground monitor (unidentified)');
INSERT INTO public.animal VALUES ('2015-06-06', 3, 3, 'acarpe2', 'Khaki', 'Male', 'Artur', 'Squirrel, pine');
INSERT INTO public.animal VALUES ('2018-02-06', 4, 4, 'hbarg3', 'Crimson', 'Male', 'Hasheem', 'Heron, gray');
INSERT INTO public.animal VALUES ('2018-05-11', 5, 5, 'melphee4', 'Orange', 'Male', 'Matthaeus', 'Wallaby, red-necked');
INSERT INTO public.animal VALUES ('2022-03-30', 6, 6, 'rprater0', 'Yellow', 'Female', 'Rosalind', 'Penguin');
INSERT INTO public.animal VALUES ('2022-05-07', 7, 7, 'kworsfold1', 'Puce', 'Male', 'Kienan', 'Cat');
INSERT INTO public.animal VALUES ('2015-06-03', 8, 8, 'khenstone2', 'Maroon', 'Female', 'Kathryne', 'Anteater');
INSERT INTO public.animal VALUES ('2019-07-30', 9, 9, 'lbratt3', 'Pink', 'Female', 'Lonnie', 'Duck');
INSERT INTO public.animal VALUES ('2011-11-01', 10, 10, 'pchalker4', 'Blue', 'Male', 'Pyotr', 'Viper');


--
-- TOC entry 4897 (class 0 OID 19524)
-- Dependencies: 222
-- Data for Name: appointment; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.appointment VALUES (1, '2023-04-25 09:00:00', 1, 1);
INSERT INTO public.appointment VALUES (2, '2023-11-15 10:00:00', 2, 2);
INSERT INTO public.appointment VALUES (3, '2023-08-17 11:00:00', 3, 3);
INSERT INTO public.appointment VALUES (4, '2023-05-26 12:00:00', 4, 4);
INSERT INTO public.appointment VALUES (5, '2023-06-19 13:00:00', 5, 5);
INSERT INTO public.appointment VALUES (6, '2023-05-25 14:00:00', 6, 6);
INSERT INTO public.appointment VALUES (7, '2023-12-15 15:00:00', 7, 7);
INSERT INTO public.appointment VALUES (8, '2023-09-17 16:00:00', 8, 8);
INSERT INTO public.appointment VALUES (9, '2023-04-26 17:00:00', 9, 9);
INSERT INTO public.appointment VALUES (10, '2023-07-19 18:00:00', 10, 10);


--
-- TOC entry 4900 (class 0 OID 19534)
-- Dependencies: 225
-- Data for Name: available_date; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.available_date VALUES ('2023-04-25', 1, 1);
INSERT INTO public.available_date VALUES ('2023-11-15', 2, 2);
INSERT INTO public.available_date VALUES ('2023-08-17', 3, 3);
INSERT INTO public.available_date VALUES ('2023-05-26', 4, 4);
INSERT INTO public.available_date VALUES ('2023-06-19', 5, 5);
INSERT INTO public.available_date VALUES ('2023-05-25', 6, 6);
INSERT INTO public.available_date VALUES ('2023-12-15', 7, 7);
INSERT INTO public.available_date VALUES ('2023-09-17', 8, 8);
INSERT INTO public.available_date VALUES ('2023-04-26', 9, 9);
INSERT INTO public.available_date VALUES ('2023-07-19', 10, 10);


--
-- TOC entry 4902 (class 0 OID 19542)
-- Dependencies: 227
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.customer VALUES (1, '1102 Messerschmidt Crossing', 'Zhangzhishan', 'tkahn0@squarespace.com', 'Torie Kahn', '+86 (605) 461-7227');
INSERT INTO public.customer VALUES (2, '08 Stone Corner Alley', 'Xia Zanggor', 'screus1@google.ca', 'Selestina Creus', '+86 (256) 757-5979');
INSERT INTO public.customer VALUES (3, '6174 Stone Corner Crossing', 'Yangzi Jianglu', 'pattoc2@gravatar.com', 'Petey Attoc', '+86 (729) 251-3640');
INSERT INTO public.customer VALUES (4, '6345 Stuart Avenue', 'Tīkāpur', 'kdrillingcourt3@1688.com', 'Karlyn Drillingcourt', '+977 (459) 997-0289');
INSERT INTO public.customer VALUES (5, '3 Canary Alley', 'Luisiana', 'acranham4@omniture.com', 'Anselm Cranham', '+63 (360) 167-5996');
INSERT INTO public.customer VALUES (6, '899 Green Ridge Court', 'Sjalevad', 'dveltmann0@drupal.org', 'Deborah Veltmann', '+46 (998) 780-0265');
INSERT INTO public.customer VALUES (7, '18 Moose Circle', 'Toride', 'apebworth1@shutterfly.com', 'Avie Pebworth', '+81 (965) 280-7672');
INSERT INTO public.customer VALUES (8, '007 Lindbergh Lane', 'Perama', 'smoulson2@vistaprint.com', 'Stephana Moulson', '+30 (937) 856-5337');
INSERT INTO public.customer VALUES (9, '133 Carpenter Park', 'Pangani', 'mtall3@comcast.net', 'Magda Tall', '+255 (534) 289-4771');
INSERT INTO public.customer VALUES (10, '123 Green Court', 'Vlad', 'dveltmann0@gmail.org', 'Deborah Wolt', '+46 (789) 780-0265');


--
-- TOC entry 4904 (class 0 OID 19551)
-- Dependencies: 229
-- Data for Name: doctor; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.doctor VALUES (1, '220 Golf View Parkway', 'Shagamu', 'vdroogan0@sciencedaily.com', 'Vida Droogan', '+234 (544) 633-1267');
INSERT INTO public.doctor VALUES (2, '5422 Thompson Lane', 'San Jose', 'carnaudi1@google.pl', 'Cammy Arnaudi', '+63 (269) 640-0678');
INSERT INTO public.doctor VALUES (3, '1737 Susan Junction', 'Punta Hermosa', 'vshuttleworth2@exblog.jp', 'Valentin Shuttleworth', '+51 (298) 618-2287');
INSERT INTO public.doctor VALUES (4, '57890 Mallory Alley', 'Fendou', 'cmosdill3@psu.edu', 'Catherina Mosdill', '+86 (391) 248-4991');
INSERT INTO public.doctor VALUES (5, '420 Quincy Road', 'Edissiya', 'cgosker4@storify.com', 'Celestyna Gosker', '+7 (478) 846-8704');
INSERT INTO public.doctor VALUES (6, '44848 Kim Park', 'Teófilo Otoni', 'olocksley5@globo.com', 'Opal Locksley', '+55 (278) 124-7157');
INSERT INTO public.doctor VALUES (7, '3 Leroy Place', 'Nueva Gorgona', 'tfitzgerald6@prweb.com', 'Terrie Fitzgerald', '+507 (445) 181-6501');
INSERT INTO public.doctor VALUES (8, '05643 Hooker Point', 'Banaba', 'ssimony7@amazon.co.uk', 'Shanta Simony', '+63 (777) 803-9099');
INSERT INTO public.doctor VALUES (9, '130 Cordelia Way', 'Naawan', 'krayer8@mtv.com', 'Kelly Rayer', '+63 (878) 370-9702');
INSERT INTO public.doctor VALUES (10, '76 Blaine Lane', 'Karangturi', 'bvyvyan9@va.gov', 'Bernie Vyvyan', '+62 (247) 840-8393');


--
-- TOC entry 4907 (class 0 OID 19561)
-- Dependencies: 232
-- Data for Name: vaccine; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.vaccine VALUES ('2023-10-17', '2022-01-01', 1, 1, '60429-188', 'Trazodone Hydrochloride');
INSERT INTO public.vaccine VALUES ('2023-02-01', '2022-01-02', 2, 2, '58892-346', 'FaceCoTZ');
INSERT INTO public.vaccine VALUES ('2023-04-01', '2022-01-03', 3, 3, '59726-020', 'Pain Relief PM');
INSERT INTO public.vaccine VALUES ('2023-05-17', '2022-01-03', 4, 4, '0904-7695', 'antacid');
INSERT INTO public.vaccine VALUES ('2023-08-17', '2022-01-01', 5, 5, '49936-1303', 'Oxygen');
INSERT INTO public.vaccine VALUES ('2023-03-18', '2022-01-04', 6, 6, '55301-226', 'Stay Awake');
INSERT INTO public.vaccine VALUES ('2023-05-11', '2022-01-04', 7, 7, '49884-822', 'TRAMADOL HYDROCHLORIDE');
INSERT INTO public.vaccine VALUES ('2023-04-21', '2022-01-01', 8, 8, '55910-480', 'Nitetime');
INSERT INTO public.vaccine VALUES ('2023-08-06', '2022-01-04', 9, 9, '51824-561', 'Senna-S Laxative');
INSERT INTO public.vaccine VALUES ('2023-08-15', '2022-01-03', 10, 10, '0395-1207', 'GNP Iodides Tincture');


--
-- TOC entry 4924 (class 0 OID 0)
-- Dependencies: 216
-- Name: animal_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.animal_customer_id_seq', 10, true);


--
-- TOC entry 4925 (class 0 OID 0)
-- Dependencies: 217
-- Name: animal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.animal_id_seq', 10, true);


--
-- TOC entry 4926 (class 0 OID 0)
-- Dependencies: 219
-- Name: appointment_animal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.appointment_animal_id_seq', 10, true);


--
-- TOC entry 4927 (class 0 OID 0)
-- Dependencies: 220
-- Name: appointment_doctor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.appointment_doctor_id_seq', 10, true);


--
-- TOC entry 4928 (class 0 OID 0)
-- Dependencies: 221
-- Name: appointment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.appointment_id_seq', 10, true);


--
-- TOC entry 4929 (class 0 OID 0)
-- Dependencies: 223
-- Name: available_date_doctor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.available_date_doctor_id_seq', 10, true);


--
-- TOC entry 4930 (class 0 OID 0)
-- Dependencies: 224
-- Name: available_date_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.available_date_id_seq', 10, true);


--
-- TOC entry 4931 (class 0 OID 0)
-- Dependencies: 226
-- Name: customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customer_id_seq', 10, true);


--
-- TOC entry 4932 (class 0 OID 0)
-- Dependencies: 215
-- Name: customer_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customer_seq', 101, true);


--
-- TOC entry 4933 (class 0 OID 0)
-- Dependencies: 228
-- Name: doctor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.doctor_id_seq', 10, true);


--
-- TOC entry 4934 (class 0 OID 0)
-- Dependencies: 230
-- Name: vaccine_animal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vaccine_animal_id_seq', 10, true);


--
-- TOC entry 4935 (class 0 OID 0)
-- Dependencies: 231
-- Name: vaccine_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vaccine_id_seq', 10, true);


--
-- TOC entry 4731 (class 2606 OID 19520)
-- Name: animal animal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animal
    ADD CONSTRAINT animal_pkey PRIMARY KEY (id);


--
-- TOC entry 4733 (class 2606 OID 19531)
-- Name: appointment appointment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT appointment_pkey PRIMARY KEY (id);


--
-- TOC entry 4735 (class 2606 OID 19540)
-- Name: available_date available_date_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.available_date
    ADD CONSTRAINT available_date_pkey PRIMARY KEY (id);


--
-- TOC entry 4737 (class 2606 OID 19549)
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);


--
-- TOC entry 4739 (class 2606 OID 19558)
-- Name: doctor doctor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT doctor_pkey PRIMARY KEY (id);


--
-- TOC entry 4741 (class 2606 OID 19569)
-- Name: vaccine vaccine_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vaccine
    ADD CONSTRAINT vaccine_pkey PRIMARY KEY (id);


--
-- TOC entry 4743 (class 2606 OID 19575)
-- Name: appointment fk2kkeptdxfuextg5ch7xp3ytie; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT fk2kkeptdxfuextg5ch7xp3ytie FOREIGN KEY (animal_id) REFERENCES public.animal(id);


--
-- TOC entry 4742 (class 2606 OID 19570)
-- Name: animal fk6pvxm5gfjqxclb651be9unswe; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animal
    ADD CONSTRAINT fk6pvxm5gfjqxclb651be9unswe FOREIGN KEY (customer_id) REFERENCES public.customer(id);


--
-- TOC entry 4745 (class 2606 OID 19585)
-- Name: available_date fkk0d6pu1wxarsoou0x2e1cc2on; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.available_date
    ADD CONSTRAINT fkk0d6pu1wxarsoou0x2e1cc2on FOREIGN KEY (doctor_id) REFERENCES public.doctor(id);


--
-- TOC entry 4746 (class 2606 OID 19590)
-- Name: vaccine fkne3kmh8y5pcyxwl4u2w9prw6j; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vaccine
    ADD CONSTRAINT fkne3kmh8y5pcyxwl4u2w9prw6j FOREIGN KEY (animal_id) REFERENCES public.animal(id);


--
-- TOC entry 4744 (class 2606 OID 19580)
-- Name: appointment fkoeb98n82eph1dx43v3y2bcmsl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT fkoeb98n82eph1dx43v3y2bcmsl FOREIGN KEY (doctor_id) REFERENCES public.doctor(id);


-- Completed on 2023-12-13 18:34:18

--
-- PostgreSQL database dump complete
--

