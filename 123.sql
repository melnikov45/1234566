PGDMP     6    *            
    |            organaizer12    9.6.23    13.1 �    	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            	           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            	           1262    98497    organaizer12    DATABASE     a   CREATE DATABASE organaizer12 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'ru_RU.UTF-8';
    DROP DATABASE organaizer12;
                postgres    false            	           0    0    DATABASE organaizer12    COMMENT     3   COMMENT ON DATABASE organaizer12 IS 'БД АКС';
                   postgres    false    2333            �            1259    98498    academicdegree    TABLE     ~   CREATE TABLE public.academicdegree (
    agid bigint NOT NULL,
    name character varying,
    shortname character varying
);
 "   DROP TABLE public.academicdegree;
       public            postgres    false            	           0    0    TABLE academicdegree    COMMENT     X   COMMENT ON TABLE public.academicdegree IS 'таблица научных званий';
          public          postgres    false    185            �            1259    98504    academicdegree_agid_seq    SEQUENCE     �   CREATE SEQUENCE public.academicdegree_agid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.academicdegree_agid_seq;
       public          postgres    false    185             	           0    0    academicdegree_agid_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.academicdegree_agid_seq OWNED BY public.academicdegree.agid;
          public          postgres    false    186            �            1259    98506    cathedra_personnel    TABLE     �   CREATE TABLE public.cathedra_personnel (
    cpid bigint NOT NULL,
    cid integer NOT NULL,
    positionid integer,
    mid integer NOT NULL,
    orderid integer,
    military_rank integer NOT NULL,
    id_pmk integer,
    chear_man boolean
);
 &   DROP TABLE public.cathedra_personnel;
       public            postgres    false            !	           0    0    TABLE cathedra_personnel    COMMENT     �   COMMENT ON TABLE public.cathedra_personnel IS 'таблица завязки людей, кафедр, званий, председатель пмк';
          public          postgres    false    187            �            1259    98509    cathedra_personnel_cpid_seq    SEQUENCE     �   CREATE SEQUENCE public.cathedra_personnel_cpid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.cathedra_personnel_cpid_seq;
       public          postgres    false    187            "	           0    0    cathedra_personnel_cpid_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.cathedra_personnel_cpid_seq OWNED BY public.cathedra_personnel.cpid;
          public          postgres    false    188            �            1259    98511 	   cathedras    TABLE     �   CREATE TABLE public.cathedras (
    idcathedra bigint NOT NULL,
    cathedra character varying,
    chief integer,
    shortname character varying,
    staffnum integer
);
    DROP TABLE public.cathedras;
       public            postgres    false            #	           0    0    TABLE cathedras    COMMENT     D   COMMENT ON TABLE public.cathedras IS 'Таблица кафедр';
          public          postgres    false    189            $	           0    0    COLUMN cathedras.idcathedra    COMMENT     @   COMMENT ON COLUMN public.cathedras.idcathedra IS 'id ключ';
          public          postgres    false    189            %	           0    0    COLUMN cathedras.cathedra    COMMENT     _   COMMENT ON COLUMN public.cathedras.cathedra IS 'название полное кафедры';
          public          postgres    false    189            &	           0    0    COLUMN cathedras.chief    COMMENT     V   COMMENT ON COLUMN public.cathedras.chief IS 'id начальника кафедры';
          public          postgres    false    189            '	           0    0    COLUMN cathedras.shortname    COMMENT     j   COMMENT ON COLUMN public.cathedras.shortname IS 'сокращенное название кафедры';
          public          postgres    false    189            (	           0    0    COLUMN cathedras.staffnum    COMMENT     T   COMMENT ON COLUMN public.cathedras.staffnum IS 'метка сотрудников';
          public          postgres    false    189            �            1259    98517    cathedras_idcathedra_seq    SEQUENCE     �   CREATE SEQUENCE public.cathedras_idcathedra_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.cathedras_idcathedra_seq;
       public          postgres    false    189            )	           0    0    cathedras_idcathedra_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.cathedras_idcathedra_seq OWNED BY public.cathedras.idcathedra;
          public          postgres    false    190            �            1259    98519    courses    TABLE     �   CREATE TABLE public.courses (
    cid bigint NOT NULL,
    title character varying,
    alias character varying,
    meta_course integer
);
    DROP TABLE public.courses;
       public            postgres    false            *	           0    0    TABLE courses    COMMENT     J   COMMENT ON TABLE public.courses IS 'Таблица дисциплины';
          public          postgres    false    191            �            1259    98525    courses_cid_seq    SEQUENCE     x   CREATE SEQUENCE public.courses_cid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.courses_cid_seq;
       public          postgres    false    191            +	           0    0    courses_cid_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.courses_cid_seq OWNED BY public.courses.cid;
          public          postgres    false    192            �            1259    98527 
   eventtools    TABLE     |   CREATE TABLE public.eventtools (
    typeid bigint NOT NULL,
    typename character varying,
    alias character varying
);
    DROP TABLE public.eventtools;
       public            postgres    false            ,	           0    0    TABLE eventtools    COMMENT     A   COMMENT ON TABLE public.eventtools IS 'Типы занятий';
          public          postgres    false    193            �            1259    98533    eventtools_tipyid_seq    SEQUENCE     ~   CREATE SEQUENCE public.eventtools_tipyid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.eventtools_tipyid_seq;
       public          postgres    false    193            -	           0    0    eventtools_tipyid_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.eventtools_tipyid_seq OWNED BY public.eventtools.typeid;
          public          postgres    false    194            �            1259    98535    fuculty    TABLE     �   CREATE TABLE public.fuculty (
    idfaculty bigint NOT NULL,
    faculty character varying,
    "shortName" character varying
);
    DROP TABLE public.fuculty;
       public            postgres    false            .	           0    0    TABLE fuculty    COMMENT     ]   COMMENT ON TABLE public.fuculty IS 'таблица названий факультетов';
          public          postgres    false    195            �            1259    98541    fuculty_idfaculty_seq    SEQUENCE     ~   CREATE SEQUENCE public.fuculty_idfaculty_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.fuculty_idfaculty_seq;
       public          postgres    false    195            /	           0    0    fuculty_idfaculty_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.fuculty_idfaculty_seq OWNED BY public.fuculty.idfaculty;
          public          postgres    false    196            �            1259    98543 	   groupname    TABLE     �   CREATE TABLE public.groupname (
    gid bigint NOT NULL,
    name character varying,
    idcathedra integer,
    idfaculty integer
);
    DROP TABLE public.groupname;
       public            postgres    false            0	           0    0    TABLE groupname    COMMENT     �   COMMENT ON TABLE public.groupname IS 'Таблица учебных групп (с привязкой к факультету и кафедрам)';
          public          postgres    false    197            �            1259    98549    groupname_gid_seq    SEQUENCE     z   CREATE SEQUENCE public.groupname_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.groupname_gid_seq;
       public          postgres    false    197            1	           0    0    groupname_gid_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.groupname_gid_seq OWNED BY public.groupname.gid;
          public          postgres    false    198            �            1259    98551    military_rank    TABLE     �   CREATE TABLE public.military_rank (
    id_mil_rank bigint NOT NULL,
    title character varying,
    short_title character varying,
    lavel integer
);
 !   DROP TABLE public.military_rank;
       public            postgres    false            2	           0    0    TABLE military_rank    COMMENT     Y   COMMENT ON TABLE public.military_rank IS 'таблица воинских званий';
          public          postgres    false    199            �            1259    98557    military_rank_id_mil_rank_seq    SEQUENCE     �   CREATE SEQUENCE public.military_rank_id_mil_rank_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.military_rank_id_mil_rank_seq;
       public          postgres    false    199            3	           0    0    military_rank_id_mil_rank_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.military_rank_id_mil_rank_seq OWNED BY public.military_rank.id_mil_rank;
          public          postgres    false    200            �            1259    98559    nnz_schedule    TABLE       CREATE TABLE public.nnz_schedule (
    sheid bigint NOT NULL,
    cid integer,
    rid integer[],
    gid integer,
    teacher_mid integer[],
    sh_var_id integer,
    period integer,
    day_of_week integer,
    pair_type_id integer,
    idcathedra integer
);
     DROP TABLE public.nnz_schedule;
       public            postgres    false            4	           0    0    TABLE nnz_schedule    COMMENT     �   COMMENT ON TABLE public.nnz_schedule IS 'Таблица расписания. завязывает в себе дисциплину, аудиторию, группу, преподавателя, тип занятия. Особенность дата.';
          public          postgres    false    201            �            1259    98565    nnz_schedule_sheid_seq    SEQUENCE        CREATE SEQUENCE public.nnz_schedule_sheid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.nnz_schedule_sheid_seq;
       public          postgres    false    201            5	           0    0    nnz_schedule_sheid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.nnz_schedule_sheid_seq OWNED BY public.nnz_schedule.sheid;
          public          postgres    false    202            �            1259    98567    nnz_schedule_variants    TABLE     �   CREATE TABLE public.nnz_schedule_variants (
    sh_var_id bigint NOT NULL,
    sh_var_name character varying,
    s_year_id integer,
    sh_var_comments character varying
);
 )   DROP TABLE public.nnz_schedule_variants;
       public            postgres    false            6	           0    0    TABLE nnz_schedule_variants    COMMENT     �   COMMENT ON TABLE public.nnz_schedule_variants IS 'Таблица неделя + год. Связь с таблицей studyyears через таблицу school_year';
          public          postgres    false    203            �            1259    98573 #   nnz_schedule_variants_sh_var_id_seq    SEQUENCE     �   CREATE SEQUENCE public.nnz_schedule_variants_sh_var_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.nnz_schedule_variants_sh_var_id_seq;
       public          postgres    false    203            7	           0    0 #   nnz_schedule_variants_sh_var_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.nnz_schedule_variants_sh_var_id_seq OWNED BY public.nnz_schedule_variants.sh_var_id;
          public          postgres    false    204            �            1259    98575    people    TABLE     �   CREATE TABLE public.people (
    mid bigint NOT NULL,
    lastname character varying,
    firstname character varying,
    patronymic character varying,
    degree integer
);
    DROP TABLE public.people;
       public            postgres    false            8	           0    0    TABLE people    COMMENT     R   COMMENT ON TABLE public.people IS 'Таблица преподавателей ';
          public          postgres    false    205            9	           0    0    COLUMN people.mid    COMMENT     -   COMMENT ON COLUMN public.people.mid IS 'id';
          public          postgres    false    205            :	           0    0    COLUMN people.lastname    COMMENT     >   COMMENT ON COLUMN public.people.lastname IS 'Фамилия';
          public          postgres    false    205            ;	           0    0    COLUMN people.firstname    COMMENT     7   COMMENT ON COLUMN public.people.firstname IS 'Имя';
          public          postgres    false    205            <	           0    0    COLUMN people.patronymic    COMMENT     B   COMMENT ON COLUMN public.people.patronymic IS 'отчество';
          public          postgres    false    205            =	           0    0    COLUMN people.degree    COMMENT     G   COMMENT ON COLUMN public.people.degree IS 'ученое звание';
          public          postgres    false    205            �            1259    98581    people_mid_seq    SEQUENCE     w   CREATE SEQUENCE public.people_mid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.people_mid_seq;
       public          postgres    false    205            >	           0    0    people_mid_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.people_mid_seq OWNED BY public.people.mid;
          public          postgres    false    206            �            1259    98583    periods    TABLE     �   CREATE TABLE public.periods (
    lid bigint NOT NULL,
    starttime integer,
    stoptime integer,
    name character varying,
    short_time character varying,
    s_year_id integer
);
    DROP TABLE public.periods;
       public            postgres    false            ?	           0    0    TABLE periods    COMMENT     O   COMMENT ON TABLE public.periods IS 'Таблица часов занятий';
          public          postgres    false    207            �            1259    98589    periods_lid_seq    SEQUENCE     x   CREATE SEQUENCE public.periods_lid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.periods_lid_seq;
       public          postgres    false    207            @	           0    0    periods_lid_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.periods_lid_seq OWNED BY public.periods.lid;
          public          postgres    false    208            �            1259    98591    pmk    TABLE     ~   CREATE TABLE public.pmk (
    id_pmk bigint NOT NULL,
    name_pmk character varying,
    short_name_pmk character varying
);
    DROP TABLE public.pmk;
       public            postgres    false            A	           0    0 	   TABLE pmk    COMMENT     J   COMMENT ON TABLE public.pmk IS 'таблица с ПМК кафедры';
          public          postgres    false    209            �            1259    98597    pmk_id_pmk_seq    SEQUENCE     w   CREATE SEQUENCE public.pmk_id_pmk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.pmk_id_pmk_seq;
       public          postgres    false    209            B	           0    0    pmk_id_pmk_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.pmk_id_pmk_seq OWNED BY public.pmk.id_pmk;
          public          postgres    false    210            �            1259    98599    rooms    TABLE     u   CREATE TABLE public.rooms (
    rid bigint NOT NULL,
    name character varying,
    short_name character varying
);
    DROP TABLE public.rooms;
       public            postgres    false            C	           0    0    TABLE rooms    COMMENT     F   COMMENT ON TABLE public.rooms IS 'Таблица кабинетов';
          public          postgres    false    211            �            1259    98605    rooms_rid_seq    SEQUENCE     v   CREATE SEQUENCE public.rooms_rid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.rooms_rid_seq;
       public          postgres    false    211            D	           0    0    rooms_rid_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.rooms_rid_seq OWNED BY public.rooms.rid;
          public          postgres    false    212            �            1259    98607 
   studyyears    TABLE     �   CREATE TABLE public.studyyears (
    syid integer NOT NULL,
    number character varying,
    name character varying,
    school_year integer
);
    DROP TABLE public.studyyears;
       public            postgres    false            E	           0    0    TABLE studyyears    COMMENT     A   COMMENT ON TABLE public.studyyears IS 'Таблица года';
          public          postgres    false    213            L           2604    98613    academicdegree agid    DEFAULT     z   ALTER TABLE ONLY public.academicdegree ALTER COLUMN agid SET DEFAULT nextval('public.academicdegree_agid_seq'::regclass);
 B   ALTER TABLE public.academicdegree ALTER COLUMN agid DROP DEFAULT;
       public          postgres    false    186    185            M           2604    98614    cathedra_personnel cpid    DEFAULT     �   ALTER TABLE ONLY public.cathedra_personnel ALTER COLUMN cpid SET DEFAULT nextval('public.cathedra_personnel_cpid_seq'::regclass);
 F   ALTER TABLE public.cathedra_personnel ALTER COLUMN cpid DROP DEFAULT;
       public          postgres    false    188    187            N           2604    98615    cathedras idcathedra    DEFAULT     |   ALTER TABLE ONLY public.cathedras ALTER COLUMN idcathedra SET DEFAULT nextval('public.cathedras_idcathedra_seq'::regclass);
 C   ALTER TABLE public.cathedras ALTER COLUMN idcathedra DROP DEFAULT;
       public          postgres    false    190    189            O           2604    98616    courses cid    DEFAULT     j   ALTER TABLE ONLY public.courses ALTER COLUMN cid SET DEFAULT nextval('public.courses_cid_seq'::regclass);
 :   ALTER TABLE public.courses ALTER COLUMN cid DROP DEFAULT;
       public          postgres    false    192    191            P           2604    98617    eventtools typeid    DEFAULT     v   ALTER TABLE ONLY public.eventtools ALTER COLUMN typeid SET DEFAULT nextval('public.eventtools_tipyid_seq'::regclass);
 @   ALTER TABLE public.eventtools ALTER COLUMN typeid DROP DEFAULT;
       public          postgres    false    194    193            Q           2604    98618    fuculty idfaculty    DEFAULT     v   ALTER TABLE ONLY public.fuculty ALTER COLUMN idfaculty SET DEFAULT nextval('public.fuculty_idfaculty_seq'::regclass);
 @   ALTER TABLE public.fuculty ALTER COLUMN idfaculty DROP DEFAULT;
       public          postgres    false    196    195            R           2604    98619    groupname gid    DEFAULT     n   ALTER TABLE ONLY public.groupname ALTER COLUMN gid SET DEFAULT nextval('public.groupname_gid_seq'::regclass);
 <   ALTER TABLE public.groupname ALTER COLUMN gid DROP DEFAULT;
       public          postgres    false    198    197            S           2604    98620    military_rank id_mil_rank    DEFAULT     �   ALTER TABLE ONLY public.military_rank ALTER COLUMN id_mil_rank SET DEFAULT nextval('public.military_rank_id_mil_rank_seq'::regclass);
 H   ALTER TABLE public.military_rank ALTER COLUMN id_mil_rank DROP DEFAULT;
       public          postgres    false    200    199            T           2604    98621    nnz_schedule sheid    DEFAULT     x   ALTER TABLE ONLY public.nnz_schedule ALTER COLUMN sheid SET DEFAULT nextval('public.nnz_schedule_sheid_seq'::regclass);
 A   ALTER TABLE public.nnz_schedule ALTER COLUMN sheid DROP DEFAULT;
       public          postgres    false    202    201            U           2604    98622    nnz_schedule_variants sh_var_id    DEFAULT     �   ALTER TABLE ONLY public.nnz_schedule_variants ALTER COLUMN sh_var_id SET DEFAULT nextval('public.nnz_schedule_variants_sh_var_id_seq'::regclass);
 N   ALTER TABLE public.nnz_schedule_variants ALTER COLUMN sh_var_id DROP DEFAULT;
       public          postgres    false    204    203            V           2604    98623 
   people mid    DEFAULT     h   ALTER TABLE ONLY public.people ALTER COLUMN mid SET DEFAULT nextval('public.people_mid_seq'::regclass);
 9   ALTER TABLE public.people ALTER COLUMN mid DROP DEFAULT;
       public          postgres    false    206    205            W           2604    98624    periods lid    DEFAULT     j   ALTER TABLE ONLY public.periods ALTER COLUMN lid SET DEFAULT nextval('public.periods_lid_seq'::regclass);
 :   ALTER TABLE public.periods ALTER COLUMN lid DROP DEFAULT;
       public          postgres    false    208    207            X           2604    98625 
   pmk id_pmk    DEFAULT     h   ALTER TABLE ONLY public.pmk ALTER COLUMN id_pmk SET DEFAULT nextval('public.pmk_id_pmk_seq'::regclass);
 9   ALTER TABLE public.pmk ALTER COLUMN id_pmk DROP DEFAULT;
       public          postgres    false    210    209            Y           2604    98626 	   rooms rid    DEFAULT     f   ALTER TABLE ONLY public.rooms ALTER COLUMN rid SET DEFAULT nextval('public.rooms_rid_seq'::regclass);
 8   ALTER TABLE public.rooms ALTER COLUMN rid DROP DEFAULT;
       public          postgres    false    212    211            �          0    98498    academicdegree 
   TABLE DATA           ?   COPY public.academicdegree (agid, name, shortname) FROM stdin;
    public          postgres    false    185   @�       �          0    98506    cathedra_personnel 
   TABLE DATA           s   COPY public.cathedra_personnel (cpid, cid, positionid, mid, orderid, military_rank, id_pmk, chear_man) FROM stdin;
    public          postgres    false    187   ��       �          0    98511 	   cathedras 
   TABLE DATA           U   COPY public.cathedras (idcathedra, cathedra, chief, shortname, staffnum) FROM stdin;
    public          postgres    false    189   &�       	          0    98519    courses 
   TABLE DATA           A   COPY public.courses (cid, title, alias, meta_course) FROM stdin;
    public          postgres    false    191   ��       	          0    98527 
   eventtools 
   TABLE DATA           =   COPY public.eventtools (typeid, typename, alias) FROM stdin;
    public          postgres    false    193   B�       	          0    98535    fuculty 
   TABLE DATA           B   COPY public.fuculty (idfaculty, faculty, "shortName") FROM stdin;
    public          postgres    false    195   ڤ       	          0    98543 	   groupname 
   TABLE DATA           E   COPY public.groupname (gid, name, idcathedra, idfaculty) FROM stdin;
    public          postgres    false    197   �       		          0    98551    military_rank 
   TABLE DATA           O   COPY public.military_rank (id_mil_rank, title, short_title, lavel) FROM stdin;
    public          postgres    false    199   ٥       	          0    98559    nnz_schedule 
   TABLE DATA           �   COPY public.nnz_schedule (sheid, cid, rid, gid, teacher_mid, sh_var_id, period, day_of_week, pair_type_id, idcathedra) FROM stdin;
    public          postgres    false    201   V�       	          0    98567    nnz_schedule_variants 
   TABLE DATA           c   COPY public.nnz_schedule_variants (sh_var_id, sh_var_name, s_year_id, sh_var_comments) FROM stdin;
    public          postgres    false    203   �       	          0    98575    people 
   TABLE DATA           N   COPY public.people (mid, lastname, firstname, patronymic, degree) FROM stdin;
    public          postgres    false    205   ��       	          0    98583    periods 
   TABLE DATA           X   COPY public.periods (lid, starttime, stoptime, name, short_time, s_year_id) FROM stdin;
    public          postgres    false    207   8�       	          0    98591    pmk 
   TABLE DATA           ?   COPY public.pmk (id_pmk, name_pmk, short_name_pmk) FROM stdin;
    public          postgres    false    209   ��       	          0    98599    rooms 
   TABLE DATA           6   COPY public.rooms (rid, name, short_name) FROM stdin;
    public          postgres    false    211   ݩ       	          0    98607 
   studyyears 
   TABLE DATA           E   COPY public.studyyears (syid, number, name, school_year) FROM stdin;
    public          postgres    false    213   F�       F	           0    0    academicdegree_agid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.academicdegree_agid_seq', 3, true);
          public          postgres    false    186            G	           0    0    cathedra_personnel_cpid_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.cathedra_personnel_cpid_seq', 14, true);
          public          postgres    false    188            H	           0    0    cathedras_idcathedra_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.cathedras_idcathedra_seq', 4, true);
          public          postgres    false    190            I	           0    0    courses_cid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.courses_cid_seq', 10, true);
          public          postgres    false    192            J	           0    0    eventtools_tipyid_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.eventtools_tipyid_seq', 5, true);
          public          postgres    false    194            K	           0    0    fuculty_idfaculty_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.fuculty_idfaculty_seq', 3, true);
          public          postgres    false    196            L	           0    0    groupname_gid_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.groupname_gid_seq', 8, true);
          public          postgres    false    198            M	           0    0    military_rank_id_mil_rank_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.military_rank_id_mil_rank_seq', 2, true);
          public          postgres    false    200            N	           0    0    nnz_schedule_sheid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.nnz_schedule_sheid_seq', 15, true);
          public          postgres    false    202            O	           0    0 #   nnz_schedule_variants_sh_var_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.nnz_schedule_variants_sh_var_id_seq', 14, true);
          public          postgres    false    204            P	           0    0    people_mid_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.people_mid_seq', 19, true);
          public          postgres    false    206            Q	           0    0    periods_lid_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.periods_lid_seq', 2, true);
          public          postgres    false    208            R	           0    0    pmk_id_pmk_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.pmk_id_pmk_seq', 3, true);
          public          postgres    false    210            S	           0    0    rooms_rid_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.rooms_rid_seq', 12, true);
          public          postgres    false    212            [           2606    98628 "   academicdegree academicdegree_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.academicdegree
    ADD CONSTRAINT academicdegree_pkey PRIMARY KEY (agid);
 L   ALTER TABLE ONLY public.academicdegree DROP CONSTRAINT academicdegree_pkey;
       public            postgres    false    185            ]           2606    98630 *   cathedra_personnel cathedra_personnel_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.cathedra_personnel
    ADD CONSTRAINT cathedra_personnel_pkey PRIMARY KEY (cpid);
 T   ALTER TABLE ONLY public.cathedra_personnel DROP CONSTRAINT cathedra_personnel_pkey;
       public            postgres    false    187            _           2606    98632    cathedras cathedras_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.cathedras
    ADD CONSTRAINT cathedras_pkey PRIMARY KEY (idcathedra);
 B   ALTER TABLE ONLY public.cathedras DROP CONSTRAINT cathedras_pkey;
       public            postgres    false    189            a           2606    98634    courses courses_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (cid);
 >   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_pkey;
       public            postgres    false    191            c           2606    98636    eventtools eventtools_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.eventtools
    ADD CONSTRAINT eventtools_pkey PRIMARY KEY (typeid);
 D   ALTER TABLE ONLY public.eventtools DROP CONSTRAINT eventtools_pkey;
       public            postgres    false    193            e           2606    98638    fuculty fuculty_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.fuculty
    ADD CONSTRAINT fuculty_pkey PRIMARY KEY (idfaculty);
 >   ALTER TABLE ONLY public.fuculty DROP CONSTRAINT fuculty_pkey;
       public            postgres    false    195            g           2606    98640    groupname groupname_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.groupname
    ADD CONSTRAINT groupname_pkey PRIMARY KEY (gid);
 B   ALTER TABLE ONLY public.groupname DROP CONSTRAINT groupname_pkey;
       public            postgres    false    197            i           2606    98642     military_rank military_rank_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.military_rank
    ADD CONSTRAINT military_rank_pkey PRIMARY KEY (id_mil_rank);
 J   ALTER TABLE ONLY public.military_rank DROP CONSTRAINT military_rank_pkey;
       public            postgres    false    199            k           2606    98644    nnz_schedule nnz_schedule_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.nnz_schedule
    ADD CONSTRAINT nnz_schedule_pkey PRIMARY KEY (sheid);
 H   ALTER TABLE ONLY public.nnz_schedule DROP CONSTRAINT nnz_schedule_pkey;
       public            postgres    false    201            m           2606    98646 1   nnz_schedule_variants nnz_schedule_variants_pkey2 
   CONSTRAINT     v   ALTER TABLE ONLY public.nnz_schedule_variants
    ADD CONSTRAINT nnz_schedule_variants_pkey2 PRIMARY KEY (sh_var_id);
 [   ALTER TABLE ONLY public.nnz_schedule_variants DROP CONSTRAINT nnz_schedule_variants_pkey2;
       public            postgres    false    203            o           2606    98648    people people_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_pkey PRIMARY KEY (mid);
 <   ALTER TABLE ONLY public.people DROP CONSTRAINT people_pkey;
       public            postgres    false    205            q           2606    98650    periods periods_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.periods
    ADD CONSTRAINT periods_pkey PRIMARY KEY (lid);
 >   ALTER TABLE ONLY public.periods DROP CONSTRAINT periods_pkey;
       public            postgres    false    207            s           2606    98652    pmk pmk_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.pmk
    ADD CONSTRAINT pmk_pkey PRIMARY KEY (id_pmk);
 6   ALTER TABLE ONLY public.pmk DROP CONSTRAINT pmk_pkey;
       public            postgres    false    209            u           2606    98654    rooms rooms_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_pkey PRIMARY KEY (rid);
 :   ALTER TABLE ONLY public.rooms DROP CONSTRAINT rooms_pkey;
       public            postgres    false    211            w           2606    98656    studyyears studyyears_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.studyyears
    ADD CONSTRAINT studyyears_pkey PRIMARY KEY (syid);
 D   ALTER TABLE ONLY public.studyyears DROP CONSTRAINT studyyears_pkey;
       public            postgres    false    213            x           2606    98657 .   cathedra_personnel cathedra_personnel_cid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cathedra_personnel
    ADD CONSTRAINT cathedra_personnel_cid_fkey FOREIGN KEY (cid) REFERENCES public.cathedras(idcathedra) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 X   ALTER TABLE ONLY public.cathedra_personnel DROP CONSTRAINT cathedra_personnel_cid_fkey;
       public          postgres    false    189    187    2143            ~           2606    98662    nnz_schedule cid    FK CONSTRAINT     �   ALTER TABLE ONLY public.nnz_schedule
    ADD CONSTRAINT cid FOREIGN KEY (cid) REFERENCES public.courses(cid) ON UPDATE CASCADE ON DELETE CASCADE;
 :   ALTER TABLE ONLY public.nnz_schedule DROP CONSTRAINT cid;
       public          postgres    false    191    201    2145                       2606    98667    nnz_schedule gid    FK CONSTRAINT     �   ALTER TABLE ONLY public.nnz_schedule
    ADD CONSTRAINT gid FOREIGN KEY (gid) REFERENCES public.groupname(gid) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 :   ALTER TABLE ONLY public.nnz_schedule DROP CONSTRAINT gid;
       public          postgres    false    197    2151    201            y           2606    98672    cathedra_personnel id_mil_rank    FK CONSTRAINT     �   ALTER TABLE ONLY public.cathedra_personnel
    ADD CONSTRAINT id_mil_rank FOREIGN KEY (military_rank) REFERENCES public.military_rank(id_mil_rank) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 H   ALTER TABLE ONLY public.cathedra_personnel DROP CONSTRAINT id_mil_rank;
       public          postgres    false    2153    187    199            z           2606    98677    cathedra_personnel id_pmk    FK CONSTRAINT     �   ALTER TABLE ONLY public.cathedra_personnel
    ADD CONSTRAINT id_pmk FOREIGN KEY (id_pmk) REFERENCES public.pmk(id_pmk) NOT VALID;
 C   ALTER TABLE ONLY public.cathedra_personnel DROP CONSTRAINT id_pmk;
       public          postgres    false    2163    187    209            |           2606    98682    groupname idcathedra    FK CONSTRAINT     �   ALTER TABLE ONLY public.groupname
    ADD CONSTRAINT idcathedra FOREIGN KEY (idcathedra) REFERENCES public.cathedras(idcathedra) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 >   ALTER TABLE ONLY public.groupname DROP CONSTRAINT idcathedra;
       public          postgres    false    197    2143    189            �           2606    98723    nnz_schedule idcathedra    FK CONSTRAINT     �   ALTER TABLE ONLY public.nnz_schedule
    ADD CONSTRAINT idcathedra FOREIGN KEY (idcathedra) REFERENCES public.cathedras(idcathedra) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 A   ALTER TABLE ONLY public.nnz_schedule DROP CONSTRAINT idcathedra;
       public          postgres    false    189    2143    201            }           2606    98687    groupname idfaculty    FK CONSTRAINT     �   ALTER TABLE ONLY public.groupname
    ADD CONSTRAINT idfaculty FOREIGN KEY (idfaculty) REFERENCES public.fuculty(idfaculty) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 =   ALTER TABLE ONLY public.groupname DROP CONSTRAINT idfaculty;
       public          postgres    false    197    2149    195            {           2606    98692    cathedra_personnel mid    FK CONSTRAINT     �   ALTER TABLE ONLY public.cathedra_personnel
    ADD CONSTRAINT mid FOREIGN KEY (mid) REFERENCES public.people(mid) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 @   ALTER TABLE ONLY public.cathedra_personnel DROP CONSTRAINT mid;
       public          postgres    false    2159    187    205            �           2606    98697    nnz_schedule per_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.nnz_schedule
    ADD CONSTRAINT per_type_id FOREIGN KEY (pair_type_id) REFERENCES public.eventtools(typeid) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 B   ALTER TABLE ONLY public.nnz_schedule DROP CONSTRAINT per_type_id;
       public          postgres    false    201    193    2147            �           2606    98702    nnz_schedule period    FK CONSTRAINT     �   ALTER TABLE ONLY public.nnz_schedule
    ADD CONSTRAINT period FOREIGN KEY (period) REFERENCES public.periods(lid) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 =   ALTER TABLE ONLY public.nnz_schedule DROP CONSTRAINT period;
       public          postgres    false    201    207    2161            �           2606    98707    periods s_year_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.periods
    ADD CONSTRAINT s_year_id FOREIGN KEY (s_year_id) REFERENCES public.studyyears(syid) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 ;   ALTER TABLE ONLY public.periods DROP CONSTRAINT s_year_id;
       public          postgres    false    213    2167    207            �           2606    98712    nnz_schedule_variants s_year_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.nnz_schedule_variants
    ADD CONSTRAINT s_year_id FOREIGN KEY (s_year_id) REFERENCES public.studyyears(syid) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.nnz_schedule_variants DROP CONSTRAINT s_year_id;
       public          postgres    false    203    2167    213            �           2606    98717    nnz_schedule shedule_var_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.nnz_schedule
    ADD CONSTRAINT shedule_var_id FOREIGN KEY (sh_var_id) REFERENCES public.nnz_schedule_variants(sh_var_id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 E   ALTER TABLE ONLY public.nnz_schedule DROP CONSTRAINT shedule_var_id;
       public          postgres    false    2157    203    201            �   V   x�e��	�0C��):� ��2V��)�§�!��\�C ��-*�T�Č�"�<�v�%	T�[�&n<�B��kh	�f3{��H�      �   p   x�M���0�7e�g��oW���;�q	!�r�JB�2)�:c3�a��Ea�����-��Kn�5��Ҟ-ne[u�3`��qTߕ���ط!K姺T߽��yכ����4/      �   �   x�e�K�0D��9�U�4�P��r�)��(�
