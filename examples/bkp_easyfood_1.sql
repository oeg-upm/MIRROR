--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.4
-- Dumped by pg_dump version 9.3.4
-- Started on 2014-11-06 20:01:05

-- Database: easyfood

-- DROP DATABASE easyfood;

CREATE DATABASE easyfood
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'Portuguese_Brazil.1252'
       LC_CTYPE = 'Portuguese_Brazil.1252'
       CONNECTION LIMIT = -1;


SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 184 (class 3079 OID 11750)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2016 (class 0 OID 0)
-- Dependencies: 184
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 171 (class 1259 OID 41292)
-- Name: admin; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE admin (
    codadmin integer NOT NULL,
    nome character varying(100) NOT NULL,
    ddd integer NOT NULL,
    telefone integer NOT NULL,
    datahora timestamp without time zone NOT NULL,
    login character varying(50),
    senha text
);


ALTER TABLE public.admin OWNER TO postgres;

--
-- TOC entry 170 (class 1259 OID 41290)
-- Name: admin_codadmin_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE admin_codadmin_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_codadmin_seq OWNER TO postgres;

--
-- TOC entry 2017 (class 0 OID 0)
-- Dependencies: 170
-- Name: admin_codadmin_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE admin_codadmin_seq OWNED BY admin.codadmin;


--
-- TOC entry 172 (class 1259 OID 41298)
-- Name: estabelecimentos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE estabelecimentos (
    cnpjcpf bigint NOT NULL,
    nome character varying(100) NOT NULL,
    ddd integer,
    telefone integer,
    datahora timestamp without time zone NOT NULL,
    classif integer
);


ALTER TABLE public.estabelecimentos OWNER TO postgres;

--
-- TOC entry 174 (class 1259 OID 41305)
-- Name: pontos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pontos (
    codponto integer NOT NULL,
    codtpusuarios integer NOT NULL,
    lat numeric(11,8) NOT NULL,
    lon numeric(11,8),
    nome character varying(20) NOT NULL,
    descricao character varying(50),
    aberto boolean NOT NULL,
    em_validaberto boolean NOT NULL
);


ALTER TABLE public.pontos OWNER TO postgres;

--
-- TOC entry 173 (class 1259 OID 41303)
-- Name: pontos_codponto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pontos_codponto_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pontos_codponto_seq OWNER TO postgres;

--
-- TOC entry 2018 (class 0 OID 0)
-- Dependencies: 173
-- Name: pontos_codponto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pontos_codponto_seq OWNED BY pontos.codponto;


--
-- TOC entry 175 (class 1259 OID 41311)
-- Name: pontos_estab; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pontos_estab (
    estabelecimentos_cnpjcpf integer NOT NULL,
    pontos_tpusuarios_codtpusuarios integer NOT NULL,
    pontos_codponto integer NOT NULL,
    datahora timestamp without time zone NOT NULL
);


ALTER TABLE public.pontos_estab OWNER TO postgres;

--
-- TOC entry 176 (class 1259 OID 41316)
-- Name: pontos_reclam; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pontos_reclam (
    pontos_tpusuarios_codtpusuarios integer NOT NULL,
    pontos_codponto integer NOT NULL,
    status_reclamacao_codreclam integer NOT NULL,
    estabelecimentos_cnpjcpf integer NOT NULL,
    admin_codadmin integer NOT NULL
);


ALTER TABLE public.pontos_reclam OWNER TO postgres;

--
-- TOC entry 177 (class 1259 OID 41321)
-- Name: pontos_usuarios; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pontos_usuarios (
    pontos_tpusuarios_codtpusuarios integer NOT NULL,
    pontos_codponto integer NOT NULL,
    usuarios_codusuarios integer NOT NULL,
    datahora timestamp without time zone NOT NULL
);


ALTER TABLE public.pontos_usuarios OWNER TO postgres;

--
-- TOC entry 179 (class 1259 OID 41328)
-- Name: status_reclamacao; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE status_reclamacao (
    codreclam integer NOT NULL,
    statusreclam character varying(50) NOT NULL
);


ALTER TABLE public.status_reclamacao OWNER TO postgres;

