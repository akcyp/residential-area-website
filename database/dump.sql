--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

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
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_permissions OWNER TO strapi;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_id_seq OWNER TO strapi;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_permissions_role_links (
    permission_id integer,
    role_id integer
);


ALTER TABLE public.admin_permissions_role_links OWNER TO strapi;

--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_roles OWNER TO strapi;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_roles_id_seq OWNER TO strapi;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_users OWNER TO strapi;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO strapi;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: admin_users_roles_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_users_roles_links (
    user_id integer,
    role_id integer
);


ALTER TABLE public.admin_users_roles_links OWNER TO strapi;

--
-- Name: apartaments; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.apartaments (
    id integer NOT NULL,
    name character varying(255),
    area numeric(10,2),
    price_per_square_meter numeric(10,2),
    type character varying(255),
    tier integer,
    status character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.apartaments OWNER TO strapi;

--
-- Name: apartaments_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.apartaments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.apartaments_id_seq OWNER TO strapi;

--
-- Name: apartaments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.apartaments_id_seq OWNED BY public.apartaments.id;


--
-- Name: components_common_cards; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_common_cards (
    id integer NOT NULL,
    heading character varying(255),
    content text,
    icon character varying(255)
);


ALTER TABLE public.components_common_cards OWNER TO strapi;

--
-- Name: components_common_cards_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_common_cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_common_cards_id_seq OWNER TO strapi;

--
-- Name: components_common_cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_common_cards_id_seq OWNED BY public.components_common_cards.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.files OWNER TO strapi;

--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_id_seq OWNER TO strapi;

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_morphs; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.files_related_morphs (
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" integer
);


ALTER TABLE public.files_related_morphs OWNER TO strapi;

--
-- Name: homepages; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.homepages (
    id integer NOT NULL,
    heading character varying(255),
    sub_heading character varying(255),
    content_title character varying(255),
    content text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.homepages OWNER TO strapi;

--
-- Name: homepages_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.homepages_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);


ALTER TABLE public.homepages_components OWNER TO strapi;

--
-- Name: homepages_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.homepages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.homepages_components_id_seq OWNER TO strapi;

--
-- Name: homepages_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.homepages_components_id_seq OWNED BY public.homepages_components.id;


--
-- Name: homepages_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.homepages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.homepages_id_seq OWNER TO strapi;

--
-- Name: homepages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.homepages_id_seq OWNED BY public.homepages.id;


--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.i18n_locale OWNER TO strapi;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i18n_locale_id_seq OWNER TO strapi;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: investments; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.investments (
    id integer NOT NULL,
    name character varying(255),
    short_description character varying(255),
    full_description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.investments OWNER TO strapi;

--
-- Name: investments_apartaments_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.investments_apartaments_links (
    investment_id integer,
    apartament_id integer
);


ALTER TABLE public.investments_apartaments_links OWNER TO strapi;

--
-- Name: investments_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.investments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.investments_id_seq OWNER TO strapi;

--
-- Name: investments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.investments_id_seq OWNED BY public.investments.id;


--
-- Name: storeys; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.storeys (
    id integer NOT NULL,
    tier integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.storeys OWNER TO strapi;

--
-- Name: storeys_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.storeys_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.storeys_id_seq OWNER TO strapi;

--
-- Name: storeys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.storeys_id_seq OWNED BY public.storeys.id;


--
-- Name: storeys_investment_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.storeys_investment_links (
    storey_id integer,
    investment_id integer
);


ALTER TABLE public.storeys_investment_links OWNER TO strapi;

--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_tokens OWNER TO strapi;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_tokens_id_seq OWNER TO strapi;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO strapi;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_core_store_settings_id_seq OWNER TO strapi;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO strapi;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_database_schema_id_seq OWNER TO strapi;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO strapi;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_migrations_id_seq OWNER TO strapi;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO strapi;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO strapi;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_permissions OWNER TO strapi;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_id_seq OWNER TO strapi;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_permissions_role_links (
    permission_id integer,
    role_id integer
);


ALTER TABLE public.up_permissions_role_links OWNER TO strapi;

--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_roles OWNER TO strapi;

--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_roles_id_seq OWNER TO strapi;

--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_users OWNER TO strapi;

--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_id_seq OWNER TO strapi;

--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_users_role_links (
    user_id integer,
    role_id integer
);


ALTER TABLE public.up_users_role_links OWNER TO strapi;

--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: apartaments id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.apartaments ALTER COLUMN id SET DEFAULT nextval('public.apartaments_id_seq'::regclass);


--
-- Name: components_common_cards id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_common_cards ALTER COLUMN id SET DEFAULT nextval('public.components_common_cards_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: homepages id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.homepages ALTER COLUMN id SET DEFAULT nextval('public.homepages_id_seq'::regclass);


--
-- Name: homepages_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.homepages_components ALTER COLUMN id SET DEFAULT nextval('public.homepages_components_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: investments id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.investments ALTER COLUMN id SET DEFAULT nextval('public.investments_id_seq'::regclass);


--
-- Name: storeys id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.storeys ALTER COLUMN id SET DEFAULT nextval('public.storeys_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_permissions (id, action, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::content-manager.explorer.create	api::apartament.apartament	{"fields": ["name", "area", "pricePerSquareMeter", "type", "tier", "polygonMask", "status"]}	[]	2022-01-03 13:24:17.821	2022-01-03 13:24:17.821	\N	\N
2	plugin::content-manager.explorer.create	api::homepage.homepage	{"fields": ["heading", "subHeading", "contentTitle", "content", "Cards.heading", "Cards.content", "Cards.icon", "parallax"]}	[]	2022-01-03 13:24:17.829	2022-01-03 13:24:17.829	\N	\N
3	plugin::content-manager.explorer.create	api::investment.investment	{"fields": ["name", "thumbnail", "shortDescription", "fullDescription", "images", "apartaments", "storeys"]}	[]	2022-01-03 13:24:17.835	2022-01-03 13:24:17.835	\N	\N
4	plugin::content-manager.explorer.create	api::storey.storey	{"fields": ["tier", "plan", "investment"]}	[]	2022-01-03 13:24:17.84	2022-01-03 13:24:17.84	\N	\N
5	plugin::content-manager.explorer.read	api::apartament.apartament	{"fields": ["name", "area", "pricePerSquareMeter", "type", "tier", "polygonMask", "status"]}	[]	2022-01-03 13:24:17.846	2022-01-03 13:24:17.846	\N	\N
6	plugin::content-manager.explorer.read	api::homepage.homepage	{"fields": ["heading", "subHeading", "contentTitle", "content", "Cards.heading", "Cards.content", "Cards.icon", "parallax"]}	[]	2022-01-03 13:24:17.852	2022-01-03 13:24:17.852	\N	\N
7	plugin::content-manager.explorer.read	api::investment.investment	{"fields": ["name", "thumbnail", "shortDescription", "fullDescription", "images", "apartaments", "storeys"]}	[]	2022-01-03 13:24:17.859	2022-01-03 13:24:17.859	\N	\N
8	plugin::content-manager.explorer.read	api::storey.storey	{"fields": ["tier", "plan", "investment"]}	[]	2022-01-03 13:24:17.864	2022-01-03 13:24:17.864	\N	\N
9	plugin::content-manager.explorer.update	api::apartament.apartament	{"fields": ["name", "area", "pricePerSquareMeter", "type", "tier", "polygonMask", "status"]}	[]	2022-01-03 13:24:17.869	2022-01-03 13:24:17.869	\N	\N
10	plugin::content-manager.explorer.update	api::homepage.homepage	{"fields": ["heading", "subHeading", "contentTitle", "content", "Cards.heading", "Cards.content", "Cards.icon", "parallax"]}	[]	2022-01-03 13:24:17.875	2022-01-03 13:24:17.875	\N	\N
11	plugin::content-manager.explorer.update	api::investment.investment	{"fields": ["name", "thumbnail", "shortDescription", "fullDescription", "images", "apartaments", "storeys"]}	[]	2022-01-03 13:24:17.881	2022-01-03 13:24:17.881	\N	\N
12	plugin::content-manager.explorer.update	api::storey.storey	{"fields": ["tier", "plan", "investment"]}	[]	2022-01-03 13:24:17.886	2022-01-03 13:24:17.886	\N	\N
13	plugin::content-manager.explorer.delete	api::apartament.apartament	{}	[]	2022-01-03 13:24:17.893	2022-01-03 13:24:17.893	\N	\N
14	plugin::content-manager.explorer.delete	api::homepage.homepage	{}	[]	2022-01-03 13:24:17.898	2022-01-03 13:24:17.898	\N	\N
15	plugin::content-manager.explorer.delete	api::investment.investment	{}	[]	2022-01-03 13:24:17.903	2022-01-03 13:24:17.903	\N	\N
16	plugin::content-manager.explorer.delete	api::storey.storey	{}	[]	2022-01-03 13:24:17.909	2022-01-03 13:24:17.909	\N	\N
17	plugin::content-manager.explorer.publish	api::apartament.apartament	{}	[]	2022-01-03 13:24:17.914	2022-01-03 13:24:17.914	\N	\N
18	plugin::content-manager.explorer.publish	api::homepage.homepage	{}	[]	2022-01-03 13:24:17.919	2022-01-03 13:24:17.919	\N	\N
19	plugin::content-manager.explorer.publish	api::investment.investment	{}	[]	2022-01-03 13:24:17.925	2022-01-03 13:24:17.925	\N	\N
20	plugin::content-manager.explorer.publish	api::storey.storey	{}	[]	2022-01-03 13:24:17.93	2022-01-03 13:24:17.93	\N	\N
21	plugin::upload.read	\N	{}	[]	2022-01-03 13:24:17.935	2022-01-03 13:24:17.935	\N	\N
22	plugin::upload.assets.create	\N	{}	[]	2022-01-03 13:24:17.941	2022-01-03 13:24:17.941	\N	\N
23	plugin::upload.assets.update	\N	{}	[]	2022-01-03 13:24:17.946	2022-01-03 13:24:17.946	\N	\N
24	plugin::upload.assets.download	\N	{}	[]	2022-01-03 13:24:17.952	2022-01-03 13:24:17.952	\N	\N
25	plugin::upload.assets.copy-link	\N	{}	[]	2022-01-03 13:24:17.957	2022-01-03 13:24:17.957	\N	\N
26	plugin::content-manager.explorer.create	api::apartament.apartament	{"fields": ["name", "area", "pricePerSquareMeter", "type", "tier", "polygonMask", "status"]}	["admin::is-creator"]	2022-01-03 13:24:17.965	2022-01-03 13:24:17.965	\N	\N
27	plugin::content-manager.explorer.create	api::homepage.homepage	{"fields": ["heading", "subHeading", "contentTitle", "content", "Cards.heading", "Cards.content", "Cards.icon", "parallax"]}	["admin::is-creator"]	2022-01-03 13:24:17.976	2022-01-03 13:24:17.976	\N	\N
28	plugin::content-manager.explorer.create	api::investment.investment	{"fields": ["name", "thumbnail", "shortDescription", "fullDescription", "images", "apartaments", "storeys"]}	["admin::is-creator"]	2022-01-03 13:24:17.981	2022-01-03 13:24:17.981	\N	\N
29	plugin::content-manager.explorer.create	api::storey.storey	{"fields": ["tier", "plan", "investment"]}	["admin::is-creator"]	2022-01-03 13:24:17.985	2022-01-03 13:24:17.985	\N	\N
30	plugin::content-manager.explorer.read	api::apartament.apartament	{"fields": ["name", "area", "pricePerSquareMeter", "type", "tier", "polygonMask", "status"]}	["admin::is-creator"]	2022-01-03 13:24:17.99	2022-01-03 13:24:17.99	\N	\N
31	plugin::content-manager.explorer.read	api::homepage.homepage	{"fields": ["heading", "subHeading", "contentTitle", "content", "Cards.heading", "Cards.content", "Cards.icon", "parallax"]}	["admin::is-creator"]	2022-01-03 13:24:17.995	2022-01-03 13:24:17.995	\N	\N
32	plugin::content-manager.explorer.read	api::investment.investment	{"fields": ["name", "thumbnail", "shortDescription", "fullDescription", "images", "apartaments", "storeys"]}	["admin::is-creator"]	2022-01-03 13:24:17.999	2022-01-03 13:24:17.999	\N	\N
33	plugin::content-manager.explorer.read	api::storey.storey	{"fields": ["tier", "plan", "investment"]}	["admin::is-creator"]	2022-01-03 13:24:18.004	2022-01-03 13:24:18.004	\N	\N
34	plugin::content-manager.explorer.update	api::apartament.apartament	{"fields": ["name", "area", "pricePerSquareMeter", "type", "tier", "polygonMask", "status"]}	["admin::is-creator"]	2022-01-03 13:24:18.01	2022-01-03 13:24:18.01	\N	\N
35	plugin::content-manager.explorer.update	api::homepage.homepage	{"fields": ["heading", "subHeading", "contentTitle", "content", "Cards.heading", "Cards.content", "Cards.icon", "parallax"]}	["admin::is-creator"]	2022-01-03 13:24:18.016	2022-01-03 13:24:18.016	\N	\N
36	plugin::content-manager.explorer.update	api::investment.investment	{"fields": ["name", "thumbnail", "shortDescription", "fullDescription", "images", "apartaments", "storeys"]}	["admin::is-creator"]	2022-01-03 13:24:18.023	2022-01-03 13:24:18.023	\N	\N
37	plugin::content-manager.explorer.update	api::storey.storey	{"fields": ["tier", "plan", "investment"]}	["admin::is-creator"]	2022-01-03 13:24:18.03	2022-01-03 13:24:18.03	\N	\N
38	plugin::content-manager.explorer.delete	api::apartament.apartament	{}	["admin::is-creator"]	2022-01-03 13:24:18.035	2022-01-03 13:24:18.035	\N	\N
39	plugin::content-manager.explorer.delete	api::homepage.homepage	{}	["admin::is-creator"]	2022-01-03 13:24:18.041	2022-01-03 13:24:18.041	\N	\N
40	plugin::content-manager.explorer.delete	api::investment.investment	{}	["admin::is-creator"]	2022-01-03 13:24:18.047	2022-01-03 13:24:18.047	\N	\N
41	plugin::content-manager.explorer.delete	api::storey.storey	{}	["admin::is-creator"]	2022-01-03 13:24:18.053	2022-01-03 13:24:18.053	\N	\N
42	plugin::upload.read	\N	{}	["admin::is-creator"]	2022-01-03 13:24:18.059	2022-01-03 13:24:18.059	\N	\N
43	plugin::upload.assets.create	\N	{}	[]	2022-01-03 13:24:18.063	2022-01-03 13:24:18.063	\N	\N
44	plugin::upload.assets.update	\N	{}	["admin::is-creator"]	2022-01-03 13:24:18.068	2022-01-03 13:24:18.068	\N	\N
45	plugin::upload.assets.download	\N	{}	[]	2022-01-03 13:24:18.073	2022-01-03 13:24:18.073	\N	\N
46	plugin::upload.assets.copy-link	\N	{}	[]	2022-01-03 13:24:18.078	2022-01-03 13:24:18.078	\N	\N
47	plugin::content-manager.explorer.create	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2022-01-03 13:24:18.116	2022-01-03 13:24:18.116	\N	\N
48	plugin::content-manager.explorer.create	api::apartament.apartament	{"fields": ["name", "area", "pricePerSquareMeter", "type", "tier", "polygonMask", "status"]}	[]	2022-01-03 13:24:18.122	2022-01-03 13:24:18.122	\N	\N
49	plugin::content-manager.explorer.create	api::homepage.homepage	{"fields": ["heading", "subHeading", "contentTitle", "content", "Cards.heading", "Cards.content", "Cards.icon", "parallax"]}	[]	2022-01-03 13:24:18.127	2022-01-03 13:24:18.127	\N	\N
50	plugin::content-manager.explorer.create	api::investment.investment	{"fields": ["name", "thumbnail", "shortDescription", "fullDescription", "images", "apartaments", "storeys"]}	[]	2022-01-03 13:24:18.133	2022-01-03 13:24:18.133	\N	\N
51	plugin::content-manager.explorer.create	api::storey.storey	{"fields": ["tier", "plan", "investment"]}	[]	2022-01-03 13:24:18.138	2022-01-03 13:24:18.138	\N	\N
52	plugin::content-manager.explorer.read	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2022-01-03 13:24:18.144	2022-01-03 13:24:18.144	\N	\N
53	plugin::content-manager.explorer.read	api::apartament.apartament	{"fields": ["name", "area", "pricePerSquareMeter", "type", "tier", "polygonMask", "status"]}	[]	2022-01-03 13:24:18.149	2022-01-03 13:24:18.149	\N	\N
54	plugin::content-manager.explorer.read	api::homepage.homepage	{"fields": ["heading", "subHeading", "contentTitle", "content", "Cards.heading", "Cards.content", "Cards.icon", "parallax"]}	[]	2022-01-03 13:24:18.155	2022-01-03 13:24:18.155	\N	\N
55	plugin::content-manager.explorer.read	api::investment.investment	{"fields": ["name", "thumbnail", "shortDescription", "fullDescription", "images", "apartaments", "storeys"]}	[]	2022-01-03 13:24:18.161	2022-01-03 13:24:18.161	\N	\N
56	plugin::content-manager.explorer.read	api::storey.storey	{"fields": ["tier", "plan", "investment"]}	[]	2022-01-03 13:24:18.167	2022-01-03 13:24:18.167	\N	\N
57	plugin::content-manager.explorer.update	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2022-01-03 13:24:18.172	2022-01-03 13:24:18.172	\N	\N
58	plugin::content-manager.explorer.update	api::apartament.apartament	{"fields": ["name", "area", "pricePerSquareMeter", "type", "tier", "polygonMask", "status"]}	[]	2022-01-03 13:24:18.179	2022-01-03 13:24:18.179	\N	\N
59	plugin::content-manager.explorer.update	api::homepage.homepage	{"fields": ["heading", "subHeading", "contentTitle", "content", "Cards.heading", "Cards.content", "Cards.icon", "parallax"]}	[]	2022-01-03 13:24:18.185	2022-01-03 13:24:18.185	\N	\N
60	plugin::content-manager.explorer.update	api::investment.investment	{"fields": ["name", "thumbnail", "shortDescription", "fullDescription", "images", "apartaments", "storeys"]}	[]	2022-01-03 13:24:18.19	2022-01-03 13:24:18.19	\N	\N
61	plugin::content-manager.explorer.update	api::storey.storey	{"fields": ["tier", "plan", "investment"]}	[]	2022-01-03 13:24:18.196	2022-01-03 13:24:18.196	\N	\N
62	plugin::content-manager.explorer.delete	plugin::users-permissions.user	{}	[]	2022-01-03 13:24:18.202	2022-01-03 13:24:18.202	\N	\N
63	plugin::content-manager.explorer.delete	api::apartament.apartament	{}	[]	2022-01-03 13:24:18.208	2022-01-03 13:24:18.208	\N	\N
64	plugin::content-manager.explorer.delete	api::homepage.homepage	{}	[]	2022-01-03 13:24:18.215	2022-01-03 13:24:18.215	\N	\N
65	plugin::content-manager.explorer.delete	api::investment.investment	{}	[]	2022-01-03 13:24:18.22	2022-01-03 13:24:18.22	\N	\N
66	plugin::content-manager.explorer.delete	api::storey.storey	{}	[]	2022-01-03 13:24:18.226	2022-01-03 13:24:18.226	\N	\N
67	plugin::content-manager.explorer.publish	api::apartament.apartament	{}	[]	2022-01-03 13:24:18.231	2022-01-03 13:24:18.231	\N	\N
68	plugin::content-manager.explorer.publish	api::homepage.homepage	{}	[]	2022-01-03 13:24:18.236	2022-01-03 13:24:18.236	\N	\N
69	plugin::content-manager.explorer.publish	api::investment.investment	{}	[]	2022-01-03 13:24:18.241	2022-01-03 13:24:18.241	\N	\N
70	plugin::content-manager.explorer.publish	api::storey.storey	{}	[]	2022-01-03 13:24:18.247	2022-01-03 13:24:18.247	\N	\N
71	plugin::content-manager.single-types.configure-view	\N	{}	[]	2022-01-03 13:24:18.252	2022-01-03 13:24:18.252	\N	\N
72	plugin::content-manager.collection-types.configure-view	\N	{}	[]	2022-01-03 13:24:18.259	2022-01-03 13:24:18.259	\N	\N
73	plugin::content-manager.components.configure-layout	\N	{}	[]	2022-01-03 13:24:18.264	2022-01-03 13:24:18.264	\N	\N
74	plugin::content-type-builder.read	\N	{}	[]	2022-01-03 13:24:18.269	2022-01-03 13:24:18.269	\N	\N
75	plugin::email.settings.read	\N	{}	[]	2022-01-03 13:24:18.275	2022-01-03 13:24:18.275	\N	\N
76	plugin::upload.read	\N	{}	[]	2022-01-03 13:24:18.28	2022-01-03 13:24:18.28	\N	\N
77	plugin::upload.assets.create	\N	{}	[]	2022-01-03 13:24:18.285	2022-01-03 13:24:18.285	\N	\N
78	plugin::upload.assets.update	\N	{}	[]	2022-01-03 13:24:18.29	2022-01-03 13:24:18.29	\N	\N
79	plugin::upload.assets.download	\N	{}	[]	2022-01-03 13:24:18.295	2022-01-03 13:24:18.295	\N	\N
80	plugin::upload.assets.copy-link	\N	{}	[]	2022-01-03 13:24:18.299	2022-01-03 13:24:18.299	\N	\N
81	plugin::upload.settings.read	\N	{}	[]	2022-01-03 13:24:18.303	2022-01-03 13:24:18.303	\N	\N
82	plugin::i18n.locale.create	\N	{}	[]	2022-01-03 13:24:18.31	2022-01-03 13:24:18.31	\N	\N
83	plugin::i18n.locale.read	\N	{}	[]	2022-01-03 13:24:18.315	2022-01-03 13:24:18.315	\N	\N
84	plugin::i18n.locale.update	\N	{}	[]	2022-01-03 13:24:18.319	2022-01-03 13:24:18.319	\N	\N
85	plugin::i18n.locale.delete	\N	{}	[]	2022-01-03 13:24:18.325	2022-01-03 13:24:18.325	\N	\N
86	plugin::users-permissions.roles.create	\N	{}	[]	2022-01-03 13:24:18.332	2022-01-03 13:24:18.332	\N	\N
87	plugin::users-permissions.roles.read	\N	{}	[]	2022-01-03 13:24:18.337	2022-01-03 13:24:18.337	\N	\N
88	plugin::users-permissions.roles.update	\N	{}	[]	2022-01-03 13:24:18.342	2022-01-03 13:24:18.342	\N	\N
89	plugin::users-permissions.roles.delete	\N	{}	[]	2022-01-03 13:24:18.347	2022-01-03 13:24:18.347	\N	\N
90	plugin::users-permissions.providers.read	\N	{}	[]	2022-01-03 13:24:18.353	2022-01-03 13:24:18.353	\N	\N
91	plugin::users-permissions.providers.update	\N	{}	[]	2022-01-03 13:24:18.358	2022-01-03 13:24:18.358	\N	\N
92	plugin::users-permissions.email-templates.read	\N	{}	[]	2022-01-03 13:24:18.363	2022-01-03 13:24:18.363	\N	\N
93	plugin::users-permissions.email-templates.update	\N	{}	[]	2022-01-03 13:24:18.369	2022-01-03 13:24:18.369	\N	\N
94	plugin::users-permissions.advanced-settings.read	\N	{}	[]	2022-01-03 13:24:18.374	2022-01-03 13:24:18.374	\N	\N
95	plugin::users-permissions.advanced-settings.update	\N	{}	[]	2022-01-03 13:24:18.379	2022-01-03 13:24:18.379	\N	\N
96	admin::marketplace.read	\N	{}	[]	2022-01-03 13:24:18.384	2022-01-03 13:24:18.384	\N	\N
97	admin::marketplace.plugins.install	\N	{}	[]	2022-01-03 13:24:18.389	2022-01-03 13:24:18.389	\N	\N
98	admin::marketplace.plugins.uninstall	\N	{}	[]	2022-01-03 13:24:18.395	2022-01-03 13:24:18.395	\N	\N
99	admin::webhooks.create	\N	{}	[]	2022-01-03 13:24:18.401	2022-01-03 13:24:18.401	\N	\N
100	admin::webhooks.read	\N	{}	[]	2022-01-03 13:24:18.406	2022-01-03 13:24:18.406	\N	\N
101	admin::webhooks.update	\N	{}	[]	2022-01-03 13:24:18.412	2022-01-03 13:24:18.412	\N	\N
102	admin::webhooks.delete	\N	{}	[]	2022-01-03 13:24:18.417	2022-01-03 13:24:18.417	\N	\N
103	admin::users.create	\N	{}	[]	2022-01-03 13:24:18.422	2022-01-03 13:24:18.422	\N	\N
104	admin::users.read	\N	{}	[]	2022-01-03 13:24:18.428	2022-01-03 13:24:18.428	\N	\N
105	admin::users.update	\N	{}	[]	2022-01-03 13:24:18.433	2022-01-03 13:24:18.433	\N	\N
106	admin::users.delete	\N	{}	[]	2022-01-03 13:24:18.437	2022-01-03 13:24:18.437	\N	\N
107	admin::roles.create	\N	{}	[]	2022-01-03 13:24:18.443	2022-01-03 13:24:18.443	\N	\N
108	admin::roles.read	\N	{}	[]	2022-01-03 13:24:18.448	2022-01-03 13:24:18.448	\N	\N
109	admin::roles.update	\N	{}	[]	2022-01-03 13:24:18.453	2022-01-03 13:24:18.453	\N	\N
110	admin::roles.delete	\N	{}	[]	2022-01-03 13:24:18.459	2022-01-03 13:24:18.459	\N	\N
111	admin::api-tokens.create	\N	{}	[]	2022-01-03 13:24:18.465	2022-01-03 13:24:18.465	\N	\N
112	admin::api-tokens.read	\N	{}	[]	2022-01-03 13:24:18.47	2022-01-03 13:24:18.47	\N	\N
113	admin::api-tokens.update	\N	{}	[]	2022-01-03 13:24:18.475	2022-01-03 13:24:18.475	\N	\N
114	admin::api-tokens.delete	\N	{}	[]	2022-01-03 13:24:18.48	2022-01-03 13:24:18.48	\N	\N
\.


--
-- Data for Name: admin_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_permissions_role_links (permission_id, role_id) FROM stdin;
1	2
2	2
3	2
4	2
5	2
6	2
7	2
8	2
9	2
10	2
11	2
12	2
13	2
14	2
15	2
16	2
17	2
18	2
19	2
20	2
21	2
22	2
23	2
24	2
25	2
26	3
27	3
28	3
29	3
30	3
31	3
32	3
33	3
34	3
35	3
36	3
37	3
38	3
39	3
40	3
41	3
42	3
43	3
44	3
45	3
46	3
47	1
48	1
49	1
50	1
51	1
52	1
53	1
54	1
55	1
56	1
57	1
58	1
59	1
60	1
61	1
62	1
63	1
64	1
65	1
66	1
67	1
68	1
69	1
70	1
71	1
72	1
73	1
74	1
75	1
76	1
77	1
78	1
79	1
80	1
81	1
82	1
83	1
84	1
85	1
86	1
87	1
88	1
89	1
90	1
91	1
92	1
93	1
94	1
95	1
96	1
97	1
98	1
99	1
100	1
101	1
102	1
103	1
104	1
105	1
106	1
107	1
108	1
109	1
110	1
111	1
112	1
113	1
114	1
\.


--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2022-01-03 13:24:17.796	2022-01-03 13:24:17.796	\N	\N
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2022-01-03 13:24:17.805	2022-01-03 13:24:17.805	\N	\N
3	Author	strapi-author	Authors can manage the content they have created.	2022-01-03 13:24:17.81	2022-01-03 13:24:17.81	\N	\N
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	admin		\N	test@null.com	$2a$10$t8tQNKTlxP.kE8POH4BhCeQ8ZuMcNarQYqR5XgoupFJVBpZwBudI6	\N	\N	t	f	\N	2022-01-03 13:25:32.721	2022-01-03 13:25:32.721	\N	\N
\.


--
-- Data for Name: admin_users_roles_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_users_roles_links (user_id, role_id) FROM stdin;
1	1
\.


--
-- Data for Name: apartaments; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.apartaments (id, name, area, price_per_square_meter, type, tier, status, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	Apartament 101	50.00	10000.00	primary	1	available	2022-01-03 13:27:55.158	2022-01-03 13:27:55.895	2022-01-03 13:27:55.893	1	1
2	Apartament 102	50.00	10000.00	primary	1	reservation	2022-01-03 13:28:13.363	2022-01-03 13:28:13.881	2022-01-03 13:28:13.877	1	1
3	Apartament 103	50.00	10000.00	secondary	1	sold	2022-01-03 13:28:24.509	2022-01-03 13:28:52.504	2022-01-03 13:28:25.066	1	1
4	Apartament 201	45.00	10000.00	primary	2	available	2022-01-17 09:57:49.148	2022-01-17 09:57:52.152	2022-01-17 09:57:52.147	1	1
5	Apartament 202	45.00	10000.00	primary	2	reservation	2022-01-17 09:58:03.778	2022-01-17 09:58:04.682	2022-01-17 09:58:04.679	1	1
6	Apartament 203	45.00	10000.00	secondary	2	sold	2022-01-17 09:58:22.565	2022-01-17 09:58:23.152	2022-01-17 09:58:23.148	1	1
7	Apartament 10	32.00	15000.00	secondary	1	reservation	2022-01-17 10:01:54.653	2022-01-17 10:01:56.24	2022-01-17 10:01:56.237	1	1
8	Apartament 11	36.00	15000.00	secondary	1	available	2022-01-17 10:02:11.958	2022-01-17 10:02:12.536	2022-01-17 10:02:12.534	1	1
\.


--
-- Data for Name: components_common_cards; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_common_cards (id, heading, content, icon) FROM stdin;
2	Card #1	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.	home-city
3	Card #3	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.	briefcase-edit
1	Card #2	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.	shield-check
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	noignore_investment.jpg	noignore_investment.jpg	noignore_investment.jpg	1280	853	{"large": {"ext": ".jpg", "url": "/uploads/large_noignore_investment_c877bacf7a.jpg", "hash": "large_noignore_investment_c877bacf7a", "mime": "image/jpeg", "name": "large_noignore_investment.jpg", "path": null, "size": 194.18, "width": 1000, "height": 666}, "small": {"ext": ".jpg", "url": "/uploads/small_noignore_investment_c877bacf7a.jpg", "hash": "small_noignore_investment_c877bacf7a", "mime": "image/jpeg", "name": "small_noignore_investment.jpg", "path": null, "size": 56.05, "width": 500, "height": 333}, "medium": {"ext": ".jpg", "url": "/uploads/medium_noignore_investment_c877bacf7a.jpg", "hash": "medium_noignore_investment_c877bacf7a", "mime": "image/jpeg", "name": "medium_noignore_investment.jpg", "path": null, "size": 118.29, "width": 750, "height": 500}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_noignore_investment_c877bacf7a.jpg", "hash": "thumbnail_noignore_investment_c877bacf7a", "mime": "image/jpeg", "name": "thumbnail_noignore_investment.jpg", "path": null, "size": 14.25, "width": 234, "height": 156}}	noignore_investment_c877bacf7a	.jpg	image/jpeg	295.49	/uploads/noignore_investment_c877bacf7a.jpg	\N	local	\N	2022-01-03 13:26:29.611	2022-01-03 13:26:29.611	1	1
2	noignore_plan.jpg	noignore_plan.jpg	noignore_plan.jpg	1280	839	{"large": {"ext": ".jpg", "url": "/uploads/large_noignore_plan_1836cd5ade.jpg", "hash": "large_noignore_plan_1836cd5ade", "mime": "image/jpeg", "name": "large_noignore_plan.jpg", "path": null, "size": 106.98, "width": 1000, "height": 655}, "small": {"ext": ".jpg", "url": "/uploads/small_noignore_plan_1836cd5ade.jpg", "hash": "small_noignore_plan_1836cd5ade", "mime": "image/jpeg", "name": "small_noignore_plan.jpg", "path": null, "size": 26.15, "width": 500, "height": 328}, "medium": {"ext": ".jpg", "url": "/uploads/medium_noignore_plan_1836cd5ade.jpg", "hash": "medium_noignore_plan_1836cd5ade", "mime": "image/jpeg", "name": "medium_noignore_plan.jpg", "path": null, "size": 60.07, "width": 750, "height": 492}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_noignore_plan_1836cd5ade.jpg", "hash": "thumbnail_noignore_plan_1836cd5ade", "mime": "image/jpeg", "name": "thumbnail_noignore_plan.jpg", "path": null, "size": 6.71, "width": 238, "height": 156}}	noignore_plan_1836cd5ade	.jpg	image/jpeg	180.16	/uploads/noignore_plan_1836cd5ade.jpg	\N	local	\N	2022-01-03 13:26:29.619	2022-01-03 13:26:29.619	1	1
3	noignore_investment2.jpg	noignore_investment2.jpg	noignore_investment2.jpg	1280	853	{"large": {"ext": ".jpg", "url": "/uploads/large_noignore_investment2_1ce651ba85.jpg", "hash": "large_noignore_investment2_1ce651ba85", "mime": "image/jpeg", "name": "large_noignore_investment2.jpg", "path": null, "size": 185.69, "width": 1000, "height": 666}, "small": {"ext": ".jpg", "url": "/uploads/small_noignore_investment2_1ce651ba85.jpg", "hash": "small_noignore_investment2_1ce651ba85", "mime": "image/jpeg", "name": "small_noignore_investment2.jpg", "path": null, "size": 44.76, "width": 500, "height": 333}, "medium": {"ext": ".jpg", "url": "/uploads/medium_noignore_investment2_1ce651ba85.jpg", "hash": "medium_noignore_investment2_1ce651ba85", "mime": "image/jpeg", "name": "medium_noignore_investment2.jpg", "path": null, "size": 101.43, "width": 750, "height": 500}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_noignore_investment2_1ce651ba85.jpg", "hash": "thumbnail_noignore_investment2_1ce651ba85", "mime": "image/jpeg", "name": "thumbnail_noignore_investment2.jpg", "path": null, "size": 11.14, "width": 234, "height": 156}}	noignore_investment2_1ce651ba85	.jpg	image/jpeg	326.09	/uploads/noignore_investment2_1ce651ba85.jpg	\N	local	\N	2022-01-03 13:26:29.633	2022-01-03 13:26:29.633	1	1
\.


--
-- Data for Name: files_related_morphs; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.files_related_morphs (file_id, related_id, related_type, field, "order") FROM stdin;
2	1	api::storey.storey	plan	1
3	1	api::homepage.homepage	parallax	1
2	2	api::storey.storey	plan	1
3	1	api::investment.investment	thumbnail	1
2	3	api::storey.storey	plan	1
1	2	api::investment.investment	thumbnail	1
\.


--
-- Data for Name: homepages; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.homepages (id, heading, sub_heading, content_title, content, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	Housing Estate	Your company	Best apartaments offers!	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	2022-01-03 13:26:51.036	2022-01-17 09:56:04.605	2022-01-03 13:26:52.798	1	1
\.


--
-- Data for Name: homepages_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.homepages_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
10	1	2	common.card	Cards	1
11	1	1	common.card	Cards	2
12	1	3	common.card	Cards	3
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	English (en)	en	2022-01-03 13:24:17.676	2022-01-03 13:24:17.676	\N	\N
\.


--
-- Data for Name: investments; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.investments (id, name, short_description, full_description, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	New Homes	Lorem Ipsum	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	2022-01-03 13:27:36.45	2022-01-17 09:58:51.291	2022-01-17 09:34:30.242	1	1
2	Pleasing Place	Lorem Ipsum	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	2022-01-03 13:29:18.314	2022-01-17 10:02:22.696	2022-01-03 13:29:19.2	1	1
\.


--
-- Data for Name: investments_apartaments_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.investments_apartaments_links (investment_id, apartament_id) FROM stdin;
1	1
1	2
1	3
1	4
1	5
1	6
2	7
2	8
\.


--
-- Data for Name: storeys; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.storeys (id, tier, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	1	2022-01-03 13:27:13.528	2022-01-17 09:36:14.109	2022-01-17 09:36:14.107	1	1
2	2	2022-01-17 09:57:24.251	2022-01-17 09:57:24.251	\N	1	1
3	1	2022-01-17 10:01:27.844	2022-01-17 10:01:27.844	\N	1	1
\.


--
-- Data for Name: storeys_investment_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.storeys_investment_links (storey_id, investment_id) FROM stdin;
1	1
2	1
3	2
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_api_tokens (id, name, description, type, access_key, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
3	plugin_content_manager_configuration_content_types::admin::permission	{"uid":"admin::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"Subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"Properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"Conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"CreatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"CreatedAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"UpdatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"UpdatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"editRelations":["role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}]]}}	object	\N	\N
4	plugin_content_manager_configuration_content_types::admin::role	{"uid":"admin::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"Users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"CreatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"CreatedAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"UpdatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"UpdatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"editRelations":["users","permissions"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6}]]}}	object	\N	\N
5	plugin_content_manager_configuration_content_types::admin::user	{"uid":"admin::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"Firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"Lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"RegistrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"RegistrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"IsActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IsActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"Roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"PreferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"CreatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"CreatedAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"UpdatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"UpdatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"editRelations":["roles"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"blocked","size":4},{"name":"preferedLanguage","size":6}]]}}	object	\N	\N
6	plugin_content_manager_configuration_content_types::admin::api-token	{"uid":"admin::api-token","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"AccessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AccessKey","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"CreatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"CreatedAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"UpdatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"UpdatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}]]}}	object	\N	\N
7	plugin_content_manager_configuration_content_types::plugin::upload.file	{"uid":"plugin::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"AlternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AlternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"Caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"Width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Width","searchable":true,"sortable":true}},"height":{"edit":{"label":"Height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"Formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"Hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"Ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"Mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"Size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Size","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"PreviewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreviewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"Provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider_metadata","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"CreatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"CreatedAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"UpdatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"UpdatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}]]}}	object	\N	\N
17	plugin_i18n_default_locale	"en"	string	\N	\N
1	strapi_content_types_schema	{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access"],"configurable":false,"required":false,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access"],"configurable":false,"required":false,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"plugin":"upload","uid":"plugin::upload.file","kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","globalId":"UploadFile"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"plugin":"i18n","uid":"plugin::i18n.locale","kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","collectionName":"i18n_locale","globalId":"I18NLocale"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"plugin":"users-permissions","uid":"plugin::users-permissions.permission","kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"plugin":"users-permissions","uid":"plugin::users-permissions.role","kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"plugin":"users-permissions","uid":"plugin::users-permissions.user","kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","globalId":"UsersPermissionsUser"},"api::apartament.apartament":{"kind":"collectionType","collectionName":"apartaments","info":{"singularName":"apartament","pluralName":"apartaments","displayName":"Apartament","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"area":{"type":"decimal"},"pricePerSquareMeter":{"type":"decimal"},"type":{"type":"enumeration","enum":["primary","secondary"],"default":"primary"},"tier":{"type":"integer"},"polygonMask":{"type":"pointlist","columnType":"longtext"},"status":{"type":"enumeration","enum":["available","reservation","sold"],"default":"available"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"apartaments","info":{"singularName":"apartament","pluralName":"apartaments","displayName":"Apartament","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"area":{"type":"decimal"},"pricePerSquareMeter":{"type":"decimal"},"type":{"type":"enumeration","enum":["primary","secondary"],"default":"primary"},"tier":{"type":"integer"},"polygonMask":{"type":"pointlist","columnType":"longtext"},"status":{"type":"enumeration","enum":["available","reservation","sold"],"default":"available"}},"kind":"collectionType"},"modelType":"contentType","modelName":"apartament","connection":"default","uid":"api::apartament.apartament","apiName":"apartament","globalId":"Apartament","actions":{},"lifecycles":{}},"api::homepage.homepage":{"kind":"singleType","collectionName":"homepages","info":{"singularName":"homepage","pluralName":"homepages","displayName":"Homepage","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"heading":{"type":"string"},"subHeading":{"type":"string"},"contentTitle":{"type":"string"},"content":{"type":"richtext"},"Cards":{"type":"component","repeatable":true,"component":"common.card"},"parallax":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"homepages","info":{"singularName":"homepage","pluralName":"homepages","displayName":"Homepage","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"heading":{"type":"string"},"subHeading":{"type":"string"},"contentTitle":{"type":"string"},"content":{"type":"richtext"},"Cards":{"type":"component","repeatable":true,"component":"common.card"},"parallax":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]}},"kind":"singleType"},"modelType":"contentType","modelName":"homepage","connection":"default","uid":"api::homepage.homepage","apiName":"homepage","globalId":"Homepage","actions":{},"lifecycles":{}},"api::investment.investment":{"kind":"collectionType","collectionName":"investments","info":{"singularName":"investment","pluralName":"investments","displayName":"Investment","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"thumbnail":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"shortDescription":{"type":"string"},"fullDescription":{"type":"richtext"},"images":{"type":"media","multiple":true,"required":false,"allowedTypes":["images","files","videos"]},"apartaments":{"type":"relation","relation":"oneToMany","target":"api::apartament.apartament"},"storeys":{"type":"relation","relation":"oneToMany","target":"api::storey.storey","mappedBy":"investment"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"investments","info":{"singularName":"investment","pluralName":"investments","displayName":"Investment","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"thumbnail":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"shortDescription":{"type":"string"},"fullDescription":{"type":"richtext"},"images":{"type":"media","multiple":true,"required":false,"allowedTypes":["images","files","videos"]},"apartaments":{"type":"relation","relation":"oneToMany","target":"api::apartament.apartament"},"storeys":{"type":"relation","relation":"oneToMany","target":"api::storey.storey","mappedBy":"investment"}},"kind":"collectionType"},"modelType":"contentType","modelName":"investment","connection":"default","uid":"api::investment.investment","apiName":"investment","globalId":"Investment","actions":{},"lifecycles":{}},"api::storey.storey":{"kind":"collectionType","collectionName":"storeys","info":{"singularName":"storey","pluralName":"storeys","displayName":"Storey"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"tier":{"type":"integer"},"plan":{"allowedTypes":["images","files","videos"],"type":"media","multiple":false},"investment":{"type":"relation","relation":"manyToOne","target":"api::investment.investment","inversedBy":"storeys"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"storeys","info":{"singularName":"storey","pluralName":"storeys","displayName":"Storey"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"tier":{"type":"integer"},"plan":{"allowedTypes":["images","files","videos"],"type":"media","multiple":false},"investment":{"type":"relation","relation":"manyToOne","target":"api::investment.investment","inversedBy":"storeys"}},"kind":"collectionType"},"modelType":"contentType","modelName":"storey","connection":"default","uid":"api::storey.storey","apiName":"storey","globalId":"Storey","actions":{},"lifecycles":{}}}	object	\N	\N
8	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"uid":"plugin::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"CreatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"CreatedAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"UpdatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"UpdatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}	object	\N	\N
9	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"uid":"plugin::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"CreatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"CreatedAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"UpdatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"UpdatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"editRelations":["role"],"edit":[[{"name":"action","size":6}]]}}	object	\N	\N
10	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"uid":"plugin::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"CreatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"CreatedAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"UpdatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"UpdatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions","users"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]]}}	object	\N	\N
11	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"uid":"plugin::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"ConfirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ConfirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"Confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"CreatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"CreatedAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"UpdatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"UpdatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"editRelations":["role"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4}]]}}	object	\N	\N
12	plugin_content_manager_configuration_content_types::api::apartament.apartament	{"uid":"api::apartament.apartament","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"area":{"edit":{"label":"Area","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Area","searchable":true,"sortable":true}},"pricePerSquareMeter":{"edit":{"label":"PricePerSquareMeter","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PricePerSquareMeter","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"tier":{"edit":{"label":"Tier","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Tier","searchable":true,"sortable":true}},"polygonMask":{"edit":{"label":"PolygonMask","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PolygonMask","searchable":true,"sortable":true}},"status":{"edit":{"label":"Status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Status","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"CreatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"CreatedAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"UpdatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"UpdatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","area","pricePerSquareMeter"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"area","size":4}],[{"name":"pricePerSquareMeter","size":4},{"name":"type","size":6}],[{"name":"tier","size":4},{"name":"polygonMask","size":6}],[{"name":"status","size":6}]]}}	object	\N	\N
13	plugin_content_manager_configuration_content_types::api::homepage.homepage	{"uid":"api::homepage.homepage","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"heading":{"edit":{"label":"Heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Heading","searchable":true,"sortable":true}},"subHeading":{"edit":{"label":"SubHeading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SubHeading","searchable":true,"sortable":true}},"contentTitle":{"edit":{"label":"ContentTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ContentTitle","searchable":true,"sortable":true}},"content":{"edit":{"label":"Content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Content","searchable":false,"sortable":false}},"Cards":{"edit":{"label":"Cards","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Cards","searchable":false,"sortable":false}},"parallax":{"edit":{"label":"Parallax","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Parallax","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"CreatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"CreatedAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"UpdatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"UpdatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","heading","subHeading","contentTitle"],"editRelations":[],"edit":[[{"name":"heading","size":6},{"name":"subHeading","size":6}],[{"name":"contentTitle","size":6}],[{"name":"content","size":12}],[{"name":"Cards","size":12}],[{"name":"parallax","size":6}]]}}	object	\N	\N
16	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
14	plugin_content_manager_configuration_content_types::api::investment.investment	{"uid":"api::investment.investment","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"thumbnail":{"edit":{"label":"Thumbnail","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Thumbnail","searchable":false,"sortable":false}},"shortDescription":{"edit":{"label":"ShortDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ShortDescription","searchable":true,"sortable":true}},"fullDescription":{"edit":{"label":"FullDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"FullDescription","searchable":false,"sortable":false}},"images":{"edit":{"label":"Images","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Images","searchable":false,"sortable":false}},"apartaments":{"edit":{"label":"Apartaments","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Apartaments","searchable":false,"sortable":false}},"storeys":{"edit":{"label":"Storeys","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"Storeys","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"CreatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"CreatedAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"UpdatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"UpdatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","thumbnail","shortDescription"],"editRelations":["apartaments","storeys"],"edit":[[{"name":"name","size":6},{"name":"thumbnail","size":6}],[{"name":"shortDescription","size":6}],[{"name":"fullDescription","size":12}],[{"name":"images","size":6}]]}}	object	\N	\N
15	plugin_content_manager_configuration_content_types::api::storey.storey	{"uid":"api::storey.storey","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"tier":{"edit":{"label":"Tier","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Tier","searchable":true,"sortable":true}},"plan":{"edit":{"label":"Plan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Plan","searchable":false,"sortable":false}},"investment":{"edit":{"label":"Investment","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Investment","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"CreatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"CreatedAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"UpdatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"UpdatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","tier","plan","investment"],"editRelations":["investment"],"edit":[[{"name":"tier","size":4},{"name":"plan","size":6}]]}}	object	\N	\N
21	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null}}	object	\N	\N
18	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"//api/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"//api/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"//api/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"//api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"//api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"//api/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"//api/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"//api/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"//api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"//api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"//api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"//api/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"//api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"//api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"}}	object	\N	\N
19	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
20	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
2	plugin_content_manager_configuration_components::common.card	{"uid":"common.card","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"heading":{"edit":{"label":"Heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Heading","searchable":true,"sortable":true}},"content":{"edit":{"label":"Content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Content","searchable":false,"sortable":false}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":true,"sortable":true}}},"layouts":{"list":["id","heading","icon"],"edit":[[{"name":"heading","size":6}],[{"name":"content","size":12}],[{"name":"icon","size":6}]],"editRelations":[]},"isComponent":true}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
1	{"tables":[{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users","indexes":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files","indexes":[{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_roles","indexes":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users","indexes":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"apartaments","indexes":[{"name":"apartaments_created_by_id_fk","columns":["created_by_id"]},{"name":"apartaments_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"apartaments_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"apartaments_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"area","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"price_per_square_meter","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tier","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"homepages","indexes":[{"name":"homepages_created_by_id_fk","columns":["created_by_id"]},{"name":"homepages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"homepages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"homepages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"sub_heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"investments","indexes":[{"name":"investments_created_by_id_fk","columns":["created_by_id"]},{"name":"investments_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"investments_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"investments_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"short_description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"full_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"storeys","indexes":[{"name":"storeys_created_by_id_fk","columns":["created_by_id"]},{"name":"storeys_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"storeys_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"storeys_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"tier","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_common_cards","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"icon","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions_role_links","indexes":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"]},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_links","indexes":[{"name":"admin_users_roles_links_fk","columns":["user_id"]},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"admin_users_roles_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_morphs","indexes":[{"name":"files_related_morphs_fk","columns":["file_id"]}],"foreignKeys":[{"name":"files_related_morphs_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_links","indexes":[{"name":"up_permissions_role_links_fk","columns":["permission_id"]},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"up_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_links","indexes":[{"name":"up_users_role_links_fk","columns":["user_id"]},{"name":"up_users_role_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"up_users_role_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"homepages_components","indexes":[{"name":"homepages_field_index","columns":["field"],"type":null},{"name":"homepages_component_type_index","columns":["component_type"],"type":null},{"name":"homepages_entity_fk","columns":["entity_id"]}],"foreignKeys":[{"name":"homepages_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"homepages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":0,"notNullable":false,"unsigned":true}]},{"name":"investments_apartaments_links","indexes":[{"name":"investments_apartaments_links_fk","columns":["investment_id"]},{"name":"investments_apartaments_links_inv_fk","columns":["apartament_id"]}],"foreignKeys":[{"name":"investments_apartaments_links_fk","columns":["investment_id"],"referencedColumns":["id"],"referencedTable":"investments","onDelete":"CASCADE"},{"name":"investments_apartaments_links_inv_fk","columns":["apartament_id"],"referencedColumns":["id"],"referencedTable":"apartaments","onDelete":"CASCADE"}],"columns":[{"name":"investment_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"apartament_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"storeys_investment_links","indexes":[{"name":"storeys_investment_links_fk","columns":["storey_id"]},{"name":"storeys_investment_links_inv_fk","columns":["investment_id"]}],"foreignKeys":[{"name":"storeys_investment_links_fk","columns":["storey_id"],"referencedColumns":["id"],"referencedTable":"storeys","onDelete":"CASCADE"},{"name":"storeys_investment_links_inv_fk","columns":["investment_id"],"referencedColumns":["id"],"referencedTable":"investments","onDelete":"CASCADE"}],"columns":[{"name":"storey_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"investment_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2022-01-03 13:24:17.23	68b945b9b9178b4b5dab7bd039a13b32
\.


--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::users-permissions.auth.connect	2022-01-03 13:24:17.743	2022-01-03 13:24:17.743	\N	\N
2	plugin::users-permissions.user.me	2022-01-03 13:24:17.743	2022-01-03 13:24:17.743	\N	\N
5	plugin::users-permissions.auth.callback	2022-01-03 13:24:17.752	2022-01-03 13:24:17.752	\N	\N
6	plugin::users-permissions.auth.connect	2022-01-03 13:24:17.752	2022-01-03 13:24:17.752	\N	\N
9	plugin::users-permissions.auth.register	2022-01-03 13:24:17.752	2022-01-03 13:24:17.752	\N	\N
11	plugin::users-permissions.user.me	2022-01-03 13:24:17.752	2022-01-03 13:24:17.752	\N	\N
12	api::apartament.apartament.find	2022-01-03 13:29:46.137	2022-01-03 13:29:46.137	\N	\N
13	api::apartament.apartament.findOne	2022-01-03 13:29:46.137	2022-01-03 13:29:46.137	\N	\N
14	api::homepage.homepage.find	2022-01-03 13:29:46.137	2022-01-03 13:29:46.137	\N	\N
15	api::investment.investment.find	2022-01-03 13:29:46.137	2022-01-03 13:29:46.137	\N	\N
16	api::investment.investment.findOne	2022-01-03 13:29:46.137	2022-01-03 13:29:46.137	\N	\N
17	api::storey.storey.find	2022-01-03 13:29:46.137	2022-01-03 13:29:46.137	\N	\N
18	api::storey.storey.findOne	2022-01-03 13:29:46.137	2022-01-03 13:29:46.137	\N	\N
\.


--
-- Data for Name: up_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_permissions_role_links (permission_id, role_id) FROM stdin;
1	1
2	1
6	2
5	2
9	2
11	2
12	2
14	2
13	2
15	2
16	2
18	2
17	2
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	2022-01-03 13:24:17.73	2022-01-03 13:24:17.73	\N	\N
2	Public	Default role given to unauthenticated user.	public	2022-01-03 13:24:17.735	2022-01-03 13:29:46.126	\N	\N
\.


--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: up_users_role_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_users_role_links (user_id, role_id) FROM stdin;
\.


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 114, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);


--
-- Name: apartaments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.apartaments_id_seq', 8, true);


--
-- Name: components_common_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_common_cards_id_seq', 3, true);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.files_id_seq', 3, true);


--
-- Name: homepages_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.homepages_components_id_seq', 12, true);


--
-- Name: homepages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.homepages_id_seq', 1, true);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);


--
-- Name: investments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.investments_id_seq', 34, true);


--
-- Name: storeys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.storeys_id_seq', 3, true);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 21, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 1, true);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 44, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: apartaments apartaments_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.apartaments
    ADD CONSTRAINT apartaments_pkey PRIMARY KEY (id);


--
-- Name: components_common_cards components_common_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_common_cards
    ADD CONSTRAINT components_common_cards_pkey PRIMARY KEY (id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: homepages_components homepages_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.homepages_components
    ADD CONSTRAINT homepages_components_pkey PRIMARY KEY (id);


--
-- Name: homepages homepages_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.homepages
    ADD CONSTRAINT homepages_pkey PRIMARY KEY (id);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: investments investments_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.investments
    ADD CONSTRAINT investments_pkey PRIMARY KEY (id);


--
-- Name: storeys storeys_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.storeys
    ADD CONSTRAINT storeys_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);


--
-- Name: admin_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- Name: admin_users_roles_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);


--
-- Name: admin_users_roles_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- Name: apartaments_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX apartaments_created_by_id_fk ON public.apartaments USING btree (created_by_id);


--
-- Name: apartaments_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX apartaments_updated_by_id_fk ON public.apartaments USING btree (updated_by_id);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_related_morphs_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: homepages_component_type_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX homepages_component_type_index ON public.homepages_components USING btree (component_type);


--
-- Name: homepages_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX homepages_created_by_id_fk ON public.homepages USING btree (created_by_id);


--
-- Name: homepages_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX homepages_entity_fk ON public.homepages_components USING btree (entity_id);


--
-- Name: homepages_field_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX homepages_field_index ON public.homepages_components USING btree (field);


--
-- Name: homepages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX homepages_updated_by_id_fk ON public.homepages USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: investments_apartaments_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX investments_apartaments_links_fk ON public.investments_apartaments_links USING btree (investment_id);


--
-- Name: investments_apartaments_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX investments_apartaments_links_inv_fk ON public.investments_apartaments_links USING btree (apartament_id);


--
-- Name: investments_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX investments_created_by_id_fk ON public.investments USING btree (created_by_id);


--
-- Name: investments_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX investments_updated_by_id_fk ON public.investments USING btree (updated_by_id);


--
-- Name: storeys_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX storeys_created_by_id_fk ON public.storeys USING btree (created_by_id);


--
-- Name: storeys_investment_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX storeys_investment_links_fk ON public.storeys_investment_links USING btree (storey_id);


--
-- Name: storeys_investment_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX storeys_investment_links_inv_fk ON public.storeys_investment_links USING btree (investment_id);


--
-- Name: storeys_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX storeys_updated_by_id_fk ON public.storeys USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);


--
-- Name: up_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_role_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);


--
-- Name: up_users_role_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_links admin_users_roles_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_links admin_users_roles_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: apartaments apartaments_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.apartaments
    ADD CONSTRAINT apartaments_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: apartaments apartaments_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.apartaments
    ADD CONSTRAINT apartaments_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_related_morphs files_related_morphs_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: homepages homepages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.homepages
    ADD CONSTRAINT homepages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: homepages_components homepages_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.homepages_components
    ADD CONSTRAINT homepages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.homepages(id) ON DELETE CASCADE;


--
-- Name: homepages homepages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.homepages
    ADD CONSTRAINT homepages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: investments_apartaments_links investments_apartaments_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.investments_apartaments_links
    ADD CONSTRAINT investments_apartaments_links_fk FOREIGN KEY (investment_id) REFERENCES public.investments(id) ON DELETE CASCADE;


--
-- Name: investments_apartaments_links investments_apartaments_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.investments_apartaments_links
    ADD CONSTRAINT investments_apartaments_links_inv_fk FOREIGN KEY (apartament_id) REFERENCES public.apartaments(id) ON DELETE CASCADE;


--
-- Name: investments investments_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.investments
    ADD CONSTRAINT investments_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: investments investments_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.investments
    ADD CONSTRAINT investments_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: storeys storeys_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.storeys
    ADD CONSTRAINT storeys_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: storeys_investment_links storeys_investment_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.storeys_investment_links
    ADD CONSTRAINT storeys_investment_links_fk FOREIGN KEY (storey_id) REFERENCES public.storeys(id) ON DELETE CASCADE;


--
-- Name: storeys_investment_links storeys_investment_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.storeys_investment_links
    ADD CONSTRAINT storeys_investment_links_inv_fk FOREIGN KEY (investment_id) REFERENCES public.investments(id) ON DELETE CASCADE;


--
-- Name: storeys storeys_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.storeys
    ADD CONSTRAINT storeys_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_links up_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_links up_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_links up_users_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_links up_users_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