=7���2=3y�G8��-١��1����K֓��rB'F8ԑy�&�Re�fqr����k)%�Q2���#\�kQ4,�0��7�lb�$�&,{t��Vl�6h<�4��"�Y}�/�l�IgC���WN���vK�C4�O�����}3!~�RJ=u��@      	   <  x�}�KR�0D��)|����.&NY8�'łE
*�2��r����l�ؒ��zF���	�\���2A�J�G�/����t��Tu����R[S{���vte!�t��}pY}L�k��sTP�~�]M�m����a���5�"]�ز�6���2Q�֯<���o���o)b|j�2ke� <79��0��O���)Z� �+ߴVq�O�-����a@��e,3j�bǖ����:�V�ý,Bg̖8
��`�w�N�՝���������:��yd��t�@v*��T��(?�%^�ԩ��2���7i      	   �   x�m���@�v��$tC1� ��<y :8@VP I�X�Y��]{v+�x�#Vւ'�:������7L�J��W�,�Q�Ŝ��.�f��O����֌)8~�y��o���p��K-�Y����X#�DH	���� .p�      	   �   x�U�;�0Dk�)|$�:��OJJ"h�,+���fo�lD�����.H0�G��x!�:!���Aw^+����F6"���l�wY8ܘ4�z�\�D��([4-y�?����e�H9�����x{�R~�-�hp��!���|�ʆg      	   J   x�=���0Cѳ="NJ�]؆	��*�RO�"���J5iZtX6�Ig@�f�g���9!�ZKC	������      		   m   x�m���0�v/�g1T� �$@ha�+�島ǣ�x�4r5L�i-�\�9o��i[-�4��?b��@d�U����N�i��F����U֧���'�#e�C��/_vX�      	   �   x�]�Q� D�ǳ4����]�&ƻw���nL@y��(]�6�%�AY,�H2dte)�X/�/�	_p%�nc�6`���%����m��n�ʊ��j}h�29��EG���:���⏳�S:�^�m��:��vۻ�ww��5��'�t ƛB*      	   �   x�-��	 C����b�z�.���A*>�4h�}̻� G��˼�L
�i7�&ǌ>��h��')��/�Jj|�_�fEϣ�Mz+W��� �����q�vw-;	9�]$�=��ORbg��ݦfiˢ[��Q�'Ѭ/H�r�*?��d��rOb������y�6j      	   n  x��SKN�0];�A����a��	,��@)�c�LhT�4�
37⍝�?T)���>y3(z&�SNyB�
EwTQIK�����J�|�PRA�3���������j|��6u���7��TŲ��@�@G0��(�<|IN�� �B�D
p��tǝYP\T�?�f�.~��O��}�<�^�R�c%JVS�<��Soy��P
`%��t��V�N?b 6��f_�z Cr^�I��[J�Lf��B�KF�����f,�$�e�DO&�⇢k�m�o�Aı+P��ɥ�5q��=���C�<�Đ�L<�"�?��W8^x�?D7Ja4bwmא�=��s���q�k�f���4��$�i�`e      	   Z   x�]��� ߗ*l �h/c�B� �����lDv��Զ����V��G�Ppx��OaKf8H����)|��lQ�qɮ]D>LAM      	   +   x�3�0���.#��2�1.������� �&�      	   Y   x�5̻�0C�:�%+Ώ]����2I�}:.�0�qG�/R`d���V����[�(�H�:���6��%��)��(���%��$�Q$���!       	   1   x�3�42�42 \��F� �1�!�a
b�rs��@l3N�=... �W�     