--
-- TOC entry 178 (class 1259 OID 41326)
-- Name: status_reclamacao_codreclam_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE status_reclamacao_codreclam_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.status_reclamacao_codreclam_seq OWNER TO postgres;

--
-- TOC entry 2019 (class 0 OID 0)
-- Dependencies: 178
-- Name: status_reclamacao_codreclam_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE status_reclamacao_codreclam_seq OWNED BY status_reclamacao.codreclam;


--
-- TOC entry 181 (class 1259 OID 41336)
-- Name: tpusuarios; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tpusuarios (
    codtpusuarios integer NOT NULL,
    descricao text
);


ALTER TABLE public.tpusuarios OWNER TO postgres;

--
-- TOC entry 180 (class 1259 OID 41334)
-- Name: tpusuarios_codtpusuarios_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tpusuarios_codtpusuarios_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tpusuarios_codtpusuarios_seq OWNER TO postgres;

--
-- TOC entry 2020 (class 0 OID 0)
-- Dependencies: 180
-- Name: tpusuarios_codtpusuarios_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tpusuarios_codtpusuarios_seq OWNED BY tpusuarios.codtpusuarios;


--
-- TOC entry 183 (class 1259 OID 41344)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE usuarios (
    codusuarios integer NOT NULL,
    datahora timestamp without time zone NOT NULL
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 41342)
-- Name: usuarios_codusuarios_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usuarios_codusuarios_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_codusuarios_seq OWNER TO postgres;

--
-- TOC entry 2021 (class 0 OID 0)
-- Dependencies: 182
-- Name: usuarios_codusuarios_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE usuarios_codusuarios_seq OWNED BY usuarios.codusuarios;


--
-- TOC entry 1865 (class 2604 OID 41295)
-- Name: codadmin; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY admin ALTER COLUMN codadmin SET DEFAULT nextval('admin_codadmin_seq'::regclass);


--
-- TOC entry 1866 (class 2604 OID 41308)
-- Name: codponto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pontos ALTER COLUMN codponto SET DEFAULT nextval('pontos_codponto_seq'::regclass);


--
-- TOC entry 1867 (class 2604 OID 41331)
-- Name: codreclam; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY status_reclamacao ALTER COLUMN codreclam SET DEFAULT nextval('status_reclamacao_codreclam_seq'::regclass);


--
-- TOC entry 1868 (class 2604 OID 41339)
-- Name: codtpusuarios; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tpusuarios ALTER COLUMN codtpusuarios SET DEFAULT nextval('tpusuarios_codtpusuarios_seq'::regclass);


--
-- TOC entry 1869 (class 2604 OID 41347)
-- Name: codusuarios; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuarios ALTER COLUMN codusuarios SET DEFAULT nextval('usuarios_codusuarios_seq'::regclass);


--
-- TOC entry 1996 (class 0 OID 41292)
-- Dependencies: 171
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY admin (codadmin, nome, ddd, telefone, datahora, login, senha) FROM stdin;
1	Nerias Sousa	41	98331242	2014-11-05 19:15:18.986	nerias	123456
2	Heverton Dyego	41	96805017	2014-11-05 19:15:18.986	dyego	654321
\.


--
-- TOC entry 2022 (class 0 OID 0)
-- Dependencies: 170
-- Name: admin_codadmin_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('admin_codadmin_seq', 1, false);


--
-- TOC entry 1997 (class 0 OID 41298)
-- Dependencies: 172
-- Data for Name: estabelecimentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY estabelecimentos (cnpjcpf, nome, ddd, telefone, datahora, classif) FROM stdin;
92581345927384	Stone Warner	51	37127673	2014-09-29 03:11:52	3
51222642925050	Merrill Nelson	45	34866152	2014-09-17 14:40:35	3
23479181155562	Dale Puckett	44	36518640	2015-05-01 16:40:42	1
92514616996049	Barry Langley	51	37730386	2015-10-07 00:00:01	1
98973345715138	Patrick Levine	41	35393356	2014-03-28 22:36:17	2
92114230535096	Lionel Vega	51	38831765	2013-11-26 03:24:07	3
93785257927245	Lars Valencia	48	38097553	2014-12-15 10:32:56	2
90131275355815	Hector Russo	49	36948235	2015-06-07 09:21:19	1
58765161989463	Otto England	49	35528182	2014-03-25 00:01:05	2
68244550956620	Jared Orr	50	33534139	2015-10-02 13:22:31	3
54068733751773	Hammett Kirk	50	37831453	2015-07-13 07:11:55	1
96737675492962	Dane Cole	45	34829133	2015-05-20 12:07:05	1
31740136320392	Gareth Wise	46	34990211	2014-11-13 11:32:55	3
52548323613074	Jakeem Oneil	50	35975621	2015-09-17 13:25:24	3
96350757322377	Plato Best	49	34269513	2015-09-14 17:00:57	3
13677254319190	Hector Zamora	51	36825778	2015-03-31 10:52:27	3
92042097780439	Alden Bell	46	35512500	2013-12-17 22:25:12	3
98937497867478	Knox Campbell	50	35479492	2014-03-02 19:40:17	3
82657662861877	Rahim Bowers	46	34709311	2014-08-12 02:30:30	2
30291977069444	Kenyon Mason	49	35210943	2015-01-01 02:33:37	2
94074266238345	Raymond Allen	46	39182428	2015-08-17 14:35:32	1
28079030166069	Drew Collins	47	36366114	2014-01-04 20:56:42	1
33959002378914	Oren Stephenson	45	35580083	2014-10-17 19:30:12	2
70978603636225	Grady Blackwell	46	35304478	2015-02-27 08:03:28	1
57891225400898	Mannix Morton	50	39511657	2014-03-30 12:06:32	3
83168906097610	Macon Lara	44	38457101	2014-01-28 17:55:05	2
47316656178898	Brian Small	42	34985699	2014-10-15 02:27:09	2
76876114350226	Arthur Knowles	41	39491018	2015-01-25 11:03:52	2
63429188024666	Ray Clemons	42	39261532	2015-08-08 13:29:20	1
26230728833211	August Vance	43	33890450	2015-05-15 02:03:00	1
95810011857085	Burke Howard	50	33369100	2014-02-20 18:43:37	2
13801090750429	Harrison Nelson	43	38404388	2014-12-24 09:18:01	2
39252979391150	Aaron Gordon	48	37841146	2015-09-18 16:56:04	3
77357874355382	Griffith Cohen	49	35795601	2014-12-07 21:49:10	1
45790096662110	Jin Harmon	42	35106061	2014-03-22 22:51:39	3
79418219915694	Xander Harmon	49	38336798	2014-09-28 11:06:30	2
75229230688677	Kermit Martin	44	33827608	2015-11-01 06:34:10	1
73707519223292	Josiah Cleveland	51	39201513	2014-05-08 06:34:48	2
39683008276753	Erich Wilcox	44	37658816	2014-04-05 09:19:15	2
43505430428518	Duncan Hurst	45	39614457	2014-06-02 00:09:06	3
85304733158813	Herman Perkins	51	34570663	2013-11-17 18:09:39	1
18543584644794	Ulric Russo	43	39595487	2015-02-03 20:13:10	1
74714613498912	Paul Chavez	51	39739257	2013-12-30 06:57:09	2
30105495866801	Drew Barker	50	34307988	2014-08-26 12:24:25	1
78174615816937	Cullen Nelson	51	34564612	2015-04-15 20:39:17	2
77964244575964	Patrick Guthrie	46	35140363	2014-03-17 04:18:04	3
62916999641391	Philip Good	51	33803996	2013-11-12 23:22:22	2
59658188083105	Connor Ratliff	51	39210225	2015-07-31 06:22:58	2
98772449791431	Allen Owens	49	35293708	2014-12-07 08:34:01	2
32799599857793	Fritz Vazquez	51	33478978	2015-08-26 10:42:50	3
78179153386089	Cain Bryan	48	35341781	2015-04-14 16:59:52	1
24625875221358	Ralph Bauer	45	33483578	2015-02-09 07:57:48	1
45219707778758	Norman Mcneil	47	39542706	2015-10-31 19:46:20	3
42729808431532	Luke Buck	50	35770068	2015-03-03 05:02:01	3
89137419644329	Chadwick Welch	51	36109568	2015-03-15 00:31:20	1
15833407143751	Wyatt Melton	50	36173976	2015-04-17 00:26:11	2
35024990141391	Timothy Mccullough	50	38019980	2014-10-19 23:02:05	1
53394712880253	Paul Hoover	44	39959015	2014-08-28 00:17:08	3
12082794143093	Wyatt Weiss	48	34451433	2015-05-16 15:52:43	3
42625016346573	Ferdinand Blake	41	35357529	2014-09-21 04:03:13	1
78135680407285	Roth Jacobs	51	34965579	2014-09-07 19:41:55	1
73418004645241	Alec Bailey	51	37677047	2014-05-02 09:19:58	3
11603432397047	Macaulay Lloyd	51	37653464	2015-08-24 10:45:34	1
95637882004181	Shad Love	44	35844929	2014-07-23 04:13:33	2
49627597423063	Wade Walker	48	37241969	2014-09-09 14:14:18	3
56943170726299	Vernon Mccarty	50	37943075	2014-03-28 14:45:52	1
22150293861826	Daniel Perez	49	35878354	2015-04-24 19:04:45	2
62692091903752	Upton Robinson	43	37929519	2015-09-08 16:48:07	1
33181112797723	Thomas Harrell	48	33815407	2014-11-15 20:55:26	1
35136931472354	Vladimir Petty	51	39447550	2014-12-28 22:47:52	1
13423686764306	Brenden Hicks	44	35570927	2015-01-25 17:47:27	1
52442944008443	Thaddeus Soto	45	35696939	2014-01-28 08:06:56	3
47684249364667	Jameson Valenzuela	42	34240436	2015-03-02 23:02:22	3
53430155374937	Wesley Roth	43	36799460	2015-07-09 20:58:42	2
64061525008744	Devin May	44	34330342	2014-03-20 00:42:29	1
40557053850756	Norman Spence	45	36474953	2014-11-02 11:15:11	1
92059556436207	Rigel Chapman	43	37383658	2014-08-10 14:48:08	3
23685816840992	Elmo Watts	51	34342422	2015-08-01 05:11:32	3
68150047212839	Addison Small	44	34301431	2014-07-05 14:19:49	1
76968086221151	Chandler Blackwell	51	39294746	2013-12-20 19:12:41	1
61618100810382	Valentine Jones	45	34414078	2014-10-08 20:22:00	2
33244931863413	Igor Alston	42	33359523	2014-05-25 17:57:49	1
26192162517044	Francis Atkinson	49	38514703	2014-04-07 11:16:37	2
46169410935706	Tarik Preston	45	39909724	2014-03-25 13:09:09	2
94831356488996	Kato Bradshaw	46	33619087	2014-11-09 23:37:05	3
40268273982736	Christian Robinson	46	38973926	2015-02-26 17:07:23	2
90450170594784	Fulton Williamson	41	36943164	2014-07-05 08:10:48	3
70514645344681	Valentine Michael	46	38453396	2015-02-01 15:13:28	3
75922063572539	Levi Huber	44	34000347	2015-09-29 08:50:41	3
81886231692300	Chaney Chavez	45	35712290	2015-05-24 02:40:45	2
91389728130565	Orlando Mathews	48	39458733	2015-07-22 02:20:15	2
92023693563209	Kasimir Head	51	35312608	2014-08-06 01:37:43	3
43286007270216	Kasimir Kinney	41	34009542	2015-04-05 03:49:22	2
75580002533064	Andrew Conrad	51	37182767	2014-08-16 01:06:11	3
16862614287270	Giacomo Franco	41	34585630	2014-11-14 08:11:11	2
18313026883535	Galvin Hicks	50	38357115	2013-12-31 14:45:26	1
68180258489317	Guy Marquez	51	36310017	2015-10-14 10:19:36	2
96436294333802	Cole Burke	50	37180241	2015-09-10 01:00:33	1
29202280566096	Amos Cole	43	39796670	2015-05-01 03:37:25	3
69962949181596	Aristotle Puckett	49	39989110	2014-09-30 23:38:40	2
\.


--
-- TOC entry 1999 (class 0 OID 41305)
-- Dependencies: 174
-- Data for Name: pontos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pontos (codponto, codtpusuarios, lat, lon, nome, descricao, aberto, em_validaberto) FROM stdin;
1	2	88.89411000	170.93110000	Xaviera Bar	\N	f	t
2	2	-19.43679000	24.10561000	Hadassah Bar	\N	t	f
3	2	-62.01202000	77.04599000	Karyn Bar	\N	f	f
4	1	-47.05926000	-140.23168000	Emily Bar	\N	t	t
5	1	-29.12164000	-21.96851000	Mira Bar	\N	f	f
6	1	20.37765000	67.60260000	Summer Bar	\N	f	t
7	2	-3.61805000	23.10327000	MacKensie Bar	\N	t	f
8	2	71.80608000	-143.54127000	Isadora Bar	\N	t	t
9	2	10.88257000	-144.61921000	Haley Bar	\N	f	t
10	1	-25.44611000	77.56754000	Blythe Bar	\N	t	t
11	2	88.44365000	67.79477000	Morgan Bar	\N	t	t
12	1	48.18081000	32.89955000	Aileen Bar	\N	t	t
13	2	-36.30484000	-21.52585000	Kitra Bar	\N	t	t
14	1	73.51859000	-139.43070000	Kameko Bar	\N	t	f
15	1	-8.79652000	-88.10633000	Jeanette Bar	\N	f	f
16	2	-5.66200000	51.34494000	Marcia Bar	\N	f	t
17	2	-41.72094000	145.43077000	Melinda Bar	\N	t	t
18	1	-30.50554000	-65.82741000	Gloria Bar	\N	t	t
19	2	9.28816000	82.83873000	Maxine Bar	\N	f	t
20	1	55.08094000	-112.39379000	Winter Bar	\N	f	f
21	1	-25.72522000	-84.75069000	Libby Bar	\N	t	t
22	2	-24.73647000	-71.32017000	Clare Bar	\N	t	f
23	1	11.42463000	106.35490000	Montana Bar	\N	t	t
24	1	42.12416000	-141.99732000	Aline Bar	\N	f	t
25	1	-34.93652000	90.48426000	Bianca Bar	\N	f	t
26	2	-0.90305000	-41.44640000	Willow Bar	\N	t	f
27	1	21.04298000	120.49535000	Lysandra Bar	\N	t	t
28	2	61.22646000	-42.35158000	Cheryl Bar	\N	t	t
29	1	52.63826000	-152.83189000	Tatyana Bar	\N	t	f
30	1	38.03034000	25.87304000	Sage Bar	\N	t	t
31	1	64.88083000	23.79335000	Mira Bar	\N	f	t
32	1	28.01420000	-101.74290000	Ila Bar	\N	t	f
33	2	64.62375000	139.50346000	Kiayada Bar	\N	t	t
34	1	-47.64727000	81.79333000	Lee Bar	\N	t	t
35	1	-35.11061000	-138.27669000	Clementine Bar	\N	f	f
36	2	-70.26554000	65.16984000	Amela Bar	\N	f	t
37	1	-7.92374000	56.20398000	Autumn Bar	\N	t	t
38	1	-55.80542000	143.75649000	Jamalia Bar	\N	f	t
39	1	73.55352000	148.26525000	Regan Bar	\N	t	t
40	2	-44.23063000	-14.17103000	Jocelyn Bar	\N	t	t
41	2	18.56766000	152.34446000	Kaitlin Bar	\N	f	f
42	2	-40.56344000	44.98152000	Yael Bar	\N	t	f
43	2	57.90920000	-21.00758000	Haley Bar	\N	t	t
44	2	61.59272000	-53.11027000	Maya Bar	\N	f	t
45	2	84.49279000	100.18174000	Hyacinth Bar	\N	f	t
46	2	-46.81956000	-51.62415000	Danielle Bar	\N	t	f
47	1	-43.26114000	-167.68746000	Cameran Bar	\N	t	f
48	2	-83.14579000	-171.99439000	Nevada Bar	\N	t	t
49	1	29.08150000	75.45751000	Yen Bar	\N	t	t
50	2	-10.89986000	-157.89230000	Bethany Bar	\N	t	t
51	1	84.14065000	-49.13791000	Adara Bar	\N	t	t
52	2	17.76197000	-154.53713000	Rosalyn Bar	\N	t	t
53	1	47.04137000	-85.22152000	Whilemina Bar	\N	t	t
54	2	-79.85098000	144.74287000	Idona Bar	\N	f	t
55	1	-68.46136000	81.30273000	Lynn Bar	\N	f	f
56	2	24.22927000	-137.97271000	Katell Bar	\N	f	t
57	2	32.14258000	-118.29114000	Ingrid Bar	\N	f	f
58	2	3.36542000	76.68553000	Emily Bar	\N	f	f
59	2	47.89269000	-28.08727000	Inez Bar	\N	f	f
60	1	-80.81782000	-61.41124000	Clio Bar	\N	f	f
61	1	18.21584000	103.01826000	Lucy Bar	\N	f	t
62	1	60.75553000	-142.91271000	Breanna Bar	\N	t	f
63	1	61.05385000	-174.55932000	Kai Bar	\N	t	f
64	1	-64.72290000	-173.80689000	Nadine Bar	\N	t	f
65	1	-21.33120000	170.95442000	Simone Bar	\N	t	t
66	2	-16.45746000	-87.18597000	Iliana Bar	\N	f	t
67	1	-55.39318000	84.70131000	Rose Bar	\N	t	t
68	1	21.20119000	-67.54043000	Nicole Bar	\N	f	t
69	1	14.23169000	-149.98486000	Cora Bar	\N	t	t
70	2	-68.49219000	-118.97419000	Hadley Bar	\N	f	t
71	1	28.26875000	-11.09859000	Olivia Bar	\N	t	t
72	2	-70.21436000	86.73051000	Sheila Bar	\N	t	f
73	2	59.09761000	167.51267000	Aurora Bar	\N	f	t
74	2	-45.62213000	-54.58032000	Remedios Bar	\N	t	f
75	1	-72.44264000	21.21769000	Hollee Bar	\N	t	t
76	1	-31.01709000	104.95399000	Vivian Bar	\N	t	f
77	2	59.31586000	165.98138000	Jacqueline Bar	\N	t	f
78	1	-1.02399000	-175.26638000	Lareina Bar	\N	f	f
79	1	2.61998000	-30.45494000	Dai Bar	\N	f	f
80	1	-9.47964000	10.48794000	Pamela Bar	\N	t	f
81	1	-73.61315000	57.03587000	Rowan Bar	\N	t	t
82	1	-31.15831000	19.12928000	Amena Bar	\N	t	f
83	2	-60.15713000	-22.55828000	Cailin Bar	\N	t	f
84	2	56.52401000	-61.07891000	Kiara Bar	\N	f	f
85	1	61.11307000	-2.42566000	Signe Bar	\N	f	f
86	2	12.20487000	-36.73446000	Nora Bar	\N	f	f
87	1	85.49985000	21.35777000	Constance Bar	\N	t	t
88	1	-20.81514000	13.53750000	Allegra Bar	\N	t	t
89	1	-72.73814000	-0.25935000	Sage Bar	\N	f	f
90	2	26.31716000	50.14016000	Jenette Bar	\N	f	f
91	1	33.57253000	-29.43367000	Lucy Bar	\N	f	t
92	1	69.79184000	-148.89942000	Winifred Bar	\N	f	t
93	1	-78.18293000	-72.94229000	Lunea Bar	\N	f	t
94	2	-73.93979000	-60.72886000	Cleo Bar	\N	f	f
95	1	70.61894000	37.35886000	Jessamine Bar	\N	t	t
96	1	-48.98483000	30.36589000	Odette Bar	\N	t	t
97	2	-32.54005000	-162.11165000	Wyoming Bar	\N	t	t
98	1	60.64686000	18.69458000	Colette Bar	\N	f	f
99	2	-83.50222000	105.03582000	Mia Bar	\N	t	f
100	2	61.42775000	-10.26472000	Dakota Bar	\N	t	t
\.


--
-- TOC entry 2023 (class 0 OID 0)
-- Dependencies: 173
-- Name: pontos_codponto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pontos_codponto_seq', 1, false);


--
-- TOC entry 2000 (class 0 OID 41311)
-- Dependencies: 175
-- Data for Name: pontos_estab; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pontos_estab (estabelecimentos_cnpjcpf, pontos_tpusuarios_codtpusuarios, pontos_codponto, datahora) FROM stdin;
\.


--
-- TOC entry 2001 (class 0 OID 41316)
-- Dependencies: 176
-- Data for Name: pontos_reclam; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pontos_reclam (pontos_tpusuarios_codtpusuarios, pontos_codponto, status_reclamacao_codreclam, estabelecimentos_cnpjcpf, admin_codadmin) FROM stdin;
\.


--
-- TOC entry 2002 (class 0 OID 41321)
-- Dependencies: 177
-- Data for Name: pontos_usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pontos_usuarios (pontos_tpusuarios_codtpusuarios, pontos_codponto, usuarios_codusuarios, datahora) FROM stdin;
\.


--
-- TOC entry 2004 (class 0 OID 41328)
-- Dependencies: 179
-- Data for Name: status_reclamacao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY status_reclamacao (codreclam, statusreclam) FROM stdin;
\.


--
-- TOC entry 2024 (class 0 OID 0)
-- Dependencies: 178
-- Name: status_reclamacao_codreclam_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('status_reclamacao_codreclam_seq', 1, false);


--
-- TOC entry 2006 (class 0 OID 41336)
-- Dependencies: 181
-- Data for Name: tpusuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tpusuarios (codtpusuarios, descricao) FROM stdin;
1	Usuario
2	Estabelecimento
\.


--
-- TOC entry 2025 (class 0 OID 0)
-- Dependencies: 180
-- Name: tpusuarios_codtpusuarios_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tpusuarios_codtpusuarios_seq', 1, false);


--
-- TOC entry 2008 (class 0 OID 41344)
-- Dependencies: 183
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY usuarios (codusuarios, datahora) FROM stdin;
\.


--
-- TOC entry 2026 (class 0 OID 0)
-- Dependencies: 182
-- Name: usuarios_codusuarios_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuarios_codusuarios_seq', 1, false);


--
-- TOC entry 1871 (class 2606 OID 41297)
-- Name: admin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (codadmin);


--
-- TOC entry 1873 (class 2606 OID 49357)
-- Name: estabelecimentos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY estabelecimentos
    ADD CONSTRAINT estabelecimentos_pkey PRIMARY KEY (cnpjcpf);


--
-- TOC entry 1877 (class 2606 OID 41315)
-- Name: pontos_estab_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pontos_estab
    ADD CONSTRAINT pontos_estab_pkey PRIMARY KEY (estabelecimentos_cnpjcpf, pontos_tpusuarios_codtpusuarios, pontos_codponto);


--
-- TOC entry 1875 (class 2606 OID 41310)
-- Name: pontos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pontos
    ADD CONSTRAINT pontos_pkey PRIMARY KEY (codponto, codtpusuarios);


--
-- TOC entry 1879 (class 2606 OID 41320)
-- Name: pontos_reclam_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pontos_reclam
    ADD CONSTRAINT pontos_reclam_pkey PRIMARY KEY (pontos_tpusuarios_codtpusuarios, pontos_codponto, status_reclamacao_codreclam, estabelecimentos_cnpjcpf, admin_codadmin);


--
-- TOC entry 1881 (class 2606 OID 41325)
-- Name: pontos_usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pontos_usuarios
    ADD CONSTRAINT pontos_usuarios_pkey PRIMARY KEY (pontos_tpusuarios_codtpusuarios, pontos_codponto, usuarios_codusuarios);


--
-- TOC entry 1883 (class 2606 OID 41333)
-- Name: status_reclamacao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY status_reclamacao
    ADD CONSTRAINT status_reclamacao_pkey PRIMARY KEY (codreclam);


--
-- TOC entry 1885 (class 2606 OID 41341)
-- Name: tpusuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tpusuarios
    ADD CONSTRAINT tpusuarios_pkey PRIMARY KEY (codtpusuarios);


--
-- TOC entry 1887 (class 2606 OID 41349)
-- Name: usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (codusuarios);


--
-- TOC entry 2015 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2014-11-06 20:01:06

--
-- PostgreSQL database dump complete
--

