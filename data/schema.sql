--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.25
-- Dumped by pg_dump version 9.5.25

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: AO_0A5972_NOTIFICATION_SETTING; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_0A5972_NOTIFICATION_SETTING" (
    "ID" bigint NOT NULL,
    "KEY" character varying(255) NOT NULL,
    "TYPE" character varying(255) NOT NULL,
    "USER_KEY" character varying(255) NOT NULL,
    "VALUE" character varying(255)
);


ALTER TABLE public."AO_0A5972_NOTIFICATION_SETTING" OWNER TO jira;

--
-- Name: AO_0A5972_NOTIFICATION_SETTING_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_0A5972_NOTIFICATION_SETTING_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_0A5972_NOTIFICATION_SETTING_ID_seq" OWNER TO jira;

--
-- Name: AO_0A5972_NOTIFICATION_SETTING_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_0A5972_NOTIFICATION_SETTING_ID_seq" OWNED BY public."AO_0A5972_NOTIFICATION_SETTING"."ID";


--
-- Name: AO_0A5972_PUSH_REGISTRATION; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_0A5972_PUSH_REGISTRATION" (
    "BUILD" character varying(255) NOT NULL,
    "ENDPOINT" character varying(450),
    "ID" character varying(255) NOT NULL,
    "OS" character varying(255) NOT NULL,
    "TOKEN" character varying(450),
    "USER_KEY" character varying(255) NOT NULL
);


ALTER TABLE public."AO_0A5972_PUSH_REGISTRATION" OWNER TO jira;

--
-- Name: AO_0AC321_RECOMMENDATION_AO; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_0AC321_RECOMMENDATION_AO" (
    "CATEGORY" character varying(255),
    "CUSTOM_FIELD_ID" bigint,
    "ID" character varying(255) NOT NULL,
    "NAME" character varying(255),
    "PERFORMANCE_IMPACT" double precision,
    "PROJECT_IDS" text,
    "RESOLVED" boolean,
    "TYPE" character varying(255)
);


ALTER TABLE public."AO_0AC321_RECOMMENDATION_AO" OWNER TO jira;

--
-- Name: AO_21D670_WHITELIST_RULES; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_21D670_WHITELIST_RULES" (
    "ALLOWINBOUND" boolean,
    "AUTHENTICATIONREQUIRED" boolean DEFAULT false NOT NULL,
    "EXPRESSION" text NOT NULL,
    "ID" integer NOT NULL,
    "TYPE" character varying(255) NOT NULL
);


ALTER TABLE public."AO_21D670_WHITELIST_RULES" OWNER TO jira;

--
-- Name: AO_21D670_WHITELIST_RULES_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_21D670_WHITELIST_RULES_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_21D670_WHITELIST_RULES_ID_seq" OWNER TO jira;

--
-- Name: AO_21D670_WHITELIST_RULES_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_21D670_WHITELIST_RULES_ID_seq" OWNED BY public."AO_21D670_WHITELIST_RULES"."ID";


--
-- Name: AO_21F425_MESSAGE_AO; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_21F425_MESSAGE_AO" (
    "CONTENT" text NOT NULL,
    "ID" character varying(255) NOT NULL
);


ALTER TABLE public."AO_21F425_MESSAGE_AO" OWNER TO jira;

--
-- Name: AO_21F425_MESSAGE_MAPPING_AO; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_21F425_MESSAGE_MAPPING_AO" (
    "ID" integer NOT NULL,
    "MESSAGE_ID" character varying(255) NOT NULL,
    "USER_HASH" character varying(255) NOT NULL
);


ALTER TABLE public."AO_21F425_MESSAGE_MAPPING_AO" OWNER TO jira;

--
-- Name: AO_21F425_MESSAGE_MAPPING_AO_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_21F425_MESSAGE_MAPPING_AO_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_21F425_MESSAGE_MAPPING_AO_ID_seq" OWNER TO jira;

--
-- Name: AO_21F425_MESSAGE_MAPPING_AO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_21F425_MESSAGE_MAPPING_AO_ID_seq" OWNED BY public."AO_21F425_MESSAGE_MAPPING_AO"."ID";


--
-- Name: AO_21F425_USER_PROPERTY_AO; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_21F425_USER_PROPERTY_AO" (
    "ID" integer NOT NULL,
    "KEY" character varying(255) NOT NULL,
    "USER" character varying(255) NOT NULL,
    "VALUE" character varying(255) NOT NULL
);


ALTER TABLE public."AO_21F425_USER_PROPERTY_AO" OWNER TO jira;

--
-- Name: AO_21F425_USER_PROPERTY_AO_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_21F425_USER_PROPERTY_AO_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_21F425_USER_PROPERTY_AO_ID_seq" OWNER TO jira;

--
-- Name: AO_21F425_USER_PROPERTY_AO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_21F425_USER_PROPERTY_AO_ID_seq" OWNED BY public."AO_21F425_USER_PROPERTY_AO"."ID";


--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_38321B_CUSTOM_CONTENT_LINK" (
    "CONTENT_KEY" character varying(255),
    "ID" integer NOT NULL,
    "LINK_LABEL" character varying(255),
    "LINK_URL" character varying(255),
    "SEQUENCE" integer DEFAULT 0
);


ALTER TABLE public."AO_38321B_CUSTOM_CONTENT_LINK" OWNER TO jira;

--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_38321B_CUSTOM_CONTENT_LINK_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_38321B_CUSTOM_CONTENT_LINK_ID_seq" OWNER TO jira;

--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_38321B_CUSTOM_CONTENT_LINK_ID_seq" OWNED BY public."AO_38321B_CUSTOM_CONTENT_LINK"."ID";


--
-- Name: AO_3B1893_LOOP_DETECTION; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_3B1893_LOOP_DETECTION" (
    "COUNTER" integer DEFAULT 0 NOT NULL,
    "EXPIRES_AT" bigint DEFAULT 0 NOT NULL,
    "ID" integer NOT NULL,
    "SENDER_EMAIL" text NOT NULL
);


ALTER TABLE public."AO_3B1893_LOOP_DETECTION" OWNER TO jira;

--
-- Name: AO_3B1893_LOOP_DETECTION_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_3B1893_LOOP_DETECTION_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_3B1893_LOOP_DETECTION_ID_seq" OWNER TO jira;

--
-- Name: AO_3B1893_LOOP_DETECTION_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_3B1893_LOOP_DETECTION_ID_seq" OWNED BY public."AO_3B1893_LOOP_DETECTION"."ID";


--
-- Name: AO_4789DD_DISABLED_CHECKS; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_4789DD_DISABLED_CHECKS" (
    "HEALTH_CHECK_KEY" character varying(255) NOT NULL,
    "ID" integer NOT NULL
);


ALTER TABLE public."AO_4789DD_DISABLED_CHECKS" OWNER TO jira;

--
-- Name: AO_4789DD_DISABLED_CHECKS_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_4789DD_DISABLED_CHECKS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_4789DD_DISABLED_CHECKS_ID_seq" OWNER TO jira;

--
-- Name: AO_4789DD_DISABLED_CHECKS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_4789DD_DISABLED_CHECKS_ID_seq" OWNED BY public."AO_4789DD_DISABLED_CHECKS"."ID";


--
-- Name: AO_4789DD_HEALTH_CHECK_STATUS; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_4789DD_HEALTH_CHECK_STATUS" (
    "APPLICATION_NAME" character varying(255),
    "COMPLETE_KEY" character varying(255),
    "DESCRIPTION" text,
    "FAILED_DATE" timestamp without time zone,
    "FAILURE_REASON" text,
    "ID" integer NOT NULL,
    "IS_HEALTHY" boolean,
    "IS_RESOLVED" boolean,
    "NODE_ID" character varying(255),
    "RESOLVED_DATE" timestamp without time zone,
    "SEVERITY" character varying(255),
    "STATUS_NAME" character varying(255) NOT NULL
);


ALTER TABLE public."AO_4789DD_HEALTH_CHECK_STATUS" OWNER TO jira;

--
-- Name: AO_4789DD_HEALTH_CHECK_STATUS_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_4789DD_HEALTH_CHECK_STATUS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_4789DD_HEALTH_CHECK_STATUS_ID_seq" OWNER TO jira;

--
-- Name: AO_4789DD_HEALTH_CHECK_STATUS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_4789DD_HEALTH_CHECK_STATUS_ID_seq" OWNED BY public."AO_4789DD_HEALTH_CHECK_STATUS"."ID";


--
-- Name: AO_4789DD_HEALTH_CHECK_WATCHER; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_4789DD_HEALTH_CHECK_WATCHER" (
    "ID" integer NOT NULL,
    "USER_KEY" character varying(255) NOT NULL
);


ALTER TABLE public."AO_4789DD_HEALTH_CHECK_WATCHER" OWNER TO jira;

--
-- Name: AO_4789DD_HEALTH_CHECK_WATCHER_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_4789DD_HEALTH_CHECK_WATCHER_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_4789DD_HEALTH_CHECK_WATCHER_ID_seq" OWNER TO jira;

--
-- Name: AO_4789DD_HEALTH_CHECK_WATCHER_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_4789DD_HEALTH_CHECK_WATCHER_ID_seq" OWNED BY public."AO_4789DD_HEALTH_CHECK_WATCHER"."ID";


--
-- Name: AO_4789DD_PROPERTIES; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_4789DD_PROPERTIES" (
    "ID" integer NOT NULL,
    "PROPERTY_NAME" character varying(255) NOT NULL,
    "PROPERTY_VALUE" character varying(255) NOT NULL
);


ALTER TABLE public."AO_4789DD_PROPERTIES" OWNER TO jira;

--
-- Name: AO_4789DD_PROPERTIES_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_4789DD_PROPERTIES_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_4789DD_PROPERTIES_ID_seq" OWNER TO jira;

--
-- Name: AO_4789DD_PROPERTIES_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_4789DD_PROPERTIES_ID_seq" OWNED BY public."AO_4789DD_PROPERTIES"."ID";


--
-- Name: AO_4789DD_READ_NOTIFICATIONS; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_4789DD_READ_NOTIFICATIONS" (
    "ID" integer NOT NULL,
    "IS_SNOOZED" boolean,
    "NOTIFICATION_ID" integer NOT NULL,
    "SNOOZE_COUNT" integer,
    "SNOOZE_DATE" timestamp without time zone,
    "USER_KEY" character varying(255) NOT NULL
);


ALTER TABLE public."AO_4789DD_READ_NOTIFICATIONS" OWNER TO jira;

--
-- Name: AO_4789DD_READ_NOTIFICATIONS_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_4789DD_READ_NOTIFICATIONS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_4789DD_READ_NOTIFICATIONS_ID_seq" OWNER TO jira;

--
-- Name: AO_4789DD_READ_NOTIFICATIONS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_4789DD_READ_NOTIFICATIONS_ID_seq" OWNED BY public."AO_4789DD_READ_NOTIFICATIONS"."ID";


--
-- Name: AO_4789DD_SHORTENED_KEY; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_4789DD_SHORTENED_KEY" (
    "ID" integer NOT NULL,
    "KEY" character varying(255) NOT NULL
);


ALTER TABLE public."AO_4789DD_SHORTENED_KEY" OWNER TO jira;

--
-- Name: AO_4789DD_SHORTENED_KEY_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_4789DD_SHORTENED_KEY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_4789DD_SHORTENED_KEY_ID_seq" OWNER TO jira;

--
-- Name: AO_4789DD_SHORTENED_KEY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_4789DD_SHORTENED_KEY_ID_seq" OWNED BY public."AO_4789DD_SHORTENED_KEY"."ID";


--
-- Name: AO_4789DD_TASK_MONITOR; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_4789DD_TASK_MONITOR" (
    "CLUSTERED_TASK_ID" character varying(255),
    "CREATED_TIMESTAMP" bigint DEFAULT 0,
    "ID" integer NOT NULL,
    "NODE_ID" character varying(255),
    "PROGRESS_MESSAGE" text,
    "PROGRESS_PERCENTAGE" integer,
    "SERIALIZED_ERRORS" text,
    "SERIALIZED_WARNINGS" text,
    "TASK_ID" character varying(255) NOT NULL,
    "TASK_MONITOR_KIND" character varying(255),
    "TASK_STATUS" text
);


ALTER TABLE public."AO_4789DD_TASK_MONITOR" OWNER TO jira;

--
-- Name: AO_4789DD_TASK_MONITOR_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_4789DD_TASK_MONITOR_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_4789DD_TASK_MONITOR_ID_seq" OWNER TO jira;

--
-- Name: AO_4789DD_TASK_MONITOR_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_4789DD_TASK_MONITOR_ID_seq" OWNED BY public."AO_4789DD_TASK_MONITOR"."ID";


--
-- Name: AO_4AEACD_WEBHOOK_DAO; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_4AEACD_WEBHOOK_DAO" (
    "ENABLED" boolean,
    "ENCODED_EVENTS" text,
    "FILTER" text,
    "ID" integer NOT NULL,
    "JQL" character varying(255),
    "LAST_UPDATED" timestamp without time zone NOT NULL,
    "LAST_UPDATED_USER" character varying(255) NOT NULL,
    "NAME" text NOT NULL,
    "REGISTRATION_METHOD" character varying(255) NOT NULL,
    "URL" text NOT NULL,
    "PARAMETERS" text,
    "EXCLUDE_ISSUE_DETAILS" boolean
);


ALTER TABLE public."AO_4AEACD_WEBHOOK_DAO" OWNER TO jira;

--
-- Name: AO_4AEACD_WEBHOOK_DAO_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_4AEACD_WEBHOOK_DAO_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_4AEACD_WEBHOOK_DAO_ID_seq" OWNER TO jira;

--
-- Name: AO_4AEACD_WEBHOOK_DAO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_4AEACD_WEBHOOK_DAO_ID_seq" OWNED BY public."AO_4AEACD_WEBHOOK_DAO"."ID";


--
-- Name: AO_550953_SHORTCUT; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_550953_SHORTCUT" (
    "ID" integer NOT NULL,
    "NAME" character varying(255),
    "PROJECT_ID" bigint,
    "SHORTCUT_URL" text,
    "URL" character varying(255),
    "ICON" character varying(255),
    "SEQUENCE" integer
);


ALTER TABLE public."AO_550953_SHORTCUT" OWNER TO jira;

--
-- Name: AO_550953_SHORTCUT_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_550953_SHORTCUT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_550953_SHORTCUT_ID_seq" OWNER TO jira;

--
-- Name: AO_550953_SHORTCUT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_550953_SHORTCUT_ID_seq" OWNED BY public."AO_550953_SHORTCUT"."ID";


--
-- Name: AO_563AEE_ACTIVITY_ENTITY; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_563AEE_ACTIVITY_ENTITY" (
    "ACTIVITY_ID" bigint NOT NULL,
    "ACTOR_ID" integer,
    "CONTENT" text,
    "GENERATOR_DISPLAY_NAME" character varying(255),
    "GENERATOR_ID" character varying(450),
    "ICON_ID" integer,
    "ID" character varying(450),
    "ISSUE_KEY" character varying(255),
    "OBJECT_ID" integer,
    "POSTER" character varying(255),
    "PROJECT_KEY" character varying(255),
    "PUBLISHED" timestamp without time zone,
    "TARGET_ID" integer,
    "TITLE" character varying(255),
    "URL" character varying(450),
    "USERNAME" character varying(255),
    "VERB" character varying(450)
);


ALTER TABLE public."AO_563AEE_ACTIVITY_ENTITY" OWNER TO jira;

--
-- Name: AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq" OWNER TO jira;

--
-- Name: AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq" OWNED BY public."AO_563AEE_ACTIVITY_ENTITY"."ACTIVITY_ID";


--
-- Name: AO_563AEE_ACTOR_ENTITY; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_563AEE_ACTOR_ENTITY" (
    "FULL_NAME" character varying(255),
    "ID" integer NOT NULL,
    "PROFILE_PAGE_URI" character varying(450),
    "PROFILE_PICTURE_URI" character varying(450),
    "USERNAME" character varying(255)
);


ALTER TABLE public."AO_563AEE_ACTOR_ENTITY" OWNER TO jira;

--
-- Name: AO_563AEE_ACTOR_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_563AEE_ACTOR_ENTITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_563AEE_ACTOR_ENTITY_ID_seq" OWNER TO jira;

--
-- Name: AO_563AEE_ACTOR_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_563AEE_ACTOR_ENTITY_ID_seq" OWNED BY public."AO_563AEE_ACTOR_ENTITY"."ID";


--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_563AEE_MEDIA_LINK_ENTITY" (
    "DURATION" integer,
    "HEIGHT" integer,
    "ID" integer NOT NULL,
    "URL" character varying(450),
    "WIDTH" integer
);


ALTER TABLE public."AO_563AEE_MEDIA_LINK_ENTITY" OWNER TO jira;

--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_563AEE_MEDIA_LINK_ENTITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_563AEE_MEDIA_LINK_ENTITY_ID_seq" OWNER TO jira;

--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_563AEE_MEDIA_LINK_ENTITY_ID_seq" OWNED BY public."AO_563AEE_MEDIA_LINK_ENTITY"."ID";


--
-- Name: AO_563AEE_OBJECT_ENTITY; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_563AEE_OBJECT_ENTITY" (
    "CONTENT" character varying(255),
    "DISPLAY_NAME" character varying(255),
    "ID" integer NOT NULL,
    "IMAGE_ID" integer,
    "OBJECT_ID" character varying(450),
    "OBJECT_TYPE" character varying(450),
    "SUMMARY" character varying(255),
    "URL" character varying(450)
);


ALTER TABLE public."AO_563AEE_OBJECT_ENTITY" OWNER TO jira;

--
-- Name: AO_563AEE_OBJECT_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_563AEE_OBJECT_ENTITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_563AEE_OBJECT_ENTITY_ID_seq" OWNER TO jira;

--
-- Name: AO_563AEE_OBJECT_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_563AEE_OBJECT_ENTITY_ID_seq" OWNED BY public."AO_563AEE_OBJECT_ENTITY"."ID";


--
-- Name: AO_563AEE_TARGET_ENTITY; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_563AEE_TARGET_ENTITY" (
    "CONTENT" character varying(255),
    "DISPLAY_NAME" character varying(255),
    "ID" integer NOT NULL,
    "IMAGE_ID" integer,
    "OBJECT_ID" character varying(450),
    "OBJECT_TYPE" character varying(450),
    "SUMMARY" character varying(255),
    "URL" character varying(450)
);


ALTER TABLE public."AO_563AEE_TARGET_ENTITY" OWNER TO jira;

--
-- Name: AO_563AEE_TARGET_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_563AEE_TARGET_ENTITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_563AEE_TARGET_ENTITY_ID_seq" OWNER TO jira;

--
-- Name: AO_563AEE_TARGET_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_563AEE_TARGET_ENTITY_ID_seq" OWNED BY public."AO_563AEE_TARGET_ENTITY"."ID";


--
-- Name: AO_575BF5_DEV_SUMMARY; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_575BF5_DEV_SUMMARY" (
    "CREATED" timestamp without time zone NOT NULL,
    "ID" integer NOT NULL,
    "ISSUE_ID" bigint DEFAULT 0 NOT NULL,
    "JSON" text,
    "PROVIDER_SOURCE_ID" character varying(255) NOT NULL,
    "UPDATED" timestamp without time zone NOT NULL
);


ALTER TABLE public."AO_575BF5_DEV_SUMMARY" OWNER TO jira;

--
-- Name: AO_575BF5_DEV_SUMMARY_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_575BF5_DEV_SUMMARY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_575BF5_DEV_SUMMARY_ID_seq" OWNER TO jira;

--
-- Name: AO_575BF5_DEV_SUMMARY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_575BF5_DEV_SUMMARY_ID_seq" OWNED BY public."AO_575BF5_DEV_SUMMARY"."ID";


--
-- Name: AO_575BF5_PROCESSED_COMMITS; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_575BF5_PROCESSED_COMMITS" (
    "COMMIT_HASH" character varying(255) NOT NULL,
    "ID" integer NOT NULL,
    "METADATA_HASH" character varying(255)
);


ALTER TABLE public."AO_575BF5_PROCESSED_COMMITS" OWNER TO jira;

--
-- Name: AO_575BF5_PROCESSED_COMMITS_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_575BF5_PROCESSED_COMMITS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_575BF5_PROCESSED_COMMITS_ID_seq" OWNER TO jira;

--
-- Name: AO_575BF5_PROCESSED_COMMITS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_575BF5_PROCESSED_COMMITS_ID_seq" OWNED BY public."AO_575BF5_PROCESSED_COMMITS"."ID";


--
-- Name: AO_575BF5_PROVIDER_ISSUE; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_575BF5_PROVIDER_ISSUE" (
    "ID" integer NOT NULL,
    "ISSUE_ID" bigint DEFAULT 0 NOT NULL,
    "PROVIDER_SOURCE_ID" character varying(255) NOT NULL,
    "STALE_AFTER" bigint
);


ALTER TABLE public."AO_575BF5_PROVIDER_ISSUE" OWNER TO jira;

--
-- Name: AO_575BF5_PROVIDER_ISSUE_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_575BF5_PROVIDER_ISSUE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_575BF5_PROVIDER_ISSUE_ID_seq" OWNER TO jira;

--
-- Name: AO_575BF5_PROVIDER_ISSUE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_575BF5_PROVIDER_ISSUE_ID_seq" OWNED BY public."AO_575BF5_PROVIDER_ISSUE"."ID";


--
-- Name: AO_575BF5_PROVIDER_SEQ_NO; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_575BF5_PROVIDER_SEQ_NO" (
    "ID" integer NOT NULL,
    "PROVIDER_SOURCE_ID" character varying(255) NOT NULL,
    "SEQUENCE_NO" character varying(255)
);


ALTER TABLE public."AO_575BF5_PROVIDER_SEQ_NO" OWNER TO jira;

--
-- Name: AO_575BF5_PROVIDER_SEQ_NO_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_575BF5_PROVIDER_SEQ_NO_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_575BF5_PROVIDER_SEQ_NO_ID_seq" OWNER TO jira;

--
-- Name: AO_575BF5_PROVIDER_SEQ_NO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_575BF5_PROVIDER_SEQ_NO_ID_seq" OWNED BY public."AO_575BF5_PROVIDER_SEQ_NO"."ID";


--
-- Name: AO_589059_AUDIT_ITEM; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_589059_AUDIT_ITEM" (
    "AUTHOR_KEY" character varying(255),
    "CATEGORY" character varying(255),
    "CLIENT_KEY" character varying(255) NOT NULL,
    "CREATED" timestamp without time zone NOT NULL,
    "DESCRIPTION" text,
    "DURATION" bigint DEFAULT 0,
    "END_TIME" timestamp without time zone,
    "END_TO_END_DURATION" bigint,
    "EVENT_SOURCE" character varying(255),
    "ID" bigint NOT NULL,
    "OBJECT_ITEM_ID" bigint,
    "OBJECT_ITEM_NAME" character varying(255),
    "OBJECT_ITEM_PARENT_ID" character varying(255),
    "OBJECT_ITEM_PARENT_NAME" character varying(255),
    "OBJECT_ITEM_TYPE" character varying(255),
    "START_TIME" timestamp without time zone,
    "SUMMARY" character varying(255)
);


ALTER TABLE public."AO_589059_AUDIT_ITEM" OWNER TO jira;

--
-- Name: AO_589059_AUDIT_ITEM_ASC_ITEM; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_589059_AUDIT_ITEM_ASC_ITEM" (
    "ASSOC_ITEM_ID" character varying(255),
    "AUDIT_ITEM_COMPONENT_CHANGE_ID" bigint,
    "AUDIT_ITEM_ID" bigint,
    "ID" bigint NOT NULL,
    "NAME" character varying(255),
    "PARENT_ID" character varying(255),
    "PARENT_NAME" character varying(255),
    "TYPE_NAME" character varying(255)
);


ALTER TABLE public."AO_589059_AUDIT_ITEM_ASC_ITEM" OWNER TO jira;

--
-- Name: AO_589059_AUDIT_ITEM_ASC_ITEM_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_589059_AUDIT_ITEM_ASC_ITEM_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_589059_AUDIT_ITEM_ASC_ITEM_ID_seq" OWNER TO jira;

--
-- Name: AO_589059_AUDIT_ITEM_ASC_ITEM_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_589059_AUDIT_ITEM_ASC_ITEM_ID_seq" OWNED BY public."AO_589059_AUDIT_ITEM_ASC_ITEM"."ID";


--
-- Name: AO_589059_AUDIT_ITEM_CGE_ITEM; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_589059_AUDIT_ITEM_CGE_ITEM" (
    "AUDIT_ITEM_COMPONENT_CHANGE_ID" bigint,
    "AUDIT_ITEM_ID" bigint,
    "CHANGE_FROM" text,
    "CHANGE_TO" text,
    "FIELD_NAME" character varying(255),
    "ID" bigint NOT NULL,
    "MESSAGE" text
);


ALTER TABLE public."AO_589059_AUDIT_ITEM_CGE_ITEM" OWNER TO jira;

--
-- Name: AO_589059_AUDIT_ITEM_CGE_ITEM_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_589059_AUDIT_ITEM_CGE_ITEM_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_589059_AUDIT_ITEM_CGE_ITEM_ID_seq" OWNER TO jira;

--
-- Name: AO_589059_AUDIT_ITEM_CGE_ITEM_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_589059_AUDIT_ITEM_CGE_ITEM_ID_seq" OWNED BY public."AO_589059_AUDIT_ITEM_CGE_ITEM"."ID";


--
-- Name: AO_589059_AUDIT_ITEM_COMP_CGE; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_589059_AUDIT_ITEM_COMP_CGE" (
    "AUDIT_ITEM_ID" bigint,
    "COMPONENT" character varying(255),
    "COMPONENT_ID" bigint,
    "COMPONENT_NAME_KEY" character varying(255),
    "DURATION" bigint DEFAULT 0,
    "ID" bigint NOT NULL,
    "OPTIMISED_IDS" character varying(255),
    "START_TIME" timestamp without time zone
);


ALTER TABLE public."AO_589059_AUDIT_ITEM_COMP_CGE" OWNER TO jira;

--
-- Name: AO_589059_AUDIT_ITEM_COMP_CGE_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_589059_AUDIT_ITEM_COMP_CGE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_589059_AUDIT_ITEM_COMP_CGE_ID_seq" OWNER TO jira;

--
-- Name: AO_589059_AUDIT_ITEM_COMP_CGE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_589059_AUDIT_ITEM_COMP_CGE_ID_seq" OWNED BY public."AO_589059_AUDIT_ITEM_COMP_CGE"."ID";


--
-- Name: AO_589059_AUDIT_ITEM_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_589059_AUDIT_ITEM_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_589059_AUDIT_ITEM_ID_seq" OWNER TO jira;

--
-- Name: AO_589059_AUDIT_ITEM_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_589059_AUDIT_ITEM_ID_seq" OWNED BY public."AO_589059_AUDIT_ITEM"."ID";


--
-- Name: AO_589059_AUDIT_ITEM_PROJECT; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_589059_AUDIT_ITEM_PROJECT" (
    "AUDIT_ITEM_ID" bigint,
    "ID" bigint NOT NULL,
    "PROJECT_ID" character varying(255) NOT NULL
);


ALTER TABLE public."AO_589059_AUDIT_ITEM_PROJECT" OWNER TO jira;

--
-- Name: AO_589059_AUDIT_ITEM_PROJECT_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_589059_AUDIT_ITEM_PROJECT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_589059_AUDIT_ITEM_PROJECT_ID_seq" OWNER TO jira;

--
-- Name: AO_589059_AUDIT_ITEM_PROJECT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_589059_AUDIT_ITEM_PROJECT_ID_seq" OWNED BY public."AO_589059_AUDIT_ITEM_PROJECT"."ID";


--
-- Name: AO_589059_AUTOMATION_QUEUE; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_589059_AUTOMATION_QUEUE" (
    "AUDIT_ITEM_ID" bigint,
    "CLAIMANT" character varying(127),
    "CLAIM_COUNT" integer DEFAULT 0,
    "CLAIM_TIME" timestamp without time zone,
    "CLIENT_KEY" character varying(255) NOT NULL,
    "CREATED" timestamp without time zone NOT NULL,
    "EXECUTION_UUID" character varying(127),
    "ID" bigint NOT NULL,
    "PAYLOAD" text,
    "PRIORITY" bigint DEFAULT 0 NOT NULL,
    "RULE_ID" bigint,
    "ZIPPED_PAYLOAD" text
);


ALTER TABLE public."AO_589059_AUTOMATION_QUEUE" OWNER TO jira;

--
-- Name: AO_589059_AUTOMATION_QUEUE_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_589059_AUTOMATION_QUEUE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_589059_AUTOMATION_QUEUE_ID_seq" OWNER TO jira;

--
-- Name: AO_589059_AUTOMATION_QUEUE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_589059_AUTOMATION_QUEUE_ID_seq" OWNED BY public."AO_589059_AUTOMATION_QUEUE"."ID";


--
-- Name: AO_589059_COUNTERS; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_589059_COUNTERS" (
    "CLIENT_KEY" character varying(255) NOT NULL,
    "COUNT" bigint DEFAULT 0 NOT NULL,
    "ID" bigint NOT NULL,
    "KEY" character varying(255) NOT NULL
);


ALTER TABLE public."AO_589059_COUNTERS" OWNER TO jira;

--
-- Name: AO_589059_COUNTERS_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_589059_COUNTERS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_589059_COUNTERS_ID_seq" OWNER TO jira;

--
-- Name: AO_589059_COUNTERS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_589059_COUNTERS_ID_seq" OWNED BY public."AO_589059_COUNTERS"."ID";


--
-- Name: AO_589059_LEGACY_RULE_LINK; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_589059_LEGACY_RULE_LINK" (
    "ID" bigint NOT NULL,
    "LEGACY_ID" bigint DEFAULT 0 NOT NULL,
    "NEW_ID" bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public."AO_589059_LEGACY_RULE_LINK" OWNER TO jira;

--
-- Name: AO_589059_LEGACY_RULE_LINK_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_589059_LEGACY_RULE_LINK_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_589059_LEGACY_RULE_LINK_ID_seq" OWNER TO jira;

--
-- Name: AO_589059_LEGACY_RULE_LINK_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_589059_LEGACY_RULE_LINK_ID_seq" OWNED BY public."AO_589059_LEGACY_RULE_LINK"."ID";


--
-- Name: AO_589059_RULE_CFG_COMPONENT; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_589059_RULE_CFG_COMPONENT" (
    "COMPONENT" character varying(255) NOT NULL,
    "CONDITION_PARENT_ID" bigint,
    "ID" bigint NOT NULL,
    "PARENT_CFG_COMPONENT_ID" bigint,
    "RULE_CONFIG_ID" bigint NOT NULL,
    "SCHEMA_VERSION" integer DEFAULT 1 NOT NULL,
    "SEQUENCE" integer DEFAULT 0 NOT NULL,
    "TYPE" character varying(255) NOT NULL,
    "VALUE" text
);


ALTER TABLE public."AO_589059_RULE_CFG_COMPONENT" OWNER TO jira;

--
-- Name: AO_589059_RULE_CFG_COMPONENT_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_589059_RULE_CFG_COMPONENT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_589059_RULE_CFG_COMPONENT_ID_seq" OWNER TO jira;

--
-- Name: AO_589059_RULE_CFG_COMPONENT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_589059_RULE_CFG_COMPONENT_ID_seq" OWNED BY public."AO_589059_RULE_CFG_COMPONENT"."ID";


--
-- Name: AO_589059_RULE_CFG_PROJ_ASSOC; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_589059_RULE_CFG_PROJ_ASSOC" (
    "ID" bigint NOT NULL,
    "PROJECT_ID" character varying(255),
    "PROJECT_TYPE_KEY" character varying(255),
    "RULE_CONFIG_ID" bigint NOT NULL
);


ALTER TABLE public."AO_589059_RULE_CFG_PROJ_ASSOC" OWNER TO jira;

--
-- Name: AO_589059_RULE_CFG_PROJ_ASSOC_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_589059_RULE_CFG_PROJ_ASSOC_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_589059_RULE_CFG_PROJ_ASSOC_ID_seq" OWNER TO jira;

--
-- Name: AO_589059_RULE_CFG_PROJ_ASSOC_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_589059_RULE_CFG_PROJ_ASSOC_ID_seq" OWNED BY public."AO_589059_RULE_CFG_PROJ_ASSOC"."ID";


--
-- Name: AO_589059_RULE_CONFIG; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_589059_RULE_CONFIG" (
    "ACTOR_KEY" character varying(255) NOT NULL,
    "AUTHOR_KEY" character varying(255) NOT NULL,
    "CAN_OTHER_RULE_TRIGGER" boolean,
    "CLIENT_KEY" character varying(255) NOT NULL,
    "CREATED" timestamp without time zone NOT NULL,
    "DESCRIPTION" text,
    "ID" bigint NOT NULL,
    "NAME" character varying(255) NOT NULL,
    "NOTIFY_ON_ERROR" character varying(255) DEFAULT 'FIRSTERROR'::character varying NOT NULL,
    "PROJECT_ID" character varying(255),
    "PROJECT_TYPE_KEY" character varying(255),
    "STATE" character varying(255) NOT NULL,
    "UPDATED" timestamp without time zone
);


ALTER TABLE public."AO_589059_RULE_CONFIG" OWNER TO jira;

--
-- Name: AO_589059_RULE_CONFIG_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_589059_RULE_CONFIG_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_589059_RULE_CONFIG_ID_seq" OWNER TO jira;

--
-- Name: AO_589059_RULE_CONFIG_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_589059_RULE_CONFIG_ID_seq" OWNED BY public."AO_589059_RULE_CONFIG"."ID";


--
-- Name: AO_589059_RULE_LABEL; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_589059_RULE_LABEL" (
    "COLOR" character varying(255) NOT NULL,
    "ID" bigint NOT NULL,
    "NAME" character varying(255) NOT NULL
);


ALTER TABLE public."AO_589059_RULE_LABEL" OWNER TO jira;

--
-- Name: AO_589059_RULE_LABEL_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_589059_RULE_LABEL_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_589059_RULE_LABEL_ID_seq" OWNER TO jira;

--
-- Name: AO_589059_RULE_LABEL_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_589059_RULE_LABEL_ID_seq" OWNED BY public."AO_589059_RULE_LABEL"."ID";


--
-- Name: AO_589059_RULE_SCHEDULE; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_589059_RULE_SCHEDULE" (
    "CLIENT_KEY" character varying(255) NOT NULL,
    "ERROR_COUNT" bigint DEFAULT 0 NOT NULL,
    "ID" bigint NOT NULL,
    "NEXT_EXECUTION" timestamp without time zone NOT NULL,
    "PAYLOAD" character varying(255),
    "RULE_CONFIG_ID" bigint NOT NULL,
    "TYPE" character varying(255) DEFAULT 'TRIGGER'::character varying NOT NULL
);


ALTER TABLE public."AO_589059_RULE_SCHEDULE" OWNER TO jira;

--
-- Name: AO_589059_RULE_SCHEDULE_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_589059_RULE_SCHEDULE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_589059_RULE_SCHEDULE_ID_seq" OWNER TO jira;

--
-- Name: AO_589059_RULE_SCHEDULE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_589059_RULE_SCHEDULE_ID_seq" OWNED BY public."AO_589059_RULE_SCHEDULE"."ID";


--
-- Name: AO_589059_RULE_SECRET; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_589059_RULE_SECRET" (
    "ID" bigint NOT NULL,
    "KEY" character varying(255) NOT NULL,
    "VALUE" character varying(255) NOT NULL
);


ALTER TABLE public."AO_589059_RULE_SECRET" OWNER TO jira;

--
-- Name: AO_589059_RULE_SECRET_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_589059_RULE_SECRET_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_589059_RULE_SECRET_ID_seq" OWNER TO jira;

--
-- Name: AO_589059_RULE_SECRET_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_589059_RULE_SECRET_ID_seq" OWNED BY public."AO_589059_RULE_SECRET"."ID";


--
-- Name: AO_589059_RULE_STAT; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_589059_RULE_STAT" (
    "AUDIT_ID" bigint NOT NULL,
    "CATEGORY" character varying(40) DEFAULT 'SUCCESS'::character varying NOT NULL,
    "CREATED" timestamp without time zone NOT NULL,
    "DURATION" bigint NOT NULL,
    "EVENT_HASH" character varying(255),
    "ID" bigint NOT NULL,
    "QUEUED_ITEM_COUNT" integer DEFAULT 0 NOT NULL,
    "RULE_ID" bigint NOT NULL
);


ALTER TABLE public."AO_589059_RULE_STAT" OWNER TO jira;

--
-- Name: AO_589059_RULE_STATE_LATEST; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_589059_RULE_STATE_LATEST" (
    "CURRENT_AUDIT_ID" bigint NOT NULL,
    "CURRENT_CATEGORY" character varying(255) NOT NULL,
    "CURRENT_CREATED" timestamp without time zone NOT NULL,
    "EXEC_COUNT" bigint DEFAULT 0 NOT NULL,
    "ID" bigint NOT NULL,
    "PREVIOUS_AUDIT_ID" bigint,
    "PREVIOUS_CATEGORY" character varying(255),
    "PREVIOUS_CREATED" timestamp without time zone,
    "RULE_ID" bigint NOT NULL
);


ALTER TABLE public."AO_589059_RULE_STATE_LATEST" OWNER TO jira;

--
-- Name: AO_589059_RULE_STATE_LATEST_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_589059_RULE_STATE_LATEST_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_589059_RULE_STATE_LATEST_ID_seq" OWNER TO jira;

--
-- Name: AO_589059_RULE_STATE_LATEST_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_589059_RULE_STATE_LATEST_ID_seq" OWNED BY public."AO_589059_RULE_STATE_LATEST"."ID";


--
-- Name: AO_589059_RULE_STAT_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_589059_RULE_STAT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_589059_RULE_STAT_ID_seq" OWNER TO jira;

--
-- Name: AO_589059_RULE_STAT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_589059_RULE_STAT_ID_seq" OWNED BY public."AO_589059_RULE_STAT"."ID";


--
-- Name: AO_589059_RULE_STAT_ROLLUP_DAY; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_589059_RULE_STAT_ROLLUP_DAY" (
    "CATEGORY" character varying(40) DEFAULT 'SUCCESS'::character varying NOT NULL,
    "CLIENT_KEY" character varying(255) NOT NULL,
    "CREATED" timestamp without time zone NOT NULL,
    "DURATION" bigint NOT NULL,
    "END_TO_END_DURATION" bigint NOT NULL,
    "EXECUTION_COUNT" bigint NOT NULL,
    "ID" bigint NOT NULL,
    "QUEUED_ITEM_COUNT" bigint NOT NULL,
    "RULE_ID" bigint NOT NULL
);


ALTER TABLE public."AO_589059_RULE_STAT_ROLLUP_DAY" OWNER TO jira;

--
-- Name: AO_589059_RULE_STAT_ROLLUP_DAY_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_589059_RULE_STAT_ROLLUP_DAY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_589059_RULE_STAT_ROLLUP_DAY_ID_seq" OWNER TO jira;

--
-- Name: AO_589059_RULE_STAT_ROLLUP_DAY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_589059_RULE_STAT_ROLLUP_DAY_ID_seq" OWNED BY public."AO_589059_RULE_STAT_ROLLUP_DAY"."ID";


--
-- Name: AO_589059_RULE_STAT_ROLLUP_HR; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_589059_RULE_STAT_ROLLUP_HR" (
    "CATEGORY" character varying(40) DEFAULT 'SUCCESS'::character varying NOT NULL,
    "CLIENT_KEY" character varying(255) NOT NULL,
    "CREATED" timestamp without time zone NOT NULL,
    "DURATION" bigint NOT NULL,
    "END_TO_END_DURATION" bigint NOT NULL,
    "EXECUTION_COUNT" bigint NOT NULL,
    "ID" bigint NOT NULL,
    "QUEUED_ITEM_COUNT" bigint NOT NULL,
    "RULE_ID" bigint NOT NULL
);


ALTER TABLE public."AO_589059_RULE_STAT_ROLLUP_HR" OWNER TO jira;

--
-- Name: AO_589059_RULE_STAT_ROLLUP_HR_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_589059_RULE_STAT_ROLLUP_HR_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_589059_RULE_STAT_ROLLUP_HR_ID_seq" OWNER TO jira;

--
-- Name: AO_589059_RULE_STAT_ROLLUP_HR_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_589059_RULE_STAT_ROLLUP_HR_ID_seq" OWNED BY public."AO_589059_RULE_STAT_ROLLUP_HR"."ID";


--
-- Name: AO_589059_RULE_STAT_ROLLUP_MIN; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_589059_RULE_STAT_ROLLUP_MIN" (
    "CATEGORY" character varying(40) DEFAULT 'SUCCESS'::character varying NOT NULL,
    "CLIENT_KEY" character varying(255) NOT NULL,
    "CREATED" timestamp without time zone NOT NULL,
    "DURATION" bigint NOT NULL,
    "END_TO_END_DURATION" bigint NOT NULL,
    "EXECUTION_COUNT" bigint NOT NULL,
    "ID" bigint NOT NULL,
    "QUEUED_ITEM_COUNT" bigint NOT NULL,
    "RULE_ID" bigint NOT NULL
);


ALTER TABLE public."AO_589059_RULE_STAT_ROLLUP_MIN" OWNER TO jira;

--
-- Name: AO_589059_RULE_STAT_ROLLUP_MIN_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_589059_RULE_STAT_ROLLUP_MIN_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_589059_RULE_STAT_ROLLUP_MIN_ID_seq" OWNER TO jira;

--
-- Name: AO_589059_RULE_STAT_ROLLUP_MIN_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_589059_RULE_STAT_ROLLUP_MIN_ID_seq" OWNED BY public."AO_589059_RULE_STAT_ROLLUP_MIN"."ID";


--
-- Name: AO_589059_RULE_TAG; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_589059_RULE_TAG" (
    "ID" bigint NOT NULL,
    "RULE_CONFIG_ID" bigint NOT NULL,
    "TAG_TYPE" character varying(255) NOT NULL,
    "TAG_VALUE" character varying(255)
);


ALTER TABLE public."AO_589059_RULE_TAG" OWNER TO jira;

--
-- Name: AO_589059_RULE_TAG_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_589059_RULE_TAG_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_589059_RULE_TAG_ID_seq" OWNER TO jira;

--
-- Name: AO_589059_RULE_TAG_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_589059_RULE_TAG_ID_seq" OWNED BY public."AO_589059_RULE_TAG"."ID";


--
-- Name: AO_589059_RULE_TO_LABEL; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_589059_RULE_TO_LABEL" (
    "ID" bigint NOT NULL,
    "LABEL_ID" bigint NOT NULL,
    "RULE_ID" bigint NOT NULL
);


ALTER TABLE public."AO_589059_RULE_TO_LABEL" OWNER TO jira;

--
-- Name: AO_589059_RULE_TO_LABEL_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_589059_RULE_TO_LABEL_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_589059_RULE_TO_LABEL_ID_seq" OWNER TO jira;

--
-- Name: AO_589059_RULE_TO_LABEL_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_589059_RULE_TO_LABEL_ID_seq" OWNED BY public."AO_589059_RULE_TO_LABEL"."ID";


--
-- Name: AO_589059_RULE_TO_SECRET; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_589059_RULE_TO_SECRET" (
    "ID" bigint NOT NULL,
    "KEY" character varying(255) NOT NULL,
    "RULE_ID" bigint NOT NULL
);


ALTER TABLE public."AO_589059_RULE_TO_SECRET" OWNER TO jira;

--
-- Name: AO_589059_RULE_TO_SECRET_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_589059_RULE_TO_SECRET_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_589059_RULE_TO_SECRET_ID_seq" OWNER TO jira;

--
-- Name: AO_589059_RULE_TO_SECRET_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_589059_RULE_TO_SECRET_ID_seq" OWNED BY public."AO_589059_RULE_TO_SECRET"."ID";


--
-- Name: AO_589059_SECRET_PROJ_ASSOC; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_589059_SECRET_PROJ_ASSOC" (
    "ID" bigint NOT NULL,
    "PROJECT_ID" character varying(255),
    "RULE_SECRET_ID" bigint NOT NULL
);


ALTER TABLE public."AO_589059_SECRET_PROJ_ASSOC" OWNER TO jira;

--
-- Name: AO_589059_SECRET_PROJ_ASSOC_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_589059_SECRET_PROJ_ASSOC_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_589059_SECRET_PROJ_ASSOC_ID_seq" OWNER TO jira;

--
-- Name: AO_589059_SECRET_PROJ_ASSOC_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_589059_SECRET_PROJ_ASSOC_ID_seq" OWNED BY public."AO_589059_SECRET_PROJ_ASSOC"."ID";


--
-- Name: AO_60DB71_AUDITENTRY; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_60DB71_AUDITENTRY" (
    "CATEGORY" character varying(255) NOT NULL,
    "DATA" text NOT NULL,
    "ENTITY_CLASS" character varying(255) NOT NULL,
    "ENTITY_ID" bigint NOT NULL,
    "ID" bigint NOT NULL,
    "TIME" bigint,
    "USER" character varying(255)
);


ALTER TABLE public."AO_60DB71_AUDITENTRY" OWNER TO jira;

--
-- Name: AO_60DB71_AUDITENTRY_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_60DB71_AUDITENTRY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_AUDITENTRY_ID_seq" OWNER TO jira;

--
-- Name: AO_60DB71_AUDITENTRY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_60DB71_AUDITENTRY_ID_seq" OWNED BY public."AO_60DB71_AUDITENTRY"."ID";


--
-- Name: AO_60DB71_BOARDADMINS; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_60DB71_BOARDADMINS" (
    "ID" bigint NOT NULL,
    "KEY" character varying(255) NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL,
    "TYPE" character varying(255) NOT NULL
);


ALTER TABLE public."AO_60DB71_BOARDADMINS" OWNER TO jira;

--
-- Name: AO_60DB71_BOARDADMINS_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_60DB71_BOARDADMINS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_BOARDADMINS_ID_seq" OWNER TO jira;

--
-- Name: AO_60DB71_BOARDADMINS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_60DB71_BOARDADMINS_ID_seq" OWNED BY public."AO_60DB71_BOARDADMINS"."ID";


--
-- Name: AO_60DB71_CARDCOLOR; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_60DB71_CARDCOLOR" (
    "COLOR" character varying(255),
    "ID" bigint NOT NULL,
    "POS" integer DEFAULT 0 NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL,
    "STRATEGY" character varying(255),
    "VAL" character varying(255)
);


ALTER TABLE public."AO_60DB71_CARDCOLOR" OWNER TO jira;

--
-- Name: AO_60DB71_CARDCOLOR_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_60DB71_CARDCOLOR_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_CARDCOLOR_ID_seq" OWNER TO jira;

--
-- Name: AO_60DB71_CARDCOLOR_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_60DB71_CARDCOLOR_ID_seq" OWNED BY public."AO_60DB71_CARDCOLOR"."ID";


--
-- Name: AO_60DB71_CARDLAYOUT; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_60DB71_CARDLAYOUT" (
    "FIELD_ID" character varying(255) NOT NULL,
    "ID" bigint NOT NULL,
    "MODE_NAME" character varying(255) NOT NULL,
    "POS" integer DEFAULT 0 NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL
);


ALTER TABLE public."AO_60DB71_CARDLAYOUT" OWNER TO jira;

--
-- Name: AO_60DB71_CARDLAYOUT_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_60DB71_CARDLAYOUT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_CARDLAYOUT_ID_seq" OWNER TO jira;

--
-- Name: AO_60DB71_CARDLAYOUT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_60DB71_CARDLAYOUT_ID_seq" OWNED BY public."AO_60DB71_CARDLAYOUT"."ID";


--
-- Name: AO_60DB71_COLUMN; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_60DB71_COLUMN" (
    "ID" bigint NOT NULL,
    "MAXIM" double precision,
    "MINIM" double precision,
    "NAME" character varying(255),
    "POS" integer DEFAULT 0 NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL
);


ALTER TABLE public."AO_60DB71_COLUMN" OWNER TO jira;

--
-- Name: AO_60DB71_COLUMNSTATUS; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_60DB71_COLUMNSTATUS" (
    "COLUMN_ID" bigint NOT NULL,
    "ID" bigint NOT NULL,
    "POS" integer DEFAULT 0 NOT NULL,
    "STATUS_ID" character varying(255)
);


ALTER TABLE public."AO_60DB71_COLUMNSTATUS" OWNER TO jira;

--
-- Name: AO_60DB71_COLUMNSTATUS_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_60DB71_COLUMNSTATUS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_COLUMNSTATUS_ID_seq" OWNER TO jira;

--
-- Name: AO_60DB71_COLUMNSTATUS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_60DB71_COLUMNSTATUS_ID_seq" OWNED BY public."AO_60DB71_COLUMNSTATUS"."ID";


--
-- Name: AO_60DB71_COLUMN_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_60DB71_COLUMN_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_COLUMN_ID_seq" OWNER TO jira;

--
-- Name: AO_60DB71_COLUMN_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_60DB71_COLUMN_ID_seq" OWNED BY public."AO_60DB71_COLUMN"."ID";


--
-- Name: AO_60DB71_DETAILVIEWFIELD; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_60DB71_DETAILVIEWFIELD" (
    "FIELD_ID" character varying(255) NOT NULL,
    "ID" bigint NOT NULL,
    "POS" integer DEFAULT 0 NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL
);


ALTER TABLE public."AO_60DB71_DETAILVIEWFIELD" OWNER TO jira;

--
-- Name: AO_60DB71_DETAILVIEWFIELD_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_60DB71_DETAILVIEWFIELD_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_DETAILVIEWFIELD_ID_seq" OWNER TO jira;

--
-- Name: AO_60DB71_DETAILVIEWFIELD_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_60DB71_DETAILVIEWFIELD_ID_seq" OWNED BY public."AO_60DB71_DETAILVIEWFIELD"."ID";


--
-- Name: AO_60DB71_ESTIMATESTATISTIC; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_60DB71_ESTIMATESTATISTIC" (
    "FIELD_ID" character varying(255),
    "ID" bigint NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL,
    "TYPE_ID" character varying(255) NOT NULL
);


ALTER TABLE public."AO_60DB71_ESTIMATESTATISTIC" OWNER TO jira;

--
-- Name: AO_60DB71_ESTIMATESTATISTIC_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_60DB71_ESTIMATESTATISTIC_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_ESTIMATESTATISTIC_ID_seq" OWNER TO jira;

--
-- Name: AO_60DB71_ESTIMATESTATISTIC_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_60DB71_ESTIMATESTATISTIC_ID_seq" OWNED BY public."AO_60DB71_ESTIMATESTATISTIC"."ID";


--
-- Name: AO_60DB71_ISSUERANKING; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_60DB71_ISSUERANKING" (
    "CUSTOM_FIELD_ID" bigint DEFAULT 0 NOT NULL,
    "ID" bigint NOT NULL,
    "ISSUE_ID" bigint DEFAULT 0 NOT NULL,
    "NEXT_ID" bigint
);


ALTER TABLE public."AO_60DB71_ISSUERANKING" OWNER TO jira;

--
-- Name: AO_60DB71_ISSUERANKINGLOG; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_60DB71_ISSUERANKINGLOG" (
    "CUSTOM_FIELD_ID" bigint,
    "ID" bigint NOT NULL,
    "ISSUE_ID" bigint,
    "LOG_TYPE" character varying(255),
    "NEW_NEXT_ID" bigint,
    "NEW_PREVIOUS_ID" bigint,
    "OLD_NEXT_ID" bigint,
    "OLD_PREVIOUS_ID" bigint,
    "SANITY_CHECKED" character varying(255)
);


ALTER TABLE public."AO_60DB71_ISSUERANKINGLOG" OWNER TO jira;

--
-- Name: AO_60DB71_ISSUERANKINGLOG_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_60DB71_ISSUERANKINGLOG_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_ISSUERANKINGLOG_ID_seq" OWNER TO jira;

--
-- Name: AO_60DB71_ISSUERANKINGLOG_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_60DB71_ISSUERANKINGLOG_ID_seq" OWNED BY public."AO_60DB71_ISSUERANKINGLOG"."ID";


--
-- Name: AO_60DB71_ISSUERANKING_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_60DB71_ISSUERANKING_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_ISSUERANKING_ID_seq" OWNER TO jira;

--
-- Name: AO_60DB71_ISSUERANKING_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_60DB71_ISSUERANKING_ID_seq" OWNED BY public."AO_60DB71_ISSUERANKING"."ID";


--
-- Name: AO_60DB71_LEXORANK; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_60DB71_LEXORANK" (
    "BUCKET" integer DEFAULT 0,
    "FIELD_ID" bigint DEFAULT 0 NOT NULL,
    "ID" bigint NOT NULL,
    "ISSUE_ID" bigint DEFAULT 0 NOT NULL,
    "LOCK_HASH" character varying(255),
    "LOCK_TIME" bigint,
    "RANK" character varying(255) NOT NULL,
    "TYPE" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public."AO_60DB71_LEXORANK" OWNER TO jira;

--
-- Name: AO_60DB71_LEXORANKBALANCER; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_60DB71_LEXORANKBALANCER" (
    "DISABLE_RANK_OPERATIONS" boolean NOT NULL,
    "FIELD_ID" bigint NOT NULL,
    "ID" bigint NOT NULL,
    "REBALANCE_TIME" bigint NOT NULL
);


ALTER TABLE public."AO_60DB71_LEXORANKBALANCER" OWNER TO jira;

--
-- Name: AO_60DB71_LEXORANKBALANCER_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_60DB71_LEXORANKBALANCER_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_LEXORANKBALANCER_ID_seq" OWNER TO jira;

--
-- Name: AO_60DB71_LEXORANKBALANCER_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_60DB71_LEXORANKBALANCER_ID_seq" OWNED BY public."AO_60DB71_LEXORANKBALANCER"."ID";


--
-- Name: AO_60DB71_LEXORANK_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_60DB71_LEXORANK_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_LEXORANK_ID_seq" OWNER TO jira;

--
-- Name: AO_60DB71_LEXORANK_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_60DB71_LEXORANK_ID_seq" OWNED BY public."AO_60DB71_LEXORANK"."ID";


--
-- Name: AO_60DB71_NONWORKINGDAY; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_60DB71_NONWORKINGDAY" (
    "ID" bigint NOT NULL,
    "ISO8601_DATE" character varying(255) NOT NULL,
    "WORKING_DAYS_ID" bigint NOT NULL
);


ALTER TABLE public."AO_60DB71_NONWORKINGDAY" OWNER TO jira;

--
-- Name: AO_60DB71_NONWORKINGDAY_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_60DB71_NONWORKINGDAY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_NONWORKINGDAY_ID_seq" OWNER TO jira;

--
-- Name: AO_60DB71_NONWORKINGDAY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_60DB71_NONWORKINGDAY_ID_seq" OWNED BY public."AO_60DB71_NONWORKINGDAY"."ID";


--
-- Name: AO_60DB71_QUICKFILTER; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_60DB71_QUICKFILTER" (
    "DESCRIPTION" character varying(255),
    "ID" bigint NOT NULL,
    "LONG_QUERY" text,
    "NAME" character varying(255) NOT NULL,
    "POS" integer DEFAULT 0 NOT NULL,
    "QUERY" character varying(255),
    "RAPID_VIEW_ID" bigint NOT NULL
);


ALTER TABLE public."AO_60DB71_QUICKFILTER" OWNER TO jira;

--
-- Name: AO_60DB71_QUICKFILTER_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_60DB71_QUICKFILTER_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_QUICKFILTER_ID_seq" OWNER TO jira;

--
-- Name: AO_60DB71_QUICKFILTER_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_60DB71_QUICKFILTER_ID_seq" OWNED BY public."AO_60DB71_QUICKFILTER"."ID";


--
-- Name: AO_60DB71_RANKABLEOBJECT; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_60DB71_RANKABLEOBJECT" (
    "ID" bigint NOT NULL,
    "TYPE" character varying(255) NOT NULL
);


ALTER TABLE public."AO_60DB71_RANKABLEOBJECT" OWNER TO jira;

--
-- Name: AO_60DB71_RANKABLEOBJECT_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_60DB71_RANKABLEOBJECT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_RANKABLEOBJECT_ID_seq" OWNER TO jira;

--
-- Name: AO_60DB71_RANKABLEOBJECT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_60DB71_RANKABLEOBJECT_ID_seq" OWNED BY public."AO_60DB71_RANKABLEOBJECT"."ID";


--
-- Name: AO_60DB71_RAPIDVIEW; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_60DB71_RAPIDVIEW" (
    "CARD_COLOR_STRATEGY" character varying(255),
    "ID" bigint NOT NULL,
    "KAN_PLAN_ENABLED" boolean,
    "NAME" character varying(255) NOT NULL,
    "OLD_DONE_ISSUES_CUTOFF" character varying(255),
    "OWNER_USER_NAME" character varying(255) NOT NULL,
    "REFINED_VELOCITY_ACTIVE" boolean,
    "SAVED_FILTER_ID" bigint NOT NULL,
    "SHOW_DAYS_IN_COLUMN" boolean,
    "SHOW_EPIC_AS_PANEL" boolean,
    "SPRINTS_ENABLED" boolean,
    "SWIMLANE_STRATEGY" character varying(255)
);


ALTER TABLE public."AO_60DB71_RAPIDVIEW" OWNER TO jira;

--
-- Name: AO_60DB71_RAPIDVIEW_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_60DB71_RAPIDVIEW_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_RAPIDVIEW_ID_seq" OWNER TO jira;

--
-- Name: AO_60DB71_RAPIDVIEW_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_60DB71_RAPIDVIEW_ID_seq" OWNED BY public."AO_60DB71_RAPIDVIEW"."ID";


--
-- Name: AO_60DB71_SPRINT; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_60DB71_SPRINT" (
    "ACTIVATED_DATE" bigint,
    "AUTO_START_STOP" boolean,
    "CLOSED" boolean NOT NULL,
    "COMPLETE_DATE" bigint,
    "END_DATE" bigint,
    "GOAL" text,
    "ID" bigint NOT NULL,
    "INCOMPLETE_ISSUES_DESTINATION" bigint,
    "NAME" character varying(255) NOT NULL,
    "RAPID_VIEW_ID" bigint,
    "SEQUENCE" bigint,
    "STARTED" boolean,
    "START_DATE" bigint,
    "SYNCED" boolean
);


ALTER TABLE public."AO_60DB71_SPRINT" OWNER TO jira;

--
-- Name: AO_60DB71_SPRINT_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_60DB71_SPRINT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_SPRINT_ID_seq" OWNER TO jira;

--
-- Name: AO_60DB71_SPRINT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_60DB71_SPRINT_ID_seq" OWNED BY public."AO_60DB71_SPRINT"."ID";


--
-- Name: AO_60DB71_STATSFIELD; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_60DB71_STATSFIELD" (
    "ID" bigint NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL,
    "TYPE_ID" character varying(255) NOT NULL
);


ALTER TABLE public."AO_60DB71_STATSFIELD" OWNER TO jira;

--
-- Name: AO_60DB71_STATSFIELD_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_60DB71_STATSFIELD_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_STATSFIELD_ID_seq" OWNER TO jira;

--
-- Name: AO_60DB71_STATSFIELD_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_60DB71_STATSFIELD_ID_seq" OWNED BY public."AO_60DB71_STATSFIELD"."ID";


--
-- Name: AO_60DB71_SUBQUERY; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_60DB71_SUBQUERY" (
    "ID" bigint NOT NULL,
    "LONG_QUERY" text,
    "QUERY" character varying(255),
    "RAPID_VIEW_ID" bigint,
    "SECTION" character varying(255) NOT NULL
);


ALTER TABLE public."AO_60DB71_SUBQUERY" OWNER TO jira;

--
-- Name: AO_60DB71_SUBQUERY_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_60DB71_SUBQUERY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_SUBQUERY_ID_seq" OWNER TO jira;

--
-- Name: AO_60DB71_SUBQUERY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_60DB71_SUBQUERY_ID_seq" OWNED BY public."AO_60DB71_SUBQUERY"."ID";


--
-- Name: AO_60DB71_SWIMLANE; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_60DB71_SWIMLANE" (
    "DEFAULT_LANE" boolean NOT NULL,
    "DESCRIPTION" character varying(255),
    "ID" bigint NOT NULL,
    "LONG_QUERY" text,
    "NAME" character varying(255) NOT NULL,
    "POS" integer DEFAULT 0 NOT NULL,
    "QUERY" character varying(255),
    "RAPID_VIEW_ID" bigint NOT NULL
);


ALTER TABLE public."AO_60DB71_SWIMLANE" OWNER TO jira;

--
-- Name: AO_60DB71_SWIMLANE_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_60DB71_SWIMLANE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_SWIMLANE_ID_seq" OWNER TO jira;

--
-- Name: AO_60DB71_SWIMLANE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_60DB71_SWIMLANE_ID_seq" OWNED BY public."AO_60DB71_SWIMLANE"."ID";


--
-- Name: AO_60DB71_TRACKINGSTATISTIC; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_60DB71_TRACKINGSTATISTIC" (
    "FIELD_ID" character varying(255),
    "ID" bigint NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL,
    "TYPE_ID" character varying(255) NOT NULL
);


ALTER TABLE public."AO_60DB71_TRACKINGSTATISTIC" OWNER TO jira;

--
-- Name: AO_60DB71_TRACKINGSTATISTIC_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_60DB71_TRACKINGSTATISTIC_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_TRACKINGSTATISTIC_ID_seq" OWNER TO jira;

--
-- Name: AO_60DB71_TRACKINGSTATISTIC_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_60DB71_TRACKINGSTATISTIC_ID_seq" OWNED BY public."AO_60DB71_TRACKINGSTATISTIC"."ID";


--
-- Name: AO_60DB71_VERSION; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_60DB71_VERSION" (
    "ID" bigint NOT NULL,
    "START_DATE" bigint,
    "VERSION_ID" bigint NOT NULL
);


ALTER TABLE public."AO_60DB71_VERSION" OWNER TO jira;

--
-- Name: AO_60DB71_VERSION_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_60DB71_VERSION_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_VERSION_ID_seq" OWNER TO jira;

--
-- Name: AO_60DB71_VERSION_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_60DB71_VERSION_ID_seq" OWNED BY public."AO_60DB71_VERSION"."ID";


--
-- Name: AO_60DB71_WORKINGDAYS; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_60DB71_WORKINGDAYS" (
    "FRIDAY" boolean NOT NULL,
    "ID" bigint NOT NULL,
    "MONDAY" boolean NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL,
    "SATURDAY" boolean NOT NULL,
    "SUNDAY" boolean NOT NULL,
    "THURSDAY" boolean NOT NULL,
    "TIMEZONE" character varying(255) NOT NULL,
    "TUESDAY" boolean NOT NULL,
    "WEDNESDAY" boolean NOT NULL
);


ALTER TABLE public."AO_60DB71_WORKINGDAYS" OWNER TO jira;

--
-- Name: AO_60DB71_WORKINGDAYS_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_60DB71_WORKINGDAYS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_WORKINGDAYS_ID_seq" OWNER TO jira;

--
-- Name: AO_60DB71_WORKINGDAYS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_60DB71_WORKINGDAYS_ID_seq" OWNED BY public."AO_60DB71_WORKINGDAYS"."ID";


--
-- Name: AO_6FF49D_ACCESS_LOG_PRC_CTRL; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_ACCESS_LOG_PRC_CTRL" (
    "END_TIMESTAMP" bigint,
    "ID" integer NOT NULL,
    "INST_ANALYSIS_CTRL_ID" integer NOT NULL,
    "LAST_UPDATE_TIMESTAMP" bigint,
    "MESSAGE" text,
    "NODE" character varying(50) NOT NULL,
    "RETRY_COUNT" integer DEFAULT 0,
    "START_TIMESTAMP" bigint DEFAULT 0 NOT NULL,
    "STATUS" character varying(50) NOT NULL
);


ALTER TABLE public."AO_6FF49D_ACCESS_LOG_PRC_CTRL" OWNER TO jira;

--
-- Name: AO_6FF49D_ACCESS_LOG_PRC_CTRL_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_6FF49D_ACCESS_LOG_PRC_CTRL_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_6FF49D_ACCESS_LOG_PRC_CTRL_ID_seq" OWNER TO jira;

--
-- Name: AO_6FF49D_ACCESS_LOG_PRC_CTRL_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_6FF49D_ACCESS_LOG_PRC_CTRL_ID_seq" OWNED BY public."AO_6FF49D_ACCESS_LOG_PRC_CTRL"."ID";


--
-- Name: AO_6FF49D_ACCESS_LOG_PRC_ITEM; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_ACCESS_LOG_PRC_ITEM" (
    "ACCESS_LOG_PROC_CTRL_ID" integer NOT NULL,
    "END_TIMESTAMP" bigint,
    "FILE_NAME" character varying(100),
    "ID" integer NOT NULL,
    "MESSAGE" text,
    "PROCESSING_DATE" timestamp without time zone NOT NULL,
    "START_TIMESTAMP" bigint,
    "STATUS" character varying(50) NOT NULL
);


ALTER TABLE public."AO_6FF49D_ACCESS_LOG_PRC_ITEM" OWNER TO jira;

--
-- Name: AO_6FF49D_ACCESS_LOG_PRC_ITEM_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_6FF49D_ACCESS_LOG_PRC_ITEM_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_6FF49D_ACCESS_LOG_PRC_ITEM_ID_seq" OWNER TO jira;

--
-- Name: AO_6FF49D_ACCESS_LOG_PRC_ITEM_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_6FF49D_ACCESS_LOG_PRC_ITEM_ID_seq" OWNED BY public."AO_6FF49D_ACCESS_LOG_PRC_ITEM"."ID";


--
-- Name: AO_6FF49D_ACTUAL_MIG_COUNTS; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_ACTUAL_MIG_COUNTS" (
    "ENTITY_TYPE" character varying(255),
    "EXECUTION_ID" character varying(255) NOT NULL,
    "FAIL_COUNT" bigint DEFAULT 0 NOT NULL,
    "ID" integer NOT NULL,
    "PROJECT_KEY" character varying(255),
    "SUCCESS_COUNT" bigint DEFAULT 0 NOT NULL,
    "TOTAL_COUNT" bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public."AO_6FF49D_ACTUAL_MIG_COUNTS" OWNER TO jira;

--
-- Name: AO_6FF49D_ACTUAL_MIG_COUNTS_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_6FF49D_ACTUAL_MIG_COUNTS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_6FF49D_ACTUAL_MIG_COUNTS_ID_seq" OWNER TO jira;

--
-- Name: AO_6FF49D_ACTUAL_MIG_COUNTS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_6FF49D_ACTUAL_MIG_COUNTS_ID_seq" OWNED BY public."AO_6FF49D_ACTUAL_MIG_COUNTS"."ID";


--
-- Name: AO_6FF49D_ANALYTICS_EVENT; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_ANALYTICS_EVENT" (
    "EVENT" text NOT NULL,
    "EVENT_TIMESTAMP" bigint DEFAULT 0 NOT NULL,
    "EVENT_TYPE" character varying(255) NOT NULL,
    "ID" integer NOT NULL
);


ALTER TABLE public."AO_6FF49D_ANALYTICS_EVENT" OWNER TO jira;

--
-- Name: AO_6FF49D_ANALYTICS_EVENT_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_6FF49D_ANALYTICS_EVENT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_6FF49D_ANALYTICS_EVENT_ID_seq" OWNER TO jira;

--
-- Name: AO_6FF49D_ANALYTICS_EVENT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_6FF49D_ANALYTICS_EVENT_ID_seq" OWNED BY public."AO_6FF49D_ANALYTICS_EVENT"."ID";


--
-- Name: AO_6FF49D_APP_ASSESSMENT_INFO; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_APP_ASSESSMENT_INFO" (
    "ACCESS_SCOPES" character varying(255),
    "ALTERNATIVE_APP_KEY" character varying(255),
    "APP_KEY" character varying(255) NOT NULL,
    "CONSENT" character varying(255),
    "MIGRATION_NOTES" character varying(450),
    "MIGRATION_STATUS" character varying(255) NOT NULL
);


ALTER TABLE public."AO_6FF49D_APP_ASSESSMENT_INFO" OWNER TO jira;

--
-- Name: AO_6FF49D_BROWSER_METRICS; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_BROWSER_METRICS" (
    "CREATED_AT" bigint DEFAULT 0,
    "ID" integer NOT NULL,
    "METRICS_JSON" character varying(255),
    "USER_KEY" character varying(255)
);


ALTER TABLE public."AO_6FF49D_BROWSER_METRICS" OWNER TO jira;

--
-- Name: AO_6FF49D_BROWSER_METRICS_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_6FF49D_BROWSER_METRICS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_6FF49D_BROWSER_METRICS_ID_seq" OWNER TO jira;

--
-- Name: AO_6FF49D_BROWSER_METRICS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_6FF49D_BROWSER_METRICS_ID_seq" OWNED BY public."AO_6FF49D_BROWSER_METRICS"."ID";


--
-- Name: AO_6FF49D_CLOUD_SITE; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_CLOUD_SITE" (
    "CLOUD_EDITION" character varying(255),
    "CLOUD_ID" character varying(255) NOT NULL,
    "CLOUD_TYPE" character varying(255),
    "CLOUD_URL" character varying(450),
    "CONTAINER_TOKEN" character varying(450),
    "PRODUCTS_JSON" text,
    "UPDATED_TIMESTAMP" bigint DEFAULT 0
);


ALTER TABLE public."AO_6FF49D_CLOUD_SITE" OWNER TO jira;

--
-- Name: AO_6FF49D_CONFIG_ITEMS; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_CONFIG_ITEMS" (
    "CONFIG_ITEM_ID" character varying(255),
    "EXECUTION_ID" character varying(255) NOT NULL,
    "ID" integer NOT NULL,
    "NAME" character varying(255) NOT NULL,
    "TYPE" character varying(255) NOT NULL
);


ALTER TABLE public."AO_6FF49D_CONFIG_ITEMS" OWNER TO jira;

--
-- Name: AO_6FF49D_CONFIG_ITEMS_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_6FF49D_CONFIG_ITEMS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_6FF49D_CONFIG_ITEMS_ID_seq" OWNER TO jira;

--
-- Name: AO_6FF49D_CONFIG_ITEMS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_6FF49D_CONFIG_ITEMS_ID_seq" OWNED BY public."AO_6FF49D_CONFIG_ITEMS"."ID";


--
-- Name: AO_6FF49D_CORRECTED_EMAIL; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_CORRECTED_EMAIL" (
    "CREATED_BY" character varying(255),
    "CREATED_TIMESTAMP" bigint DEFAULT 0,
    "ID" character varying(255) NOT NULL,
    "NEW_EMAIL" character varying(450),
    "OLD_EMAIL" character varying(450),
    "TOMBSTONE" boolean,
    "TYPE" character varying(50),
    "UPDATED_BY" character varying(255),
    "UPDATED_TIMESTAMP" bigint DEFAULT 0,
    "USER_KEY" character varying(255),
    "USER_NAME" character varying(255)
);


ALTER TABLE public."AO_6FF49D_CORRECTED_EMAIL" OWNER TO jira;

--
-- Name: AO_6FF49D_DAILY_USAGE_METRICS; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_DAILY_USAGE_METRICS" (
    "DAILY_ACTIVE_USERS" integer DEFAULT 0 NOT NULL,
    "ID" integer NOT NULL,
    "INST_ANALYSIS_CTRL_ID" integer NOT NULL,
    "METRICS_DATE" timestamp without time zone NOT NULL,
    "NODES_PROCESSING_JSON" text NOT NULL,
    "PEAK_HOURLY_USERS_BY_DAY" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public."AO_6FF49D_DAILY_USAGE_METRICS" OWNER TO jira;

--
-- Name: AO_6FF49D_DAILY_USAGE_METRICS_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_6FF49D_DAILY_USAGE_METRICS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_6FF49D_DAILY_USAGE_METRICS_ID_seq" OWNER TO jira;

--
-- Name: AO_6FF49D_DAILY_USAGE_METRICS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_6FF49D_DAILY_USAGE_METRICS_ID_seq" OWNED BY public."AO_6FF49D_DAILY_USAGE_METRICS"."ID";


--
-- Name: AO_6FF49D_EMAIL_TRST_DMN; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_EMAIL_TRST_DMN" (
    "DOMAIN_NAME" character varying(255) NOT NULL,
    "ID" character varying(255) NOT NULL,
    "RULE" character varying(255) NOT NULL
);


ALTER TABLE public."AO_6FF49D_EMAIL_TRST_DMN" OWNER TO jira;

--
-- Name: AO_6FF49D_EXPECTED_MIG_COUNTS; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_EXPECTED_MIG_COUNTS" (
    "ENTITY_TYPE" character varying(255),
    "ENTITY_TYPE_COUNT" bigint DEFAULT 0 NOT NULL,
    "EXECUTION_ID" character varying(255) NOT NULL,
    "ID" integer NOT NULL,
    "PROJECT_KEY" character varying(255)
);


ALTER TABLE public."AO_6FF49D_EXPECTED_MIG_COUNTS" OWNER TO jira;

--
-- Name: AO_6FF49D_EXPECTED_MIG_COUNTS_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_6FF49D_EXPECTED_MIG_COUNTS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_6FF49D_EXPECTED_MIG_COUNTS_ID_seq" OWNER TO jira;

--
-- Name: AO_6FF49D_EXPECTED_MIG_COUNTS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_6FF49D_EXPECTED_MIG_COUNTS_ID_seq" OWNED BY public."AO_6FF49D_EXPECTED_MIG_COUNTS"."ID";


--
-- Name: AO_6FF49D_EXPELLED_USER; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_EXPELLED_USER" (
    "CREATED_BY" character varying(255),
    "CREATED_TIMESTAMP" bigint DEFAULT 0,
    "EMAIL" character varying(450),
    "EXECUTION_ID" character varying(255),
    "ID" character varying(255) NOT NULL,
    "PREFLIGHT_CHECK_TYPE" character varying(50),
    "UPDATED_BY" character varying(255),
    "UPDATED_TIMESTAMP" bigint DEFAULT 0,
    "USER_KEY" character varying(255)
);


ALTER TABLE public."AO_6FF49D_EXPELLED_USER" OWNER TO jira;

--
-- Name: AO_6FF49D_EXPORT_ERROR; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_EXPORT_ERROR" (
    "CLOUD_ID" character varying(255) NOT NULL,
    "ERROR" text NOT NULL,
    "ERROR_TIMESTAMP" bigint DEFAULT 0 NOT NULL,
    "ID" integer NOT NULL,
    "MIGRATION_ID" character varying(255),
    "MIGRATION_SCOPE_ID" character varying(255),
    "SOURCE" character varying(255) NOT NULL
);


ALTER TABLE public."AO_6FF49D_EXPORT_ERROR" OWNER TO jira;

--
-- Name: AO_6FF49D_EXPORT_ERROR_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_6FF49D_EXPORT_ERROR_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_6FF49D_EXPORT_ERROR_ID_seq" OWNER TO jira;

--
-- Name: AO_6FF49D_EXPORT_ERROR_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_6FF49D_EXPORT_ERROR_ID_seq" OWNED BY public."AO_6FF49D_EXPORT_ERROR"."ID";


--
-- Name: AO_6FF49D_GR_RESPONSE_GROUP; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_GR_RESPONSE_GROUP" (
    "END_TIMESTAMP" bigint,
    "ID" integer NOT NULL,
    "JOB_ID" character varying(36) NOT NULL,
    "NODE_ID" character varying(255) NOT NULL,
    "START_TIMESTAMP" bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public."AO_6FF49D_GR_RESPONSE_GROUP" OWNER TO jira;

--
-- Name: AO_6FF49D_GR_RESPONSE_GROUP_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_6FF49D_GR_RESPONSE_GROUP_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_6FF49D_GR_RESPONSE_GROUP_ID_seq" OWNER TO jira;

--
-- Name: AO_6FF49D_GR_RESPONSE_GROUP_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_6FF49D_GR_RESPONSE_GROUP_ID_seq" OWNED BY public."AO_6FF49D_GR_RESPONSE_GROUP"."ID";


--
-- Name: AO_6FF49D_GUARDRAILS_RESPONSE; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_GUARDRAILS_RESPONSE" (
    "GUARDRAILS_RESPONSE" bigint,
    "GUARDRAILS_RESPONSE_TEXT" text,
    "GUARDRAILS_RESPONSE_TYPE" character varying(10),
    "ID" integer NOT NULL,
    "JESAT_RESPONSE" text,
    "JOB_ID" character varying(36) NOT NULL,
    "QUERY_ID" character varying(100) NOT NULL,
    "QUERY_PRODUCT_TYPE" character varying(255),
    "QUERY_STATUS" character varying(8),
    "SUCCESS" boolean DEFAULT false NOT NULL
);


ALTER TABLE public."AO_6FF49D_GUARDRAILS_RESPONSE" OWNER TO jira;

--
-- Name: AO_6FF49D_GUARDRAILS_RESPONSE_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_6FF49D_GUARDRAILS_RESPONSE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_6FF49D_GUARDRAILS_RESPONSE_ID_seq" OWNER TO jira;

--
-- Name: AO_6FF49D_GUARDRAILS_RESPONSE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_6FF49D_GUARDRAILS_RESPONSE_ID_seq" OWNED BY public."AO_6FF49D_GUARDRAILS_RESPONSE"."ID";


--
-- Name: AO_6FF49D_INCORRECT_EMAIL; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_INCORRECT_EMAIL" (
    "CREATED_BY" character varying(255),
    "CREATED_TIMESTAMP" bigint DEFAULT 0,
    "DIRECTORY_ID" bigint DEFAULT 0,
    "DIRECTORY_NAME" character varying(255),
    "EMAIL_CORRECTION_DATA" text,
    "EXECUTION_ID" character varying(255),
    "ID" character varying(255) NOT NULL,
    "LAST_AUTHENTICATED" bigint DEFAULT 0,
    "NEW_EMAIL" character varying(255),
    "OLD_EMAIL" character varying(255),
    "PREFLIGHT_CHECK_TYPE" character varying(50),
    "TYPE" character varying(50),
    "UPDATED_BY" character varying(255),
    "UPDATED_TIMESTAMP" bigint DEFAULT 0,
    "USER_KEY" character varying(255),
    "USER_NAME" character varying(255)
);


ALTER TABLE public."AO_6FF49D_INCORRECT_EMAIL" OWNER TO jira;

--
-- Name: AO_6FF49D_INST_ANALYSIS_CTRL; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_INST_ANALYSIS_CTRL" (
    "ANALYSIS_TYPE" character varying(255) NOT NULL,
    "END_TIMESTAMP" bigint,
    "ID" integer NOT NULL,
    "START_TIMESTAMP" bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public."AO_6FF49D_INST_ANALYSIS_CTRL" OWNER TO jira;

--
-- Name: AO_6FF49D_INST_ANALYSIS_CTRL_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_6FF49D_INST_ANALYSIS_CTRL_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_6FF49D_INST_ANALYSIS_CTRL_ID_seq" OWNER TO jira;

--
-- Name: AO_6FF49D_INST_ANALYSIS_CTRL_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_6FF49D_INST_ANALYSIS_CTRL_ID_seq" OWNED BY public."AO_6FF49D_INST_ANALYSIS_CTRL"."ID";


--
-- Name: AO_6FF49D_LINKED_MEDIA; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_LINKED_MEDIA" (
    "ID" integer NOT NULL,
    "LINKED" boolean DEFAULT true NOT NULL,
    "MEDIA_CLIENT_ID" character varying(36) NOT NULL,
    "SERVER_ID" bigint DEFAULT 0 NOT NULL,
    "SIZE" character varying(36),
    "TYPE" character varying(255) NOT NULL
);


ALTER TABLE public."AO_6FF49D_LINKED_MEDIA" OWNER TO jira;

--
-- Name: AO_6FF49D_LINKED_MEDIA_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_6FF49D_LINKED_MEDIA_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_6FF49D_LINKED_MEDIA_ID_seq" OWNER TO jira;

--
-- Name: AO_6FF49D_LINKED_MEDIA_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_6FF49D_LINKED_MEDIA_ID_seq" OWNED BY public."AO_6FF49D_LINKED_MEDIA"."ID";


--
-- Name: AO_6FF49D_MIGRATED_AVATAR; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_MIGRATED_AVATAR" (
    "FILE_MEDIA_ID" character varying(36) NOT NULL,
    "ID" integer NOT NULL,
    "MEDIA_CLIENT_ID" character varying(36) NOT NULL,
    "MIGRATED" boolean DEFAULT true NOT NULL,
    "SERVER_AVATAR_ID" bigint DEFAULT 0 NOT NULL,
    "SIZE" character varying(36) NOT NULL,
    "UPLOAD_ID" character varying(36)
);


ALTER TABLE public."AO_6FF49D_MIGRATED_AVATAR" OWNER TO jira;

--
-- Name: AO_6FF49D_MIGRATED_AVATAR_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_6FF49D_MIGRATED_AVATAR_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_6FF49D_MIGRATED_AVATAR_ID_seq" OWNER TO jira;

--
-- Name: AO_6FF49D_MIGRATED_AVATAR_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_6FF49D_MIGRATED_AVATAR_ID_seq" OWNED BY public."AO_6FF49D_MIGRATED_AVATAR"."ID";


--
-- Name: AO_6FF49D_MIGRATED_FILE; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_MIGRATED_FILE" (
    "FILE_MEDIA_ID" character varying(36) NOT NULL,
    "FILE_SERVER_ID" bigint DEFAULT 0 NOT NULL,
    "ID" integer NOT NULL,
    "MEDIA_CLIENT_ID" character varying(36) NOT NULL,
    "MIGRATED" boolean DEFAULT true NOT NULL,
    "UPLOAD_ID" character varying(36)
);


ALTER TABLE public."AO_6FF49D_MIGRATED_FILE" OWNER TO jira;

--
-- Name: AO_6FF49D_MIGRATED_FILE_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_6FF49D_MIGRATED_FILE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_6FF49D_MIGRATED_FILE_ID_seq" OWNER TO jira;

--
-- Name: AO_6FF49D_MIGRATED_FILE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_6FF49D_MIGRATED_FILE_ID_seq" OWNED BY public."AO_6FF49D_MIGRATED_FILE"."ID";


--
-- Name: AO_6FF49D_MIGRATION_ENTITY; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_MIGRATION_ENTITY" (
    "APP_OUTCOME_JSON" text,
    "CREATED_TIMESTAMP" bigint DEFAULT 0,
    "IN_PROGRESS_STATUS_JSON" text,
    "MIGRATION_ID" character varying(36) NOT NULL,
    "OUTCOME_JSON" text,
    "PLAN_ID" character varying(36) NOT NULL,
    "PROTOCOL_JSON" character varying(255),
    "STARTED_BY" character varying(255),
    "START_MIGRATION_CONTEXT_JSON" text,
    "UPDATED_TIMESTAMP" bigint DEFAULT 0,
    "USER_MIGRATION_END_TIME" bigint DEFAULT 0,
    "USER_MIGRATION_START_TIME" bigint DEFAULT 0
);


ALTER TABLE public."AO_6FF49D_MIGRATION_ENTITY" OWNER TO jira;

--
-- Name: AO_6FF49D_MIGRATION_INCREMENT; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_MIGRATION_INCREMENT" (
    "CLOUD_ID" character varying(255) NOT NULL,
    "CUTOFF" bigint DEFAULT 0 NOT NULL,
    "FINAL" boolean DEFAULT false NOT NULL,
    "ID" character varying(36) NOT NULL,
    "MIGRATION_ID" character varying(36) NOT NULL,
    "PLAN_ID" character varying(36) NOT NULL,
    "PROJECT_ID" bigint DEFAULT 0 NOT NULL,
    "START_TIME" bigint DEFAULT 0 NOT NULL,
    "STATUS" character varying(255) NOT NULL
);


ALTER TABLE public."AO_6FF49D_MIGRATION_INCREMENT" OWNER TO jira;

--
-- Name: AO_6FF49D_MIGRATION_SCOPE; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_MIGRATION_SCOPE" (
    "ACTIVATION_ID" character varying(36),
    "CLOUD_ID" character varying(255) NOT NULL,
    "SCOPE_ID" character varying(36)
);


ALTER TABLE public."AO_6FF49D_MIGRATION_SCOPE" OWNER TO jira;

--
-- Name: AO_6FF49D_MIG_REPORT_STATUS; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_MIG_REPORT_STATUS" (
    "EXECUTION_ID" character varying(255) NOT NULL,
    "ID" integer NOT NULL,
    "REPORT_TYPE" character varying(255) NOT NULL,
    "STATUS" character varying(255) NOT NULL,
    "UPDATED_AT" bigint
);


ALTER TABLE public."AO_6FF49D_MIG_REPORT_STATUS" OWNER TO jira;

--
-- Name: AO_6FF49D_MIG_REPORT_STATUS_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_6FF49D_MIG_REPORT_STATUS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_6FF49D_MIG_REPORT_STATUS_ID_seq" OWNER TO jira;

--
-- Name: AO_6FF49D_MIG_REPORT_STATUS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_6FF49D_MIG_REPORT_STATUS_ID_seq" OWNED BY public."AO_6FF49D_MIG_REPORT_STATUS"."ID";


--
-- Name: AO_6FF49D_PLAN_ENTITY; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_PLAN_ENTITY" (
    "CREATED" timestamp without time zone,
    "CREATED_TIMESTAMP" bigint DEFAULT 0,
    "ID" character varying(36) NOT NULL,
    "JSON" text,
    "PLAN_NAME" character varying(255) NOT NULL,
    "UPDATED" timestamp without time zone,
    "UPDATED_TIMESTAMP" bigint DEFAULT 0
);


ALTER TABLE public."AO_6FF49D_PLAN_ENTITY" OWNER TO jira;

--
-- Name: AO_6FF49D_PREMIG_OUTCOME; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_PREMIG_OUTCOME" (
    "CHECK_ID" integer DEFAULT 0 NOT NULL,
    "CLOUD_ID" character varying(255) NOT NULL,
    "ID" bigint NOT NULL,
    "LAST_EXECUTION_TIME" bigint DEFAULT 0,
    "PHASE_ID" integer DEFAULT 0 NOT NULL,
    "PREFLIGHT_CHECK_EXECUTION_ID" character varying(255) NOT NULL
);


ALTER TABLE public."AO_6FF49D_PREMIG_OUTCOME" OWNER TO jira;

--
-- Name: AO_6FF49D_PREMIG_OUTCOME_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_6FF49D_PREMIG_OUTCOME_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_6FF49D_PREMIG_OUTCOME_ID_seq" OWNER TO jira;

--
-- Name: AO_6FF49D_PREMIG_OUTCOME_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_6FF49D_PREMIG_OUTCOME_ID_seq" OWNED BY public."AO_6FF49D_PREMIG_OUTCOME"."ID";


--
-- Name: AO_6FF49D_PUBLIC_PLAN_MAPPING; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_PUBLIC_PLAN_MAPPING" (
    "JOB_ID" character varying(255) NOT NULL,
    "MIGRATION_ID" character varying(255) NOT NULL,
    "PLAN_ID" character varying(255) NOT NULL
);


ALTER TABLE public."AO_6FF49D_PUBLIC_PLAN_MAPPING" OWNER TO jira;

--
-- Name: AO_6FF49D_SKIP_PREFLT_RESULT; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_SKIP_PREFLT_RESULT" (
    "CHECK_ID" integer DEFAULT 0 NOT NULL,
    "EXECUTION_ID" character varying(255) NOT NULL,
    "ID" bigint NOT NULL,
    "LAST_EXECUTION_TIME" bigint DEFAULT 0
);


ALTER TABLE public."AO_6FF49D_SKIP_PREFLT_RESULT" OWNER TO jira;

--
-- Name: AO_6FF49D_SKIP_PREFLT_RESULT_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_6FF49D_SKIP_PREFLT_RESULT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_6FF49D_SKIP_PREFLT_RESULT_ID_seq" OWNER TO jira;

--
-- Name: AO_6FF49D_SKIP_PREFLT_RESULT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_6FF49D_SKIP_PREFLT_RESULT_ID_seq" OWNED BY public."AO_6FF49D_SKIP_PREFLT_RESULT"."ID";


--
-- Name: AO_6FF49D_TOMBSTONE_ACCOUNT; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_TOMBSTONE_ACCOUNT" (
    "AAID" character varying(128),
    "USER_KEY" character varying(255) NOT NULL
);


ALTER TABLE public."AO_6FF49D_TOMBSTONE_ACCOUNT" OWNER TO jira;

--
-- Name: AO_6FF49D_UNSUPPORTED_ENTITY; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_UNSUPPORTED_ENTITY" (
    "EXECUTION_ID" character varying(255) NOT NULL,
    "ID" integer NOT NULL,
    "IMPACTED_ENTITY_ID" character varying(255),
    "IMPACTED_ENTITY_NAME" character varying(255),
    "PROBLEM_ENTITY_NAME" character varying(255),
    "PROBLEM_TYPE_AND_DETAILS" character varying(255),
    "PROJECT_KEY" character varying(255),
    "REFERENCED_BY" text
);


ALTER TABLE public."AO_6FF49D_UNSUPPORTED_ENTITY" OWNER TO jira;

--
-- Name: AO_6FF49D_UNSUPPORTED_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_6FF49D_UNSUPPORTED_ENTITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_6FF49D_UNSUPPORTED_ENTITY_ID_seq" OWNER TO jira;

--
-- Name: AO_6FF49D_UNSUPPORTED_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_6FF49D_UNSUPPORTED_ENTITY_ID_seq" OWNED BY public."AO_6FF49D_UNSUPPORTED_ENTITY"."ID";


--
-- Name: AO_6FF49D_USERBASE_SCAN; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_USERBASE_SCAN" (
    "CREATED_BY" character varying(255),
    "CREATED_TIMESTAMP" bigint DEFAULT 0,
    "DUPLICATED_CUSTOMERS_COUNT" bigint DEFAULT 0,
    "DUPLICATED_USERS_COUNT" bigint DEFAULT 0,
    "FINISHED_AT" bigint DEFAULT 0,
    "ID" character varying(255) NOT NULL,
    "INVALID_CUSTOMERS_COUNT" bigint DEFAULT 0,
    "INVALID_USERS_COUNT" bigint DEFAULT 0,
    "STARTED_AT" bigint DEFAULT 0,
    "STATUS" character varying(255),
    "UPDATED_BY" character varying(255),
    "UPDATED_TIMESTAMP" bigint DEFAULT 0
);


ALTER TABLE public."AO_6FF49D_USERBASE_SCAN" OWNER TO jira;

--
-- Name: AO_6FF49D_USERS_GROUPS_EXTRACT; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_USERS_GROUPS_EXTRACT" (
    "EXECUTION_ID" character varying(255) NOT NULL,
    "ID" integer NOT NULL,
    "NAME" character varying(255) NOT NULL,
    "PRESERVE_MEMBERSHIP" boolean,
    "REFERENCED_BY" text,
    "REFERENCED_BY_GROUPS" text,
    "TYPE" character varying(255) NOT NULL,
    "USER_EMAIL" character varying(255),
    "USER_KEY" character varying(255),
    "VERSION" integer DEFAULT 0
);


ALTER TABLE public."AO_6FF49D_USERS_GROUPS_EXTRACT" OWNER TO jira;

--
-- Name: AO_6FF49D_USERS_GROUPS_EXTRACT_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_6FF49D_USERS_GROUPS_EXTRACT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_6FF49D_USERS_GROUPS_EXTRACT_ID_seq" OWNER TO jira;

--
-- Name: AO_6FF49D_USERS_GROUPS_EXTRACT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_6FF49D_USERS_GROUPS_EXTRACT_ID_seq" OWNED BY public."AO_6FF49D_USERS_GROUPS_EXTRACT"."ID";


--
-- Name: AO_6FF49D_USER_EMAIL_EVENT_LOG; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_USER_EMAIL_EVENT_LOG" (
    "CLOUD_ID" character varying(255) NOT NULL,
    "EMAIL" character varying(255) NOT NULL,
    "EVENT_TIMESTAMP" bigint DEFAULT 0 NOT NULL,
    "ID" integer NOT NULL
);


ALTER TABLE public."AO_6FF49D_USER_EMAIL_EVENT_LOG" OWNER TO jira;

--
-- Name: AO_6FF49D_USER_EMAIL_EVENT_LOG_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_6FF49D_USER_EMAIL_EVENT_LOG_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_6FF49D_USER_EMAIL_EVENT_LOG_ID_seq" OWNER TO jira;

--
-- Name: AO_6FF49D_USER_EMAIL_EVENT_LOG_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_6FF49D_USER_EMAIL_EVENT_LOG_ID_seq" OWNED BY public."AO_6FF49D_USER_EMAIL_EVENT_LOG"."ID";


--
-- Name: AO_6FF49D_VIRTUAL_ATTACHMENT; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_6FF49D_VIRTUAL_ATTACHMENT" (
    "ID" integer NOT NULL,
    "VIRTUAL_ATTACHMENT_ID" bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public."AO_6FF49D_VIRTUAL_ATTACHMENT" OWNER TO jira;

--
-- Name: AO_6FF49D_VIRTUAL_ATTACHMENT_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_6FF49D_VIRTUAL_ATTACHMENT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_6FF49D_VIRTUAL_ATTACHMENT_ID_seq" OWNER TO jira;

--
-- Name: AO_6FF49D_VIRTUAL_ATTACHMENT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_6FF49D_VIRTUAL_ATTACHMENT_ID_seq" OWNED BY public."AO_6FF49D_VIRTUAL_ATTACHMENT"."ID";


--
-- Name: AO_723324_CLIENT_CONFIG; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_723324_CLIENT_CONFIG" (
    "AUTHORIZATION_ENDPOINT" character varying(255) NOT NULL,
    "CLIENT_ID" character varying(255) NOT NULL,
    "CLIENT_SECRET" character varying(255) NOT NULL,
    "DESCRIPTION" character varying(255),
    "ID" character varying(255) NOT NULL,
    "NAME" character varying(255) NOT NULL,
    "SCOPES" text NOT NULL,
    "TOKEN_ENDPOINT" character varying(255) NOT NULL,
    "TYPE" character varying(255) NOT NULL
);


ALTER TABLE public."AO_723324_CLIENT_CONFIG" OWNER TO jira;

--
-- Name: AO_723324_CLIENT_TOKEN; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_723324_CLIENT_TOKEN" (
    "ACCESS_TOKEN" text NOT NULL,
    "ACCESS_TOKEN_EXPIRATION" bigint DEFAULT 0 NOT NULL,
    "CONFIG_ID" character varying(255) NOT NULL,
    "ID" character varying(255) NOT NULL,
    "LAST_REFRESHED" bigint,
    "LAST_STATUS_UPDATED" bigint NOT NULL,
    "REFRESH_COUNT" integer DEFAULT 0,
    "REFRESH_TOKEN" text,
    "REFRESH_TOKEN_EXPIRATION" bigint,
    "STATUS" character varying(255) NOT NULL
);


ALTER TABLE public."AO_723324_CLIENT_TOKEN" OWNER TO jira;

--
-- Name: AO_733371_EVENT; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_733371_EVENT" (
    "ACTION" character varying(255),
    "ACTION_ID" character varying(255),
    "CREATED" timestamp without time zone NOT NULL,
    "EVENT_BUNDLE_ID" character varying(255),
    "EVENT_TYPE" bigint NOT NULL,
    "ID" bigint NOT NULL,
    "USER_KEY" character varying(255)
);


ALTER TABLE public."AO_733371_EVENT" OWNER TO jira;

--
-- Name: AO_733371_EVENT_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_733371_EVENT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_733371_EVENT_ID_seq" OWNER TO jira;

--
-- Name: AO_733371_EVENT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_733371_EVENT_ID_seq" OWNED BY public."AO_733371_EVENT"."ID";


--
-- Name: AO_733371_EVENT_PARAMETER; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_733371_EVENT_PARAMETER" (
    "EVENT_ID" bigint NOT NULL,
    "ID" bigint NOT NULL,
    "NAME" character varying(255) NOT NULL,
    "VALUE" text
);


ALTER TABLE public."AO_733371_EVENT_PARAMETER" OWNER TO jira;

--
-- Name: AO_733371_EVENT_PARAMETER_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_733371_EVENT_PARAMETER_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_733371_EVENT_PARAMETER_ID_seq" OWNER TO jira;

--
-- Name: AO_733371_EVENT_PARAMETER_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_733371_EVENT_PARAMETER_ID_seq" OWNED BY public."AO_733371_EVENT_PARAMETER"."ID";


--
-- Name: AO_733371_EVENT_RECIPIENT; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_733371_EVENT_RECIPIENT" (
    "CONSUMER_NAME" character varying(255) NOT NULL,
    "CREATED" timestamp without time zone NOT NULL,
    "EVENT_ID" bigint NOT NULL,
    "ID" bigint NOT NULL,
    "SEND_DATE" timestamp without time zone,
    "STATUS" character varying(255) NOT NULL,
    "UPDATED" timestamp without time zone,
    "USER_KEY" character varying(255) NOT NULL
);


ALTER TABLE public."AO_733371_EVENT_RECIPIENT" OWNER TO jira;

--
-- Name: AO_733371_EVENT_RECIPIENT_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_733371_EVENT_RECIPIENT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_733371_EVENT_RECIPIENT_ID_seq" OWNER TO jira;

--
-- Name: AO_733371_EVENT_RECIPIENT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_733371_EVENT_RECIPIENT_ID_seq" OWNED BY public."AO_733371_EVENT_RECIPIENT"."ID";


--
-- Name: AO_81F455_PERSONAL_TOKEN; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_81F455_PERSONAL_TOKEN" (
    "CREATED_AT" timestamp without time zone NOT NULL,
    "EXPIRING_AT" timestamp without time zone NOT NULL,
    "HASHED_TOKEN" character varying(255) NOT NULL,
    "ID" bigint NOT NULL,
    "LAST_ACCESSED_AT" timestamp without time zone,
    "NAME" character varying(255) NOT NULL,
    "NOTIFICATION_STATE" character varying(255) NOT NULL,
    "TOKEN_ID" character varying(255) NOT NULL,
    "USER_KEY" character varying(255) NOT NULL
);


ALTER TABLE public."AO_81F455_PERSONAL_TOKEN" OWNER TO jira;

--
-- Name: AO_81F455_PERSONAL_TOKEN_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_81F455_PERSONAL_TOKEN_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_81F455_PERSONAL_TOKEN_ID_seq" OWNER TO jira;

--
-- Name: AO_81F455_PERSONAL_TOKEN_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_81F455_PERSONAL_TOKEN_ID_seq" OWNED BY public."AO_81F455_PERSONAL_TOKEN"."ID";


--
-- Name: AO_82B313_ABILITY; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_82B313_ABILITY" (
    "COMBINED_KEY" character varying(255) NOT NULL,
    "ID" bigint NOT NULL,
    "PERSON_ID" bigint,
    "SKILL_ID" bigint
);


ALTER TABLE public."AO_82B313_ABILITY" OWNER TO jira;

--
-- Name: AO_82B313_ABILITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_82B313_ABILITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_82B313_ABILITY_ID_seq" OWNER TO jira;

--
-- Name: AO_82B313_ABILITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_82B313_ABILITY_ID_seq" OWNED BY public."AO_82B313_ABILITY"."ID";


--
-- Name: AO_82B313_ABSENCE; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_82B313_ABSENCE" (
    "END" bigint,
    "ID" bigint NOT NULL,
    "PERSON_ID" bigint,
    "START" bigint,
    "TITLE" character varying(255)
);


ALTER TABLE public."AO_82B313_ABSENCE" OWNER TO jira;

--
-- Name: AO_82B313_ABSENCE_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_82B313_ABSENCE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_82B313_ABSENCE_ID_seq" OWNER TO jira;

--
-- Name: AO_82B313_ABSENCE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_82B313_ABSENCE_ID_seq" OWNED BY public."AO_82B313_ABSENCE"."ID";


--
-- Name: AO_82B313_AVAILABILITY; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_82B313_AVAILABILITY" (
    "END" bigint NOT NULL,
    "ID" bigint NOT NULL,
    "RESOURCE_ID" bigint,
    "START" bigint NOT NULL,
    "TITLE" character varying(255),
    "WEEKLY_HOURS" double precision
);


ALTER TABLE public."AO_82B313_AVAILABILITY" OWNER TO jira;

--
-- Name: AO_82B313_AVAILABILITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_82B313_AVAILABILITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_82B313_AVAILABILITY_ID_seq" OWNER TO jira;

--
-- Name: AO_82B313_AVAILABILITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_82B313_AVAILABILITY_ID_seq" OWNED BY public."AO_82B313_AVAILABILITY"."ID";


--
-- Name: AO_82B313_INIT; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_82B313_INIT" (
    "ID" bigint NOT NULL,
    "KEY" character varying(255) NOT NULL
);


ALTER TABLE public."AO_82B313_INIT" OWNER TO jira;

--
-- Name: AO_82B313_INIT_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_82B313_INIT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_82B313_INIT_ID_seq" OWNER TO jira;

--
-- Name: AO_82B313_INIT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_82B313_INIT_ID_seq" OWNED BY public."AO_82B313_INIT"."ID";


--
-- Name: AO_82B313_PERSON; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_82B313_PERSON" (
    "AVATAR_URL" character varying(255),
    "END" bigint,
    "ID" bigint NOT NULL,
    "JIRA_USER_ID" character varying(255),
    "START" bigint,
    "TITLE" character varying(255)
);


ALTER TABLE public."AO_82B313_PERSON" OWNER TO jira;

--
-- Name: AO_82B313_PERSON_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_82B313_PERSON_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_82B313_PERSON_ID_seq" OWNER TO jira;

--
-- Name: AO_82B313_PERSON_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_82B313_PERSON_ID_seq" OWNED BY public."AO_82B313_PERSON"."ID";


--
-- Name: AO_82B313_RESOURCE; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_82B313_RESOURCE" (
    "ID" bigint NOT NULL,
    "JOIN_DATE" bigint,
    "LEAVE_DATE" bigint,
    "PERSON_ID" bigint,
    "TEAM_ID" bigint,
    "WEEKLY_HOURS" double precision DEFAULT 0.0
);


ALTER TABLE public."AO_82B313_RESOURCE" OWNER TO jira;

--
-- Name: AO_82B313_RESOURCE_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_82B313_RESOURCE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_82B313_RESOURCE_ID_seq" OWNER TO jira;

--
-- Name: AO_82B313_RESOURCE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_82B313_RESOURCE_ID_seq" OWNED BY public."AO_82B313_RESOURCE"."ID";


--
-- Name: AO_82B313_SKILL; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_82B313_SKILL" (
    "ID" bigint NOT NULL,
    "SHAREABLE" boolean,
    "TITLE" character varying(255)
);


ALTER TABLE public."AO_82B313_SKILL" OWNER TO jira;

--
-- Name: AO_82B313_SKILL_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_82B313_SKILL_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_82B313_SKILL_ID_seq" OWNER TO jira;

--
-- Name: AO_82B313_SKILL_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_82B313_SKILL_ID_seq" OWNED BY public."AO_82B313_SKILL"."ID";


--
-- Name: AO_82B313_TEAM; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_82B313_TEAM" (
    "AVATAR_URL" character varying(255),
    "ID" bigint NOT NULL,
    "SHAREABLE" boolean,
    "TITLE" character varying(255)
);


ALTER TABLE public."AO_82B313_TEAM" OWNER TO jira;

--
-- Name: AO_82B313_TEAM_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_82B313_TEAM_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_82B313_TEAM_ID_seq" OWNER TO jira;

--
-- Name: AO_82B313_TEAM_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_82B313_TEAM_ID_seq" OWNED BY public."AO_82B313_TEAM"."ID";


--
-- Name: AO_8752F1_DATA_PIPELINE_CONFIG; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_8752F1_DATA_PIPELINE_CONFIG" (
    "ID" integer NOT NULL,
    "KEY" character varying(250) NOT NULL,
    "VALUE" text
);


ALTER TABLE public."AO_8752F1_DATA_PIPELINE_CONFIG" OWNER TO jira;

--
-- Name: AO_8752F1_DATA_PIPELINE_CONFIG_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_8752F1_DATA_PIPELINE_CONFIG_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_8752F1_DATA_PIPELINE_CONFIG_ID_seq" OWNER TO jira;

--
-- Name: AO_8752F1_DATA_PIPELINE_CONFIG_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_8752F1_DATA_PIPELINE_CONFIG_ID_seq" OWNED BY public."AO_8752F1_DATA_PIPELINE_CONFIG"."ID";


--
-- Name: AO_8752F1_DATA_PIPELINE_EOO; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_8752F1_DATA_PIPELINE_EOO" (
    "ENTITY_IDENTIFIER" character varying(255) NOT NULL,
    "ENTITY_TYPE" character varying(255) NOT NULL,
    "ID" integer NOT NULL
);


ALTER TABLE public."AO_8752F1_DATA_PIPELINE_EOO" OWNER TO jira;

--
-- Name: AO_8752F1_DATA_PIPELINE_EOO_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_8752F1_DATA_PIPELINE_EOO_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_8752F1_DATA_PIPELINE_EOO_ID_seq" OWNER TO jira;

--
-- Name: AO_8752F1_DATA_PIPELINE_EOO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_8752F1_DATA_PIPELINE_EOO_ID_seq" OWNED BY public."AO_8752F1_DATA_PIPELINE_EOO"."ID";


--
-- Name: AO_8752F1_DATA_PIPELINE_JOB; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_8752F1_DATA_PIPELINE_JOB" (
    "CREATED" bigint NOT NULL,
    "ERRORS" text,
    "EXPORTED_ENTITIES" integer,
    "EXPORT_FORCED" boolean,
    "EXPORT_FROM" bigint NOT NULL,
    "EXPORT_PATH" text,
    "ID" integer NOT NULL,
    "METADATA" character varying(255),
    "OPTED_OUT_ENTITY_IDENTIFIERS" text,
    "ROOT_EXPORT_PATH" character varying(255),
    "SCHEMA_VERSION" integer DEFAULT 0 NOT NULL,
    "STATUS" character varying(255) NOT NULL,
    "UPDATED" bigint NOT NULL,
    "WARNINGS" text,
    "WRITTEN_ROWS" integer
);


ALTER TABLE public."AO_8752F1_DATA_PIPELINE_JOB" OWNER TO jira;

--
-- Name: AO_8752F1_DATA_PIPELINE_JOB_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_8752F1_DATA_PIPELINE_JOB_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_8752F1_DATA_PIPELINE_JOB_ID_seq" OWNER TO jira;

--
-- Name: AO_8752F1_DATA_PIPELINE_JOB_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_8752F1_DATA_PIPELINE_JOB_ID_seq" OWNED BY public."AO_8752F1_DATA_PIPELINE_JOB"."ID";


--
-- Name: AO_97EDAB_USERINVITATION; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_97EDAB_USERINVITATION" (
    "APPLICATION_KEYS" character varying(255),
    "EMAIL_ADDRESS" character varying(255),
    "EXPIRY" timestamp without time zone,
    "ID" integer NOT NULL,
    "REDEEMED" boolean,
    "SENDER_USERNAME" character varying(255),
    "TOKEN" character varying(255)
);


ALTER TABLE public."AO_97EDAB_USERINVITATION" OWNER TO jira;

--
-- Name: AO_97EDAB_USERINVITATION_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_97EDAB_USERINVITATION_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_97EDAB_USERINVITATION_ID_seq" OWNER TO jira;

--
-- Name: AO_97EDAB_USERINVITATION_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_97EDAB_USERINVITATION_ID_seq" OWNED BY public."AO_97EDAB_USERINVITATION"."ID";


--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_A0B856_WEB_HOOK_LISTENER_AO" (
    "DESCRIPTION" text,
    "ENABLED" boolean,
    "EVENTS" text,
    "EXCLUDE_BODY" boolean,
    "FILTERS" text,
    "ID" integer NOT NULL,
    "LAST_UPDATED" timestamp without time zone NOT NULL,
    "LAST_UPDATED_USER" character varying(255),
    "NAME" text NOT NULL,
    "PARAMETERS" text,
    "REGISTRATION_METHOD" character varying(255) NOT NULL,
    "URL" text NOT NULL
);


ALTER TABLE public."AO_A0B856_WEB_HOOK_LISTENER_AO" OWNER TO jira;

--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq" OWNER TO jira;

--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq" OWNED BY public."AO_A0B856_WEB_HOOK_LISTENER_AO"."ID";


--
-- Name: AO_A415DF_AOABILITY; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_A415DF_AOABILITY" (
    "ABILITY_VALUE" double precision,
    "AOPERSON_ID" integer,
    "ID_OTHER" integer NOT NULL,
    "TARGET_ID" integer,
    "TARGET_TYPE" character varying(255),
    "VERSION" bigint
);


ALTER TABLE public."AO_A415DF_AOABILITY" OWNER TO jira;

--
-- Name: AO_A415DF_AOABILITY_ID_OTHER_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_A415DF_AOABILITY_ID_OTHER_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A415DF_AOABILITY_ID_OTHER_seq" OWNER TO jira;

--
-- Name: AO_A415DF_AOABILITY_ID_OTHER_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_A415DF_AOABILITY_ID_OTHER_seq" OWNED BY public."AO_A415DF_AOABILITY"."ID_OTHER";


--
-- Name: AO_A415DF_AOABSENCE; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_A415DF_AOABSENCE" (
    "AOPERSON_ID" integer,
    "DESCRIPTION" character varying(255),
    "DETAILS" text,
    "END_DATE" bigint,
    "ID_OTHER" integer NOT NULL,
    "ORDER_RANGE_IDENTIFIER" character varying(255),
    "SORT_ORDER" bigint,
    "START_DATE" bigint,
    "TITLE" character varying(255),
    "VERSION" bigint
);


ALTER TABLE public."AO_A415DF_AOABSENCE" OWNER TO jira;

--
-- Name: AO_A415DF_AOABSENCE_ID_OTHER_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_A415DF_AOABSENCE_ID_OTHER_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A415DF_AOABSENCE_ID_OTHER_seq" OWNER TO jira;

--
-- Name: AO_A415DF_AOABSENCE_ID_OTHER_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_A415DF_AOABSENCE_ID_OTHER_seq" OWNED BY public."AO_A415DF_AOABSENCE"."ID_OTHER";


--
-- Name: AO_A415DF_AOAVAILABILITY; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_A415DF_AOAVAILABILITY" (
    "AORESOURCE_ID" integer,
    "AVAILABILITY" double precision,
    "DESCRIPTION" character varying(255),
    "DETAILS" text,
    "END_DATE" bigint,
    "ID_OTHER" integer NOT NULL,
    "ORDER_RANGE_IDENTIFIER" character varying(255),
    "SORT_ORDER" bigint,
    "START_DATE" bigint,
    "TITLE" character varying(255),
    "VERSION" bigint
);


ALTER TABLE public."AO_A415DF_AOAVAILABILITY" OWNER TO jira;

--
-- Name: AO_A415DF_AOAVAILABILITY_ID_OTHER_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_A415DF_AOAVAILABILITY_ID_OTHER_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A415DF_AOAVAILABILITY_ID_OTHER_seq" OWNER TO jira;

--
-- Name: AO_A415DF_AOAVAILABILITY_ID_OTHER_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_A415DF_AOAVAILABILITY_ID_OTHER_seq" OWNED BY public."AO_A415DF_AOAVAILABILITY"."ID_OTHER";


--
-- Name: AO_A415DF_AOCONFIGURATION; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_A415DF_AOCONFIGURATION" (
    "ID_OTHER" integer NOT NULL,
    "INITIALIZED" boolean,
    "INIT_STATE" integer
);


ALTER TABLE public."AO_A415DF_AOCONFIGURATION" OWNER TO jira;

--
-- Name: AO_A415DF_AOCONFIGURATION_ID_OTHER_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_A415DF_AOCONFIGURATION_ID_OTHER_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A415DF_AOCONFIGURATION_ID_OTHER_seq" OWNER TO jira;

--
-- Name: AO_A415DF_AOCONFIGURATION_ID_OTHER_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_A415DF_AOCONFIGURATION_ID_OTHER_seq" OWNED BY public."AO_A415DF_AOCONFIGURATION"."ID_OTHER";


--
-- Name: AO_A415DF_AOCUSTOM_WORDING; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_A415DF_AOCUSTOM_WORDING" (
    "ID_OTHER" integer NOT NULL,
    "WORD_KEY" character varying(255),
    "WORD_VALUE" character varying(255)
);


ALTER TABLE public."AO_A415DF_AOCUSTOM_WORDING" OWNER TO jira;

--
-- Name: AO_A415DF_AOCUSTOM_WORDING_ID_OTHER_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_A415DF_AOCUSTOM_WORDING_ID_OTHER_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A415DF_AOCUSTOM_WORDING_ID_OTHER_seq" OWNER TO jira;

--
-- Name: AO_A415DF_AOCUSTOM_WORDING_ID_OTHER_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_A415DF_AOCUSTOM_WORDING_ID_OTHER_seq" OWNED BY public."AO_A415DF_AOCUSTOM_WORDING"."ID_OTHER";


--
-- Name: AO_A415DF_AODEPENDENCY; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_A415DF_AODEPENDENCY" (
    "DEPENDEE" integer,
    "DEPENDENT" integer,
    "ID_OTHER" integer NOT NULL
);


ALTER TABLE public."AO_A415DF_AODEPENDENCY" OWNER TO jira;

--
-- Name: AO_A415DF_AODEPENDENCY_ID_OTHER_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_A415DF_AODEPENDENCY_ID_OTHER_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A415DF_AODEPENDENCY_ID_OTHER_seq" OWNER TO jira;

--
-- Name: AO_A415DF_AODEPENDENCY_ID_OTHER_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_A415DF_AODEPENDENCY_ID_OTHER_seq" OWNED BY public."AO_A415DF_AODEPENDENCY"."ID_OTHER";


--
-- Name: AO_A415DF_AODOOR_STOP; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_A415DF_AODOOR_STOP" (
    "ID" integer NOT NULL
);


ALTER TABLE public."AO_A415DF_AODOOR_STOP" OWNER TO jira;

--
-- Name: AO_A415DF_AODOOR_STOP_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_A415DF_AODOOR_STOP_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A415DF_AODOOR_STOP_ID_seq" OWNER TO jira;

--
-- Name: AO_A415DF_AODOOR_STOP_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_A415DF_AODOOR_STOP_ID_seq" OWNED BY public."AO_A415DF_AODOOR_STOP"."ID";


--
-- Name: AO_A415DF_AOESTIMATE; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_A415DF_AOESTIMATE" (
    "AOWORK_ITEM_ID" integer,
    "CURRENCY" integer,
    "ESTIMATE" double precision,
    "ID_OTHER" integer NOT NULL,
    "ORIGINAL" boolean,
    "REPLANNING" boolean,
    "TARGET_ID" integer,
    "TARGET_TYPE" character varying(255),
    "VERSION" bigint
);


ALTER TABLE public."AO_A415DF_AOESTIMATE" OWNER TO jira;

--
-- Name: AO_A415DF_AOESTIMATE_ID_OTHER_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_A415DF_AOESTIMATE_ID_OTHER_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A415DF_AOESTIMATE_ID_OTHER_seq" OWNER TO jira;

--
-- Name: AO_A415DF_AOESTIMATE_ID_OTHER_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_A415DF_AOESTIMATE_ID_OTHER_seq" OWNED BY public."AO_A415DF_AOESTIMATE"."ID_OTHER";


--
-- Name: AO_A415DF_AOEXTENSION_LINK; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_A415DF_AOEXTENSION_LINK" (
    "AOEXTENDABLE_ID" integer,
    "AOEXTENDABLE_TYPE" character varying(127),
    "EXTENSION_KEY" character varying(255),
    "EXTENSION_LINK" character varying(255),
    "ID_OTHER" integer NOT NULL,
    "VERSION" bigint
);


ALTER TABLE public."AO_A415DF_AOEXTENSION_LINK" OWNER TO jira;

--
-- Name: AO_A415DF_AOEXTENSION_LINK_ID_OTHER_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_A415DF_AOEXTENSION_LINK_ID_OTHER_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A415DF_AOEXTENSION_LINK_ID_OTHER_seq" OWNER TO jira;

--
-- Name: AO_A415DF_AOEXTENSION_LINK_ID_OTHER_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_A415DF_AOEXTENSION_LINK_ID_OTHER_seq" OWNED BY public."AO_A415DF_AOEXTENSION_LINK"."ID_OTHER";


--
-- Name: AO_A415DF_AONON_WORKING_DAYS; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_A415DF_AONON_WORKING_DAYS" (
    "AOPLAN_ID" integer,
    "DESCRIPTION" character varying(255),
    "DETAILS" text,
    "END_DATE" bigint,
    "ID_OTHER" integer NOT NULL,
    "ORDER_RANGE_IDENTIFIER" character varying(255),
    "SORT_ORDER" bigint,
    "START_DATE" bigint,
    "TITLE" character varying(255),
    "VERSION" bigint
);


ALTER TABLE public."AO_A415DF_AONON_WORKING_DAYS" OWNER TO jira;

--
-- Name: AO_A415DF_AONON_WORKING_DAYS_ID_OTHER_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_A415DF_AONON_WORKING_DAYS_ID_OTHER_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A415DF_AONON_WORKING_DAYS_ID_OTHER_seq" OWNER TO jira;

--
-- Name: AO_A415DF_AONON_WORKING_DAYS_ID_OTHER_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_A415DF_AONON_WORKING_DAYS_ID_OTHER_seq" OWNED BY public."AO_A415DF_AONON_WORKING_DAYS"."ID_OTHER";


--
-- Name: AO_A415DF_AOPERMISSION; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_A415DF_AOPERMISSION" (
    "HOLDER_ID" character varying(255),
    "HOLDER_TYPE" character varying(255),
    "ID_OTHER" integer NOT NULL,
    "PERMISSION" integer,
    "TARGET_ID" character varying(255),
    "TARGET_TYPE" character varying(255),
    "VERSION" bigint
);


ALTER TABLE public."AO_A415DF_AOPERMISSION" OWNER TO jira;

--
-- Name: AO_A415DF_AOPERMISSION_ID_OTHER_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_A415DF_AOPERMISSION_ID_OTHER_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A415DF_AOPERMISSION_ID_OTHER_seq" OWNER TO jira;

--
-- Name: AO_A415DF_AOPERMISSION_ID_OTHER_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_A415DF_AOPERMISSION_ID_OTHER_seq" OWNED BY public."AO_A415DF_AOPERMISSION"."ID_OTHER";


--
-- Name: AO_A415DF_AOPERSON; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_A415DF_AOPERSON" (
    "AOEXTERNAL_ID" character varying(255),
    "AOPLAN_ID" integer,
    "DESCRIPTION" character varying(255),
    "DETAILS" text,
    "EXTERNAL" boolean,
    "ID_OTHER" integer NOT NULL,
    "TITLE" character varying(255),
    "VERSION" bigint
);


ALTER TABLE public."AO_A415DF_AOPERSON" OWNER TO jira;

--
-- Name: AO_A415DF_AOPERSON_ID_OTHER_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_A415DF_AOPERSON_ID_OTHER_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A415DF_AOPERSON_ID_OTHER_seq" OWNER TO jira;

--
-- Name: AO_A415DF_AOPERSON_ID_OTHER_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_A415DF_AOPERSON_ID_OTHER_seq" OWNED BY public."AO_A415DF_AOPERSON"."ID_OTHER";


--
-- Name: AO_A415DF_AOPLAN; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_A415DF_AOPLAN" (
    "AODATE" bigint,
    "AOREPLANNING_DATE" bigint,
    "DESCRIPTION" character varying(255),
    "DETAILS" text,
    "ID_OTHER" integer NOT NULL,
    "IN_REPLANNING" boolean,
    "IN_STREAM_MODE" boolean,
    "PLAN_VERSION" bigint,
    "REPLANNING_VERSION" bigint,
    "SCHEDULING_VERSION" bigint,
    "TITLE" character varying(255),
    "VERSION" bigint
);


ALTER TABLE public."AO_A415DF_AOPLAN" OWNER TO jira;

--
-- Name: AO_A415DF_AOPLAN_CONFIGURATION; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_A415DF_AOPLAN_CONFIGURATION" (
    "AOPLAN_ID" integer,
    "AOPROGRESS_TRACKER_TYPE" character varying(255),
    "AOWEEKDAY_CONFIG" integer,
    "BACKLOG_RECORD_LIMIT" integer,
    "DEFAULT_EPIC_ESTIMATE" double precision,
    "DEFAULT_STORY_ESTIMATE" double precision,
    "EPIC_SYNC_MODE" character varying(255),
    "GLOBAL_DEFAULT_VELOCITY" double precision,
    "GLOBAL_SPRINT_LENGTH" integer,
    "HAS_SPRINT_CONSTRAINT" boolean,
    "HEURISTIC_THRESHOLD" integer,
    "HOURS_PER_DAY" double precision,
    "ID_OTHER" integer NOT NULL,
    "IMPORT_LIMIT" integer,
    "INITIATIVE_SYNC_MODE" character varying(255),
    "LINKING_MODE" character varying(255),
    "MAX_RESOURCES_PER_STORY" bigint,
    "MIN_LOAD_UNSTR_EPICS" bigint,
    "PLANNING_UNIT" character varying(255),
    "PROG_CMPLT_IF_RSLVD" boolean,
    "PROG_DSPL_UNEST_RTIO" boolean,
    "PROG_FIELD_NAME" character varying(255),
    "PROG_STRY_SUB_TASK_MODE" character varying(255),
    "SPRINT_EXCEEDED_WARN" boolean,
    "STORY_SYNC_MODE" character varying(255),
    "STRICT_STAGE_DIVISION" boolean,
    "SUGGEST_REPL_ESTIMATES" boolean,
    "SYNC_DESCRIPTION" boolean,
    "SYNC_EPICS" boolean,
    "SYNC_ESTIMATES" boolean,
    "SYNC_INITIATIVES" boolean,
    "SYNC_START_ENABLED" boolean,
    "SYNC_STORIES" boolean,
    "SYNC_SUMMARY" boolean,
    "TEMPLATE_TYPE" character varying(255)
);


ALTER TABLE public."AO_A415DF_AOPLAN_CONFIGURATION" OWNER TO jira;

--
-- Name: AO_A415DF_AOPLAN_CONFIGURATION_ID_OTHER_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_A415DF_AOPLAN_CONFIGURATION_ID_OTHER_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A415DF_AOPLAN_CONFIGURATION_ID_OTHER_seq" OWNER TO jira;

--
-- Name: AO_A415DF_AOPLAN_CONFIGURATION_ID_OTHER_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_A415DF_AOPLAN_CONFIGURATION_ID_OTHER_seq" OWNED BY public."AO_A415DF_AOPLAN_CONFIGURATION"."ID_OTHER";


--
-- Name: AO_A415DF_AOPLAN_ID_OTHER_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_A415DF_AOPLAN_ID_OTHER_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A415DF_AOPLAN_ID_OTHER_seq" OWNER TO jira;

--
-- Name: AO_A415DF_AOPLAN_ID_OTHER_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_A415DF_AOPLAN_ID_OTHER_seq" OWNED BY public."AO_A415DF_AOPLAN"."ID_OTHER";


--
-- Name: AO_A415DF_AOPRESENCE; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_A415DF_AOPRESENCE" (
    "AOPERSON_ID" integer,
    "DESCRIPTION" character varying(255),
    "DETAILS" text,
    "END_DATE" bigint,
    "ID_OTHER" integer NOT NULL,
    "ORDER_RANGE_IDENTIFIER" character varying(255),
    "SORT_ORDER" bigint,
    "START_DATE" bigint,
    "TITLE" character varying(255),
    "VERSION" bigint
);


ALTER TABLE public."AO_A415DF_AOPRESENCE" OWNER TO jira;

--
-- Name: AO_A415DF_AOPRESENCE_ID_OTHER_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_A415DF_AOPRESENCE_ID_OTHER_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A415DF_AOPRESENCE_ID_OTHER_seq" OWNER TO jira;

--
-- Name: AO_A415DF_AOPRESENCE_ID_OTHER_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_A415DF_AOPRESENCE_ID_OTHER_seq" OWNED BY public."AO_A415DF_AOPRESENCE"."ID_OTHER";


--
-- Name: AO_A415DF_AORELEASE; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_A415DF_AORELEASE" (
    "AODELTA_START_DATE" bigint,
    "AOFIXED_END_DATE" bigint,
    "AOFIXED_START_DATE" bigint,
    "AOPLAN_ID" integer,
    "AOSTREAM_ID" integer,
    "DESCRIPTION" character varying(255),
    "DETAILS" text,
    "ID_OTHER" integer NOT NULL,
    "IS_LATER_RELEASE" boolean,
    "ORDER_RANGE_IDENTIFIER" character varying(255),
    "PRIMARY_VERSION" character varying(255),
    "SORT_ORDER" bigint,
    "TITLE" character varying(255),
    "VERSION" bigint
);


ALTER TABLE public."AO_A415DF_AORELEASE" OWNER TO jira;

--
-- Name: AO_A415DF_AORELEASE_ID_OTHER_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_A415DF_AORELEASE_ID_OTHER_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A415DF_AORELEASE_ID_OTHER_seq" OWNER TO jira;

--
-- Name: AO_A415DF_AORELEASE_ID_OTHER_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_A415DF_AORELEASE_ID_OTHER_seq" OWNED BY public."AO_A415DF_AORELEASE"."ID_OTHER";


--
-- Name: AO_A415DF_AOREPLANNING; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_A415DF_AOREPLANNING" (
    "ID_OTHER" integer NOT NULL,
    "TARGET_ID" character varying(255),
    "TARGET_TYPE" character varying(255),
    "WORK_ITEM_ID" integer
);


ALTER TABLE public."AO_A415DF_AOREPLANNING" OWNER TO jira;

--
-- Name: AO_A415DF_AOREPLANNING_ID_OTHER_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_A415DF_AOREPLANNING_ID_OTHER_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A415DF_AOREPLANNING_ID_OTHER_seq" OWNER TO jira;

--
-- Name: AO_A415DF_AOREPLANNING_ID_OTHER_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_A415DF_AOREPLANNING_ID_OTHER_seq" OWNED BY public."AO_A415DF_AOREPLANNING"."ID_OTHER";


--
-- Name: AO_A415DF_AORESOURCE; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_A415DF_AORESOURCE" (
    "AOPERSON_ID" integer,
    "AOTEAM_ID" integer,
    "AVAILABILITY" double precision,
    "ID_OTHER" integer NOT NULL,
    "ORDER_RANGE_IDENTIFIER" character varying(255),
    "SORT_ORDER" bigint,
    "VERSION" bigint
);


ALTER TABLE public."AO_A415DF_AORESOURCE" OWNER TO jira;

--
-- Name: AO_A415DF_AORESOURCE_ID_OTHER_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_A415DF_AORESOURCE_ID_OTHER_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A415DF_AORESOURCE_ID_OTHER_seq" OWNER TO jira;

--
-- Name: AO_A415DF_AORESOURCE_ID_OTHER_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_A415DF_AORESOURCE_ID_OTHER_seq" OWNED BY public."AO_A415DF_AORESOURCE"."ID_OTHER";


--
-- Name: AO_A415DF_AOSKILL; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_A415DF_AOSKILL" (
    "AOSTAGE_ID" integer,
    "DESCRIPTION" character varying(255),
    "DETAILS" text,
    "ID_OTHER" integer NOT NULL,
    "ORDER_RANGE_IDENTIFIER" character varying(255),
    "PERCENTAGE" double precision,
    "SORT_ORDER" bigint,
    "STAGE_ID" character varying(255),
    "TITLE" character varying(255),
    "VERSION" bigint
);


ALTER TABLE public."AO_A415DF_AOSKILL" OWNER TO jira;

--
-- Name: AO_A415DF_AOSKILL_ID_OTHER_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_A415DF_AOSKILL_ID_OTHER_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A415DF_AOSKILL_ID_OTHER_seq" OWNER TO jira;

--
-- Name: AO_A415DF_AOSKILL_ID_OTHER_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_A415DF_AOSKILL_ID_OTHER_seq" OWNED BY public."AO_A415DF_AOSKILL"."ID_OTHER";


--
-- Name: AO_A415DF_AOSOLUTION_STORE; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_A415DF_AOSOLUTION_STORE" (
    "AOPLAN_ID" integer NOT NULL,
    "ID_OTHER" integer NOT NULL,
    "SOLUTION" text NOT NULL,
    "SOLUTION_VERSION" bigint NOT NULL
);


ALTER TABLE public."AO_A415DF_AOSOLUTION_STORE" OWNER TO jira;

--
-- Name: AO_A415DF_AOSOLUTION_STORE_ID_OTHER_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_A415DF_AOSOLUTION_STORE_ID_OTHER_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A415DF_AOSOLUTION_STORE_ID_OTHER_seq" OWNER TO jira;

--
-- Name: AO_A415DF_AOSOLUTION_STORE_ID_OTHER_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_A415DF_AOSOLUTION_STORE_ID_OTHER_seq" OWNED BY public."AO_A415DF_AOSOLUTION_STORE"."ID_OTHER";


--
-- Name: AO_A415DF_AOSPRINT; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_A415DF_AOSPRINT" (
    "AOTEAM_ID" integer,
    "DESCRIPTION" character varying(255),
    "DETAILS" text,
    "END_DATE" bigint,
    "ID_OTHER" integer NOT NULL,
    "ORDER_RANGE_IDENTIFIER" character varying(255),
    "SORT_ORDER" bigint,
    "START_DATE" bigint,
    "TITLE" character varying(255),
    "VERSION" bigint
);


ALTER TABLE public."AO_A415DF_AOSPRINT" OWNER TO jira;

--
-- Name: AO_A415DF_AOSPRINT_ID_OTHER_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_A415DF_AOSPRINT_ID_OTHER_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A415DF_AOSPRINT_ID_OTHER_seq" OWNER TO jira;

--
-- Name: AO_A415DF_AOSPRINT_ID_OTHER_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_A415DF_AOSPRINT_ID_OTHER_seq" OWNED BY public."AO_A415DF_AOSPRINT"."ID_OTHER";


--
-- Name: AO_A415DF_AOSTAGE; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_A415DF_AOSTAGE" (
    "AOPLAN_ID" integer,
    "COLOR" character varying(255),
    "DESCRIPTION" character varying(255),
    "DETAILS" text,
    "ID_OTHER" integer NOT NULL,
    "ORDER_RANGE_IDENTIFIER" character varying(255),
    "PERCENTAGE" double precision,
    "SORT_ORDER" bigint,
    "TITLE" character varying(255),
    "VERSION" bigint
);


ALTER TABLE public."AO_A415DF_AOSTAGE" OWNER TO jira;

--
-- Name: AO_A415DF_AOSTAGE_ID_OTHER_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_A415DF_AOSTAGE_ID_OTHER_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A415DF_AOSTAGE_ID_OTHER_seq" OWNER TO jira;

--
-- Name: AO_A415DF_AOSTAGE_ID_OTHER_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_A415DF_AOSTAGE_ID_OTHER_seq" OWNED BY public."AO_A415DF_AOSTAGE"."ID_OTHER";


--
-- Name: AO_A415DF_AOSTREAM; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_A415DF_AOSTREAM" (
    "AOPLAN_ID" integer,
    "COLOR" character varying(255),
    "DESCRIPTION" character varying(255),
    "DETAILS" text,
    "DYNAMIC_START_STREAM" boolean,
    "ID_OTHER" integer NOT NULL,
    "ORDER_RANGE_IDENTIFIER" character varying(255),
    "SHORT_NAME" character varying(255),
    "SORT_ORDER" bigint,
    "TITLE" character varying(255),
    "VERSION" bigint
);


ALTER TABLE public."AO_A415DF_AOSTREAM" OWNER TO jira;

--
-- Name: AO_A415DF_AOSTREAM_ID_OTHER_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_A415DF_AOSTREAM_ID_OTHER_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A415DF_AOSTREAM_ID_OTHER_seq" OWNER TO jira;

--
-- Name: AO_A415DF_AOSTREAM_ID_OTHER_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_A415DF_AOSTREAM_ID_OTHER_seq" OWNED BY public."AO_A415DF_AOSTREAM"."ID_OTHER";


--
-- Name: AO_A415DF_AOSTREAM_TO_TEAM; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_A415DF_AOSTREAM_TO_TEAM" (
    "AOSTREAM_ID" integer,
    "AOTEAM_ID" integer,
    "ID_OTHER" integer NOT NULL,
    "VERSION" bigint
);


ALTER TABLE public."AO_A415DF_AOSTREAM_TO_TEAM" OWNER TO jira;

--
-- Name: AO_A415DF_AOSTREAM_TO_TEAM_ID_OTHER_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_A415DF_AOSTREAM_TO_TEAM_ID_OTHER_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A415DF_AOSTREAM_TO_TEAM_ID_OTHER_seq" OWNER TO jira;

--
-- Name: AO_A415DF_AOSTREAM_TO_TEAM_ID_OTHER_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_A415DF_AOSTREAM_TO_TEAM_ID_OTHER_seq" OWNED BY public."AO_A415DF_AOSTREAM_TO_TEAM"."ID_OTHER";


--
-- Name: AO_A415DF_AOTEAM; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_A415DF_AOTEAM" (
    "AOPLAN_ID" integer,
    "AUTO_ADJUST_TO_ABSENCES" boolean,
    "DESCRIPTION" character varying(255),
    "DETAILS" text,
    "ID_OTHER" integer NOT NULL,
    "INCREMENTAL_ADJUSTMENT" double precision,
    "ITERATION_START_TYPE" character varying(255),
    "ORDER_RANGE_IDENTIFIER" character varying(255),
    "PLANNING_MODE" character varying(255),
    "SORT_ORDER" bigint,
    "TITLE" character varying(255),
    "VELOCITY" double precision,
    "VERSION" bigint,
    "WEEKS_PER_SPRINT" integer
);


ALTER TABLE public."AO_A415DF_AOTEAM" OWNER TO jira;

--
-- Name: AO_A415DF_AOTEAM_ID_OTHER_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_A415DF_AOTEAM_ID_OTHER_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A415DF_AOTEAM_ID_OTHER_seq" OWNER TO jira;

--
-- Name: AO_A415DF_AOTEAM_ID_OTHER_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_A415DF_AOTEAM_ID_OTHER_seq" OWNED BY public."AO_A415DF_AOTEAM"."ID_OTHER";


--
-- Name: AO_A415DF_AOTHEME; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_A415DF_AOTHEME" (
    "AOPLAN_ID" integer,
    "COLOR" character varying(255),
    "DESCRIPTION" character varying(255),
    "DETAILS" text,
    "ID_OTHER" integer NOT NULL,
    "ORDER_RANGE_IDENTIFIER" character varying(255),
    "PERCENTAGE" double precision,
    "SORT_ORDER" bigint,
    "TITLE" character varying(255),
    "VERSION" bigint
);


ALTER TABLE public."AO_A415DF_AOTHEME" OWNER TO jira;

--
-- Name: AO_A415DF_AOTHEME_ID_OTHER_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_A415DF_AOTHEME_ID_OTHER_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A415DF_AOTHEME_ID_OTHER_seq" OWNER TO jira;

--
-- Name: AO_A415DF_AOTHEME_ID_OTHER_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_A415DF_AOTHEME_ID_OTHER_seq" OWNED BY public."AO_A415DF_AOTHEME"."ID_OTHER";


--
-- Name: AO_A415DF_AOWORK_ITEM; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_A415DF_AOWORK_ITEM" (
    "AOBUSINESS_VALUE" double precision,
    "AOEARLIEST_START" bigint,
    "AOPARENT_ID" integer,
    "AOPLAN_ID" integer,
    "AORELEASE_ID" integer,
    "AOSPRINT_ID" integer,
    "AOSTREAM_ID" integer,
    "AOTARGET_END" bigint,
    "AOTARGET_START" bigint,
    "AOTEAM_ID" integer,
    "AOTHEME_ID" integer,
    "DESCRIPTION" character varying(255),
    "DETAILS" text,
    "EARLIEST_START" bigint,
    "HAS_ORIGINAL_ESTIMATES" boolean,
    "ID_OTHER" integer NOT NULL,
    "ORDER_RANGE_IDENTIFIER" character varying(255),
    "PARENT_ID" character varying(255),
    "REPLANNING_STATUS" integer,
    "SORT_ORDER" bigint,
    "STATUS" integer,
    "TITLE" character varying(255),
    "TYPE" integer,
    "VERSION" bigint
);


ALTER TABLE public."AO_A415DF_AOWORK_ITEM" OWNER TO jira;

--
-- Name: AO_A415DF_AOWORK_ITEM_ID_OTHER_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_A415DF_AOWORK_ITEM_ID_OTHER_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A415DF_AOWORK_ITEM_ID_OTHER_seq" OWNER TO jira;

--
-- Name: AO_A415DF_AOWORK_ITEM_ID_OTHER_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_A415DF_AOWORK_ITEM_ID_OTHER_seq" OWNED BY public."AO_A415DF_AOWORK_ITEM"."ID_OTHER";


--
-- Name: AO_A415DF_AOWORK_ITEM_TO_RES; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_A415DF_AOWORK_ITEM_TO_RES" (
    "AORESOURCE_ID" integer,
    "AOWORK_ITEM_ID" integer,
    "ID_OTHER" integer NOT NULL,
    "REPLANNING" boolean
);


ALTER TABLE public."AO_A415DF_AOWORK_ITEM_TO_RES" OWNER TO jira;

--
-- Name: AO_A415DF_AOWORK_ITEM_TO_RES_ID_OTHER_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_A415DF_AOWORK_ITEM_TO_RES_ID_OTHER_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A415DF_AOWORK_ITEM_TO_RES_ID_OTHER_seq" OWNER TO jira;

--
-- Name: AO_A415DF_AOWORK_ITEM_TO_RES_ID_OTHER_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_A415DF_AOWORK_ITEM_TO_RES_ID_OTHER_seq" OWNED BY public."AO_A415DF_AOWORK_ITEM_TO_RES"."ID_OTHER";


--
-- Name: AO_AC3877_RL_USER_COUNTER; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_AC3877_RL_USER_COUNTER" (
    "ID" bigint NOT NULL,
    "INTERVAL_START" timestamp without time zone NOT NULL,
    "NODE_ID" character varying(255) NOT NULL,
    "REJECT_COUNT" bigint DEFAULT 0 NOT NULL,
    "USER_ID" character varying(255) NOT NULL
);


ALTER TABLE public."AO_AC3877_RL_USER_COUNTER" OWNER TO jira;

--
-- Name: AO_AC3877_RL_USER_COUNTER_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_AC3877_RL_USER_COUNTER_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_AC3877_RL_USER_COUNTER_ID_seq" OWNER TO jira;

--
-- Name: AO_AC3877_RL_USER_COUNTER_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_AC3877_RL_USER_COUNTER_ID_seq" OWNED BY public."AO_AC3877_RL_USER_COUNTER"."ID";


--
-- Name: AO_AC3877_SETTINGS_VERSION; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_AC3877_SETTINGS_VERSION" (
    "TYPE" character varying(255) NOT NULL,
    "VERSION" bigint NOT NULL
);


ALTER TABLE public."AO_AC3877_SETTINGS_VERSION" OWNER TO jira;

--
-- Name: AO_AC3877_SYSTEM_RL_SETTINGS; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_AC3877_SYSTEM_RL_SETTINGS" (
    "CAPACITY" integer DEFAULT 0 NOT NULL,
    "CLEAN_JOB_DURATION" character varying(255) NOT NULL,
    "FILL_RATE" integer DEFAULT 0 NOT NULL,
    "FLUSH_JOB_DURATION" character varying(255) NOT NULL,
    "INTERVAL_FREQUENCY" integer DEFAULT 0 NOT NULL,
    "INTERVAL_TIME_UNIT" character varying(255) NOT NULL,
    "MODE" character varying(255) NOT NULL,
    "NAME" character varying(255) NOT NULL,
    "REAPER_JOB_DURATION" character varying(255) NOT NULL,
    "RETENTION_PERIOD_DURATION" character varying(255) NOT NULL,
    "SETTINGS_RELOAD_JOB_DURATION" character varying(255) NOT NULL
);


ALTER TABLE public."AO_AC3877_SYSTEM_RL_SETTINGS" OWNER TO jira;

--
-- Name: AO_AC3877_USER_RL_SETTINGS; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_AC3877_USER_RL_SETTINGS" (
    "CAPACITY" integer DEFAULT 0 NOT NULL,
    "FILL_RATE" integer DEFAULT 0 NOT NULL,
    "INTERVAL_FREQUENCY" integer DEFAULT 0 NOT NULL,
    "INTERVAL_TIME_UNIT" character varying(255) NOT NULL,
    "USER_ID" character varying(255) NOT NULL,
    "WHITELISTED" boolean NOT NULL
);


ALTER TABLE public."AO_AC3877_USER_RL_SETTINGS" OWNER TO jira;

--
-- Name: AO_B9A0F0_APPLIED_TEMPLATE; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_B9A0F0_APPLIED_TEMPLATE" (
    "ID" integer NOT NULL,
    "PROJECT_ID" bigint DEFAULT 0,
    "PROJECT_TEMPLATE_MODULE_KEY" character varying(255),
    "PROJECT_TEMPLATE_WEB_ITEM_KEY" character varying(255)
);


ALTER TABLE public."AO_B9A0F0_APPLIED_TEMPLATE" OWNER TO jira;

--
-- Name: AO_B9A0F0_APPLIED_TEMPLATE_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_B9A0F0_APPLIED_TEMPLATE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_B9A0F0_APPLIED_TEMPLATE_ID_seq" OWNER TO jira;

--
-- Name: AO_B9A0F0_APPLIED_TEMPLATE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_B9A0F0_APPLIED_TEMPLATE_ID_seq" OWNED BY public."AO_B9A0F0_APPLIED_TEMPLATE"."ID";


--
-- Name: AO_C16815_ALERT_AO; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_C16815_ALERT_AO" (
    "CREATED_DATE" bigint DEFAULT 0,
    "DETAILS_JSON" text,
    "ID" bigint NOT NULL,
    "ISSUE_COMPONENT_ID" character varying(255),
    "ISSUE_ID" character varying(255),
    "ISSUE_SEVERITY" integer DEFAULT 0,
    "NODE_NAME" character varying(255),
    "TRIGGER_MODULE" character varying(255),
    "TRIGGER_PLUGIN_KEY" character varying(255),
    "TRIGGER_PLUGIN_KEY_VERSION" character varying(255),
    "TRIGGER_PLUGIN_VERSION" character varying(255)
);


ALTER TABLE public."AO_C16815_ALERT_AO" OWNER TO jira;

--
-- Name: AO_C16815_ALERT_AO_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_C16815_ALERT_AO_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_C16815_ALERT_AO_ID_seq" OWNER TO jira;

--
-- Name: AO_C16815_ALERT_AO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_C16815_ALERT_AO_ID_seq" OWNED BY public."AO_C16815_ALERT_AO"."ID";


--
-- Name: AO_C77861_AUDIT_ACTION_CACHE; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_C77861_AUDIT_ACTION_CACHE" (
    "ACTION" character varying(255) NOT NULL,
    "ACTION_T_KEY" character varying(255),
    "ID" integer NOT NULL
);


ALTER TABLE public."AO_C77861_AUDIT_ACTION_CACHE" OWNER TO jira;

--
-- Name: AO_C77861_AUDIT_ACTION_CACHE_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_C77861_AUDIT_ACTION_CACHE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_C77861_AUDIT_ACTION_CACHE_ID_seq" OWNER TO jira;

--
-- Name: AO_C77861_AUDIT_ACTION_CACHE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_C77861_AUDIT_ACTION_CACHE_ID_seq" OWNED BY public."AO_C77861_AUDIT_ACTION_CACHE"."ID";


--
-- Name: AO_C77861_AUDIT_CATEGORY_CACHE; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_C77861_AUDIT_CATEGORY_CACHE" (
    "CATEGORY" character varying(255) NOT NULL,
    "CATEGORY_T_KEY" character varying(255),
    "ID" integer NOT NULL
);


ALTER TABLE public."AO_C77861_AUDIT_CATEGORY_CACHE" OWNER TO jira;

--
-- Name: AO_C77861_AUDIT_CATEGORY_CACHE_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_C77861_AUDIT_CATEGORY_CACHE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_C77861_AUDIT_CATEGORY_CACHE_ID_seq" OWNER TO jira;

--
-- Name: AO_C77861_AUDIT_CATEGORY_CACHE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_C77861_AUDIT_CATEGORY_CACHE_ID_seq" OWNED BY public."AO_C77861_AUDIT_CATEGORY_CACHE"."ID";


--
-- Name: AO_C77861_AUDIT_DENY_LISTED; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_C77861_AUDIT_DENY_LISTED" (
    "ACTION" character varying(255),
    "ID" bigint NOT NULL
);


ALTER TABLE public."AO_C77861_AUDIT_DENY_LISTED" OWNER TO jira;

--
-- Name: AO_C77861_AUDIT_DENY_LISTED_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_C77861_AUDIT_DENY_LISTED_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_C77861_AUDIT_DENY_LISTED_ID_seq" OWNER TO jira;

--
-- Name: AO_C77861_AUDIT_DENY_LISTED_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_C77861_AUDIT_DENY_LISTED_ID_seq" OWNED BY public."AO_C77861_AUDIT_DENY_LISTED"."ID";


--
-- Name: AO_C77861_AUDIT_ENTITY; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_C77861_AUDIT_ENTITY" (
    "ACTION" character varying(255) NOT NULL,
    "ACTION_T_KEY" character varying(255),
    "AREA" character varying(255) NOT NULL,
    "ATTRIBUTES" text,
    "CATEGORY" character varying(255),
    "CATEGORY_T_KEY" character varying(255),
    "CHANGE_VALUES" text,
    "ENTITY_TIMESTAMP" bigint NOT NULL,
    "ID" bigint NOT NULL,
    "LEVEL" character varying(255) NOT NULL,
    "METHOD" character varying(255),
    "NODE" character varying(255),
    "PRIMARY_RESOURCE_ID" character varying(255),
    "PRIMARY_RESOURCE_TYPE" character varying(255),
    "RESOURCES" text,
    "RESOURCE_ID_3" character varying(255),
    "RESOURCE_ID_4" character varying(255),
    "RESOURCE_ID_5" character varying(255),
    "RESOURCE_TYPE_3" character varying(255),
    "RESOURCE_TYPE_4" character varying(255),
    "RESOURCE_TYPE_5" character varying(255),
    "SEARCH_STRING" text,
    "SECONDARY_RESOURCE_ID" character varying(255),
    "SECONDARY_RESOURCE_TYPE" character varying(255),
    "SOURCE" character varying(255),
    "SYSTEM_INFO" character varying(255),
    "USER_ID" character varying(255),
    "USER_NAME" character varying(255),
    "USER_TYPE" character varying(255)
);


ALTER TABLE public."AO_C77861_AUDIT_ENTITY" OWNER TO jira;

--
-- Name: AO_C77861_AUDIT_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_C77861_AUDIT_ENTITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_C77861_AUDIT_ENTITY_ID_seq" OWNER TO jira;

--
-- Name: AO_C77861_AUDIT_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_C77861_AUDIT_ENTITY_ID_seq" OWNED BY public."AO_C77861_AUDIT_ENTITY"."ID";


--
-- Name: AO_CFF990_AOTRANSITION_FAILURE; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_CFF990_AOTRANSITION_FAILURE" (
    "ERROR_MESSAGES" text,
    "FAILURE_TIME" timestamp without time zone,
    "ID" integer NOT NULL,
    "ISSUE_ID" bigint DEFAULT 0,
    "LOG_REFERRAL_HASH" character varying(255),
    "TRANSITION_ID" bigint DEFAULT 0,
    "TRIGGER_ID" bigint DEFAULT 0,
    "USER_KEY" character varying(255),
    "WORKFLOW_ID" character varying(255)
);


ALTER TABLE public."AO_CFF990_AOTRANSITION_FAILURE" OWNER TO jira;

--
-- Name: AO_CFF990_AOTRANSITION_FAILURE_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_CFF990_AOTRANSITION_FAILURE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_CFF990_AOTRANSITION_FAILURE_ID_seq" OWNER TO jira;

--
-- Name: AO_CFF990_AOTRANSITION_FAILURE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_CFF990_AOTRANSITION_FAILURE_ID_seq" OWNED BY public."AO_CFF990_AOTRANSITION_FAILURE"."ID";


--
-- Name: AO_D9132D_ASSIGNMENT; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_ASSIGNMENT" (
    "ID" bigint NOT NULL,
    "INTERVAL_END" bigint NOT NULL,
    "INTERVAL_START" bigint NOT NULL,
    "ISSUE" character varying(255) NOT NULL,
    "PLAN" bigint NOT NULL,
    "PROJECT" character varying(255) NOT NULL,
    "RESOURCE" character varying(255) NOT NULL,
    "SCENARIO" bigint,
    "SKILL" character varying(255) NOT NULL,
    "SOLUTION_ID" bigint,
    "SPRINT_INDEX" integer NOT NULL,
    "STAGE" character varying(255) NOT NULL,
    "TEAM" character varying(255) NOT NULL,
    "VERSION" character varying(255) NOT NULL,
    "WORKLOAD" double precision NOT NULL
);


ALTER TABLE public."AO_D9132D_ASSIGNMENT" OWNER TO jira;

--
-- Name: AO_D9132D_ASSIGNMENT_EXT; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_ASSIGNMENT_EXT" (
    "ID" bigint NOT NULL,
    "INTERVAL_END" bigint NOT NULL,
    "INTERVAL_START" bigint NOT NULL,
    "ISSUE" character varying(255) NOT NULL,
    "PLAN" bigint,
    "PROJECT" character varying(255) NOT NULL,
    "RESOURCE" character varying(255),
    "SCENARIO" bigint,
    "SKILL" character varying(255),
    "SOLUTION_ID" bigint,
    "SPRINT_INDEX" integer,
    "STAGE" character varying(255),
    "TEAM" character varying(255),
    "VERSION" character varying(255),
    "WORKLOAD" double precision
);


ALTER TABLE public."AO_D9132D_ASSIGNMENT_EXT" OWNER TO jira;

--
-- Name: AO_D9132D_ASSIGNMENT_EXT_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_ASSIGNMENT_EXT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_ASSIGNMENT_EXT_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_ASSIGNMENT_EXT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_ASSIGNMENT_EXT_ID_seq" OWNED BY public."AO_D9132D_ASSIGNMENT_EXT"."ID";


--
-- Name: AO_D9132D_ASSIGNMENT_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_ASSIGNMENT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_ASSIGNMENT_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_ASSIGNMENT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_ASSIGNMENT_ID_seq" OWNED BY public."AO_D9132D_ASSIGNMENT"."ID";


--
-- Name: AO_D9132D_CONFIGURATION; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_CONFIGURATION" (
    "HIERARCHY_ISSUE_LIMIT" bigint,
    "ID" bigint NOT NULL,
    "ISSUE_LIMIT" bigint,
    "PROJECT_LIMIT" bigint
);


ALTER TABLE public."AO_D9132D_CONFIGURATION" OWNER TO jira;

--
-- Name: AO_D9132D_CONFIGURATION_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_CONFIGURATION_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_CONFIGURATION_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_CONFIGURATION_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_CONFIGURATION_ID_seq" OWNED BY public."AO_D9132D_CONFIGURATION"."ID";


--
-- Name: AO_D9132D_DEP_ISSUE_LINK_TYPES; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_DEP_ISSUE_LINK_TYPES" (
    "ID" bigint NOT NULL,
    "LINK_ID" bigint DEFAULT 0 NOT NULL,
    "OUTWARD" boolean NOT NULL
);


ALTER TABLE public."AO_D9132D_DEP_ISSUE_LINK_TYPES" OWNER TO jira;

--
-- Name: AO_D9132D_DEP_ISSUE_LINK_TYPES_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_DEP_ISSUE_LINK_TYPES_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_DEP_ISSUE_LINK_TYPES_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_DEP_ISSUE_LINK_TYPES_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_DEP_ISSUE_LINK_TYPES_ID_seq" OWNED BY public."AO_D9132D_DEP_ISSUE_LINK_TYPES"."ID";


--
-- Name: AO_D9132D_DISTRIBUTION; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_DISTRIBUTION" (
    "ID" bigint NOT NULL,
    "ORIGINAL" boolean,
    "SCENARIO_ISSUE_ID" bigint,
    "SKILL_ITEM_KEY" character varying(255),
    "WEIGHT" double precision
);


ALTER TABLE public."AO_D9132D_DISTRIBUTION" OWNER TO jira;

--
-- Name: AO_D9132D_DISTRIBUTION_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_DISTRIBUTION_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_DISTRIBUTION_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_DISTRIBUTION_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_DISTRIBUTION_ID_seq" OWNED BY public."AO_D9132D_DISTRIBUTION"."ID";


--
-- Name: AO_D9132D_EXCLUDED_ISSUE_TYPES; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_EXCLUDED_ISSUE_TYPES" (
    "ID" bigint NOT NULL,
    "ISSUE_TYPE" bigint,
    "PLAN_ID" bigint
);


ALTER TABLE public."AO_D9132D_EXCLUDED_ISSUE_TYPES" OWNER TO jira;

--
-- Name: AO_D9132D_EXCLUDED_ISSUE_TYPES_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_EXCLUDED_ISSUE_TYPES_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_EXCLUDED_ISSUE_TYPES_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_EXCLUDED_ISSUE_TYPES_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_EXCLUDED_ISSUE_TYPES_ID_seq" OWNED BY public."AO_D9132D_EXCLUDED_ISSUE_TYPES"."ID";


--
-- Name: AO_D9132D_EXCLUDED_STATUSCATS; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_EXCLUDED_STATUSCATS" (
    "ID" bigint NOT NULL,
    "PLAN_ID" bigint,
    "STATUS_CATEGORY" bigint
);


ALTER TABLE public."AO_D9132D_EXCLUDED_STATUSCATS" OWNER TO jira;

--
-- Name: AO_D9132D_EXCLUDED_STATUSCATS_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_EXCLUDED_STATUSCATS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_EXCLUDED_STATUSCATS_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_EXCLUDED_STATUSCATS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_EXCLUDED_STATUSCATS_ID_seq" OWNED BY public."AO_D9132D_EXCLUDED_STATUSCATS"."ID";


--
-- Name: AO_D9132D_EXCLUDED_STATUSES; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_EXCLUDED_STATUSES" (
    "ID" bigint NOT NULL,
    "PLAN_ID" bigint,
    "STATUS" bigint
);


ALTER TABLE public."AO_D9132D_EXCLUDED_STATUSES" OWNER TO jira;

--
-- Name: AO_D9132D_EXCLUDED_STATUSES_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_EXCLUDED_STATUSES_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_EXCLUDED_STATUSES_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_EXCLUDED_STATUSES_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_EXCLUDED_STATUSES_ID_seq" OWNED BY public."AO_D9132D_EXCLUDED_STATUSES"."ID";


--
-- Name: AO_D9132D_EXCLUDED_VERSIONS; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_EXCLUDED_VERSIONS" (
    "ID" bigint NOT NULL,
    "PLAN_ID" bigint,
    "VERSION" bigint
);


ALTER TABLE public."AO_D9132D_EXCLUDED_VERSIONS" OWNER TO jira;

--
-- Name: AO_D9132D_EXCLUDED_VERSIONS_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_EXCLUDED_VERSIONS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_EXCLUDED_VERSIONS_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_EXCLUDED_VERSIONS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_EXCLUDED_VERSIONS_ID_seq" OWNED BY public."AO_D9132D_EXCLUDED_VERSIONS"."ID";


--
-- Name: AO_D9132D_GENERICREPORT; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_GENERICREPORT" (
    "HASH" character varying(255) NOT NULL,
    "ID" bigint NOT NULL,
    "PARAMS" text,
    "PARAMS_HASH" integer,
    "TYPE" character varying(255) NOT NULL,
    "TYPE_ID" bigint
);


ALTER TABLE public."AO_D9132D_GENERICREPORT" OWNER TO jira;

--
-- Name: AO_D9132D_GENERICREPORT_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_GENERICREPORT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_GENERICREPORT_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_GENERICREPORT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_GENERICREPORT_ID_seq" OWNED BY public."AO_D9132D_GENERICREPORT"."ID";


--
-- Name: AO_D9132D_HIERARCHY_CONFIG; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_HIERARCHY_CONFIG" (
    "ICON_URL" character varying(255),
    "ID" bigint NOT NULL,
    "ISSUE_TYPE_IDS" text,
    "TITLE" character varying(255)
);


ALTER TABLE public."AO_D9132D_HIERARCHY_CONFIG" OWNER TO jira;

--
-- Name: AO_D9132D_HIERARCHY_CONFIG_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_HIERARCHY_CONFIG_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_HIERARCHY_CONFIG_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_HIERARCHY_CONFIG_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_HIERARCHY_CONFIG_ID_seq" OWNED BY public."AO_D9132D_HIERARCHY_CONFIG"."ID";


--
-- Name: AO_D9132D_INIT; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_INIT" (
    "ID" bigint NOT NULL,
    "KEY" character varying(255) NOT NULL
);


ALTER TABLE public."AO_D9132D_INIT" OWNER TO jira;

--
-- Name: AO_D9132D_INIT_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_INIT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_INIT_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_INIT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_INIT_ID_seq" OWNED BY public."AO_D9132D_INIT"."ID";


--
-- Name: AO_D9132D_ISSUE_SOURCE; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_ISSUE_SOURCE" (
    "CONVERSION_FACTOR" double precision,
    "ID" bigint NOT NULL,
    "PLAN_ID" bigint,
    "SOURCE_TYPE" character varying(255),
    "SOURCE_VALUE" text
);


ALTER TABLE public."AO_D9132D_ISSUE_SOURCE" OWNER TO jira;

--
-- Name: AO_D9132D_ISSUE_SOURCE_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_ISSUE_SOURCE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_ISSUE_SOURCE_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_ISSUE_SOURCE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_ISSUE_SOURCE_ID_seq" OWNED BY public."AO_D9132D_ISSUE_SOURCE"."ID";


--
-- Name: AO_D9132D_NONWORKINGDAYS; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_NONWORKINGDAYS" (
    "END" bigint,
    "ID" bigint NOT NULL,
    "PLAN_ID" bigint,
    "START" bigint,
    "TITLE" character varying(255)
);


ALTER TABLE public."AO_D9132D_NONWORKINGDAYS" OWNER TO jira;

--
-- Name: AO_D9132D_NONWORKINGDAYS_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_NONWORKINGDAYS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_NONWORKINGDAYS_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_NONWORKINGDAYS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_NONWORKINGDAYS_ID_seq" OWNED BY public."AO_D9132D_NONWORKINGDAYS"."ID";


--
-- Name: AO_D9132D_PERMISSIONS; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_PERMISSIONS" (
    "HOLDER_KEY" character varying(255) NOT NULL,
    "HOLDER_TYPE" integer DEFAULT 0 NOT NULL,
    "ID" bigint NOT NULL,
    "PERMISSION" integer DEFAULT 0 NOT NULL,
    "PLAN_ID" bigint,
    "PROGRAM_ID" bigint
);


ALTER TABLE public."AO_D9132D_PERMISSIONS" OWNER TO jira;

--
-- Name: AO_D9132D_PERMISSIONS_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_PERMISSIONS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_PERMISSIONS_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_PERMISSIONS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_PERMISSIONS_ID_seq" OWNED BY public."AO_D9132D_PERMISSIONS"."ID";


--
-- Name: AO_D9132D_PLAN; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_PLAN" (
    "ASSIGNEE_SCHEDULING_LEVEL" bigint DEFAULT 0,
    "BASELINE_END_FIELD_ID" character varying(255),
    "BASELINE_START_FIELD_ID" character varying(255),
    "COMMIT_ISSUE_ASSIGNEE" integer,
    "CREATED_TIMESTAMP" bigint,
    "CREATOR_ID" character varying(255),
    "DEFAULT_ESTIMATES" text,
    "DEFAULT_TEAM_WEEKLY_CAPACITY" double precision DEFAULT 0.0,
    "DEF_EST_MAP" character varying(255),
    "DEPENDENCY_MODE" bigint,
    "GLOBAL_DEFAULT_VELOCITY" double precision DEFAULT 0.0,
    "GLOBAL_SPRINT_LENGTH" integer DEFAULT 0,
    "HAS_SPRINT_CONSTRAINT" integer DEFAULT 0,
    "HEURISTIC_THRESHOLD" integer DEFAULT 0,
    "HOURS_PER_DAY" double precision DEFAULT 0.0,
    "ID" bigint NOT NULL,
    "IGNORE_RELEASES" integer,
    "IGNORE_SPRINTS" integer,
    "IGNORE_TEAMS" integer,
    "INCLUDE_COMPLETED_ISSUES_FOR" integer,
    "ISSUE_INFERRED_DATE_SELECTION" bigint,
    "MAX_RESOURCES_PER_STORY" bigint DEFAULT 0,
    "MIN_LOAD_UNSTR_EPICS" bigint DEFAULT 0,
    "MULTI_SCENARIO_ENABLED" integer,
    "PLANNING_UNIT" bigint,
    "PORTFOLIO_PLAN_VERSION" bigint DEFAULT 0,
    "PROGRAM_ID" bigint,
    "RANK_AGAINST_STORIES" boolean,
    "SCHEDULING_END_CUSTOM_FIELD" bigint,
    "SCHEDULING_START_CUSTOM_FIELD" bigint,
    "SCHEDULING_VERBOSITY" bigint DEFAULT 0,
    "SPRINT_EXCEEDED_WARN" integer DEFAULT 0,
    "STRICT_STAGE_DIVISION" integer DEFAULT 0,
    "SYNC_START_ENABLED" integer DEFAULT 0,
    "TIME_ZONE" character varying(255),
    "TITLE" character varying(255),
    "UNESTIMATED_ISSUES_OPTION" bigint DEFAULT 0,
    "WEEKDAY_CONFIGURATION" integer DEFAULT 0
);


ALTER TABLE public."AO_D9132D_PLAN" OWNER TO jira;

--
-- Name: AO_D9132D_PLANNED_CAPACITY; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_PLANNED_CAPACITY" (
    "CAPACITY" double precision NOT NULL,
    "C_KEY" character varying(255) NOT NULL,
    "ID" bigint NOT NULL,
    "ITERATION_ID" bigint NOT NULL,
    "PLANNING_UNIT" character varying(32) NOT NULL,
    "PLAN_ID" bigint,
    "SCHEDULING_MODE" character varying(32) NOT NULL,
    "SPRINT_ID" character varying(255),
    "TEAM_KEY" character varying(255) NOT NULL
);


ALTER TABLE public."AO_D9132D_PLANNED_CAPACITY" OWNER TO jira;

--
-- Name: AO_D9132D_PLANNED_CAPACITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_PLANNED_CAPACITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_PLANNED_CAPACITY_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_PLANNED_CAPACITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_PLANNED_CAPACITY_ID_seq" OWNED BY public."AO_D9132D_PLANNED_CAPACITY"."ID";


--
-- Name: AO_D9132D_PLANSKILL; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_PLANSKILL" (
    "C_KEY" character varying(255) NOT NULL,
    "ID" bigint NOT NULL,
    "PLAN_ID" bigint,
    "SKILL_ID" bigint,
    "STAGE" bigint,
    "WEIGHT" double precision
);


ALTER TABLE public."AO_D9132D_PLANSKILL" OWNER TO jira;

--
-- Name: AO_D9132D_PLANSKILL_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_PLANSKILL_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_PLANSKILL_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_PLANSKILL_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_PLANSKILL_ID_seq" OWNED BY public."AO_D9132D_PLANSKILL"."ID";


--
-- Name: AO_D9132D_PLANTEAM; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_PLANTEAM" (
    "CAPACITY_MEASUREMENT" bigint,
    "ID" bigint NOT NULL,
    "ISSUE_SOURCE_ID" bigint,
    "ITERATION_LENGTH" bigint,
    "PLAN_ID" bigint,
    "SCHEDULING_MODE" bigint,
    "TEAM_ID" bigint,
    "VELOCITY" double precision,
    "WEEKLY_HOURS" double precision
);


ALTER TABLE public."AO_D9132D_PLANTEAM" OWNER TO jira;

--
-- Name: AO_D9132D_PLANTEAM_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_PLANTEAM_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_PLANTEAM_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_PLANTEAM_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_PLANTEAM_ID_seq" OWNED BY public."AO_D9132D_PLANTEAM"."ID";


--
-- Name: AO_D9132D_PLANTHEME; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_PLANTHEME" (
    "C_KEY" character varying(255) NOT NULL,
    "ID" bigint NOT NULL,
    "PLAN_ID" bigint,
    "THEME_ID" bigint,
    "WEIGHT" double precision
);


ALTER TABLE public."AO_D9132D_PLANTHEME" OWNER TO jira;

--
-- Name: AO_D9132D_PLANTHEME_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_PLANTHEME_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_PLANTHEME_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_PLANTHEME_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_PLANTHEME_ID_seq" OWNED BY public."AO_D9132D_PLANTHEME"."ID";


--
-- Name: AO_D9132D_PLANVERSION; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_PLANVERSION" (
    "C_KEY" character varying(255) NOT NULL,
    "ID" bigint NOT NULL,
    "PLAN_ID" bigint,
    "VERSION_ID" bigint,
    "XPROJECT_VERSION_ID" bigint
);


ALTER TABLE public."AO_D9132D_PLANVERSION" OWNER TO jira;

--
-- Name: AO_D9132D_PLANVERSION_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_PLANVERSION_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_PLANVERSION_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_PLANVERSION_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_PLANVERSION_ID_seq" OWNED BY public."AO_D9132D_PLANVERSION"."ID";


--
-- Name: AO_D9132D_PLAN_CUSTOM_FIELD; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_PLAN_CUSTOM_FIELD" (
    "CUSTOM_FIELD_ID" bigint,
    "C_KEY" character varying(255) NOT NULL,
    "FILTERING_ALLOWED" boolean,
    "ID" bigint NOT NULL,
    "PLAN_ID" bigint
);


ALTER TABLE public."AO_D9132D_PLAN_CUSTOM_FIELD" OWNER TO jira;

--
-- Name: AO_D9132D_PLAN_CUSTOM_FIELD_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_PLAN_CUSTOM_FIELD_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_PLAN_CUSTOM_FIELD_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_PLAN_CUSTOM_FIELD_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_PLAN_CUSTOM_FIELD_ID_seq" OWNED BY public."AO_D9132D_PLAN_CUSTOM_FIELD"."ID";


--
-- Name: AO_D9132D_PLAN_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_PLAN_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_PLAN_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_PLAN_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_PLAN_ID_seq" OWNED BY public."AO_D9132D_PLAN"."ID";


--
-- Name: AO_D9132D_PLAN_USER_PROPERTY; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_PLAN_USER_PROPERTY" (
    "C_KEY" character varying(255) NOT NULL,
    "ID" bigint NOT NULL,
    "KEY" character varying(255) NOT NULL,
    "PLAN_ID" bigint NOT NULL,
    "USER_KEY" character varying(255) NOT NULL,
    "VALUE" text NOT NULL
);


ALTER TABLE public."AO_D9132D_PLAN_USER_PROPERTY" OWNER TO jira;

--
-- Name: AO_D9132D_PLAN_USER_PROPERTY_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_PLAN_USER_PROPERTY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_PLAN_USER_PROPERTY_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_PLAN_USER_PROPERTY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_PLAN_USER_PROPERTY_ID_seq" OWNED BY public."AO_D9132D_PLAN_USER_PROPERTY"."ID";


--
-- Name: AO_D9132D_PLAN_US_PR_MAPPING; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_PLAN_US_PR_MAPPING" (
    "ID" bigint NOT NULL,
    "PLAN_ID" bigint DEFAULT 0,
    "USER_ID" bigint DEFAULT 0
);


ALTER TABLE public."AO_D9132D_PLAN_US_PR_MAPPING" OWNER TO jira;

--
-- Name: AO_D9132D_PLAN_US_PR_MAPPING_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_PLAN_US_PR_MAPPING_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_PLAN_US_PR_MAPPING_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_PLAN_US_PR_MAPPING_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_PLAN_US_PR_MAPPING_ID_seq" OWNED BY public."AO_D9132D_PLAN_US_PR_MAPPING"."ID";


--
-- Name: AO_D9132D_PROGRAM; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_PROGRAM" (
    "DESCRIPTION" text,
    "ID" bigint NOT NULL,
    "OWNER" character varying(255),
    "TITLE" character varying(255)
);


ALTER TABLE public."AO_D9132D_PROGRAM" OWNER TO jira;

--
-- Name: AO_D9132D_PROGRAM_CUSTOM_FIELD; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_PROGRAM_CUSTOM_FIELD" (
    "CUSTOM_FIELD_ID" bigint,
    "C_KEY" character varying(255) NOT NULL,
    "ID" bigint NOT NULL,
    "PROGRAM_ID" bigint
);


ALTER TABLE public."AO_D9132D_PROGRAM_CUSTOM_FIELD" OWNER TO jira;

--
-- Name: AO_D9132D_PROGRAM_CUSTOM_FIELD_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_PROGRAM_CUSTOM_FIELD_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_PROGRAM_CUSTOM_FIELD_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_PROGRAM_CUSTOM_FIELD_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_PROGRAM_CUSTOM_FIELD_ID_seq" OWNED BY public."AO_D9132D_PROGRAM_CUSTOM_FIELD"."ID";


--
-- Name: AO_D9132D_PROGRAM_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_PROGRAM_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_PROGRAM_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_PROGRAM_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_PROGRAM_ID_seq" OWNED BY public."AO_D9132D_PROGRAM"."ID";


--
-- Name: AO_D9132D_RANK_ITEM; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_RANK_ITEM" (
    "DOMAIN" character varying(255),
    "ID" bigint NOT NULL,
    "KEY" character varying(255) NOT NULL,
    "RANGE_ID" bigint DEFAULT 0 NOT NULL,
    "UNIQUE" character varying(255) NOT NULL
);


ALTER TABLE public."AO_D9132D_RANK_ITEM" OWNER TO jira;

--
-- Name: AO_D9132D_RANK_ITEM_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_RANK_ITEM_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_RANK_ITEM_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_RANK_ITEM_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_RANK_ITEM_ID_seq" OWNED BY public."AO_D9132D_RANK_ITEM"."ID";


--
-- Name: AO_D9132D_SAVED_VIEW; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_SAVED_VIEW" (
    "CREATED_BY" character varying(255),
    "CREATED_TIMESTAMP" bigint,
    "DEFAULT" boolean,
    "ID" bigint NOT NULL,
    "LAST_MODIFIED_BY" character varying(255),
    "LAST_MODIFIED_TIMESTAMP" bigint,
    "NAME" character varying(255) NOT NULL,
    "PREFERENCES" text NOT NULL,
    "SUBJECT_ID" bigint DEFAULT 0,
    "SUBJECT_TYPE" character varying(255) NOT NULL,
    "VERSION" bigint DEFAULT 0
);


ALTER TABLE public."AO_D9132D_SAVED_VIEW" OWNER TO jira;

--
-- Name: AO_D9132D_SAVED_VIEW2; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_SAVED_VIEW2" (
    "CREATED_BY" character varying(255),
    "CREATED_TIMESTAMP" bigint,
    "C_KEY" character varying(255) NOT NULL,
    "DEFAULT" boolean,
    "ID" bigint NOT NULL,
    "LAST_MODIFIED_BY" character varying(255),
    "LAST_MODIFIED_TIMESTAMP" bigint,
    "NAME" character varying(255) NOT NULL,
    "PREFERENCES" text NOT NULL,
    "SUBJECT_ID" bigint DEFAULT 0,
    "SUBJECT_TYPE" character varying(255) NOT NULL,
    "VERSION" bigint DEFAULT 0
);


ALTER TABLE public."AO_D9132D_SAVED_VIEW2" OWNER TO jira;

--
-- Name: AO_D9132D_SAVED_VIEW2_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_SAVED_VIEW2_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_SAVED_VIEW2_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_SAVED_VIEW2_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_SAVED_VIEW2_ID_seq" OWNED BY public."AO_D9132D_SAVED_VIEW2"."ID";


--
-- Name: AO_D9132D_SAVED_VIEW_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_SAVED_VIEW_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_SAVED_VIEW_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_SAVED_VIEW_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_SAVED_VIEW_ID_seq" OWNED BY public."AO_D9132D_SAVED_VIEW"."ID";


--
-- Name: AO_D9132D_SCENARIO; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_SCENARIO" (
    "COLOR" character varying(255),
    "DESCRIPTION" character varying(255),
    "ID" bigint NOT NULL,
    "MASTER" boolean,
    "PLAN_ID" bigint,
    "TITLE" character varying(255)
);


ALTER TABLE public."AO_D9132D_SCENARIO" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_ABILITY; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_SCENARIO_ABILITY" (
    "C_KEY" character varying(255) NOT NULL,
    "ID" bigint NOT NULL,
    "ITEM_KEY" character varying(255) NOT NULL,
    "LAST_CHANGE_TIMESTAMP" bigint,
    "LAST_CHANGE_USER" character varying(255),
    "PERSON_ITEM_KEY" character varying(255),
    "SCENARIO_ID" bigint,
    "SCENARIO_TYPE" character varying(255) NOT NULL,
    "SKILL_ITEM_KEY" character varying(255),
    "U_AB" character varying(255) NOT NULL
);


ALTER TABLE public."AO_D9132D_SCENARIO_ABILITY" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_ABILITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_SCENARIO_ABILITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_SCENARIO_ABILITY_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_ABILITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_SCENARIO_ABILITY_ID_seq" OWNED BY public."AO_D9132D_SCENARIO_ABILITY"."ID";


--
-- Name: AO_D9132D_SCENARIO_AVLBLTY; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_SCENARIO_AVLBLTY" (
    "END" bigint,
    "ID" bigint NOT NULL,
    "SCENARIO_RESOURCE_ID" bigint,
    "START" bigint,
    "TITLE" character varying(255),
    "WEEKLY_HOURS" double precision
);


ALTER TABLE public."AO_D9132D_SCENARIO_AVLBLTY" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_AVLBLTY_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_SCENARIO_AVLBLTY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_SCENARIO_AVLBLTY_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_AVLBLTY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_SCENARIO_AVLBLTY_ID_seq" OWNED BY public."AO_D9132D_SCENARIO_AVLBLTY"."ID";


--
-- Name: AO_D9132D_SCENARIO_CHANGES; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_SCENARIO_CHANGES" (
    "COUNTER" bigint NOT NULL,
    "C_KEY" character varying(255) NOT NULL,
    "ID" bigint NOT NULL,
    "SCENARIO_ID" bigint,
    "T_TYPE" integer NOT NULL
);


ALTER TABLE public."AO_D9132D_SCENARIO_CHANGES" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_CHANGES_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_SCENARIO_CHANGES_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_SCENARIO_CHANGES_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_CHANGES_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_SCENARIO_CHANGES_ID_seq" OWNED BY public."AO_D9132D_SCENARIO_CHANGES"."ID";


--
-- Name: AO_D9132D_SCENARIO_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_SCENARIO_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_SCENARIO_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_SCENARIO_ID_seq" OWNED BY public."AO_D9132D_SCENARIO"."ID";


--
-- Name: AO_D9132D_SCENARIO_ISSUES; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_SCENARIO_ISSUES" (
    "ASSIGNEE_ID" character varying(255),
    "ASSIGNEE_ID_CHANGED" boolean,
    "BASELINE_END" bigint,
    "BASELINE_END_CHANGED" boolean,
    "BSLN_EARLIEST_START" bigint,
    "BSLN_EARLIEST_START_CHANGED" boolean,
    "COMPONENTS_CHANGED" boolean,
    "CREATED" bigint,
    "C_KEY" character varying(255) NOT NULL,
    "DESCRIPTION" text,
    "DESCRIPTION_CHANGED" boolean,
    "DISTRIBUTION_CHANGED" boolean,
    "DUE_DATE" bigint,
    "DUE_DATE_CHANGED" boolean,
    "EARLIEST_START" bigint,
    "EARLIEST_START_CHANGED" boolean,
    "ID" bigint NOT NULL,
    "ITEM_KEY" character varying(255) NOT NULL,
    "LABELS_CHANGED" boolean,
    "LAST_CHANGE_TIMESTAMP" bigint,
    "LAST_CHANGE_USER" character varying(255),
    "LATER_RELEASE" boolean,
    "LATER_RELEASE_CHANGED" boolean,
    "ORIG_DIST_CHANGED" boolean,
    "ORIG_STPTS_ESTIMATE" double precision,
    "ORIG_STPTS_ESTIMATE_CHANGED" boolean,
    "ORIG_TIME_ESTIMATE" bigint,
    "ORIG_TIME_ESTIMATE_CHANGED" boolean,
    "PARENT_ID" character varying(255),
    "PARENT_ID_CHANGED" boolean,
    "PRIORITY_ID" character varying(255),
    "PRIORITY_ID_CHANGED" boolean,
    "PROJECT_ID" bigint,
    "PROJECT_ID_CHANGED" boolean,
    "RESOURCES_CHANGED" boolean,
    "SCENARIO_ID" bigint,
    "SCENARIO_TYPE" character varying(255) NOT NULL,
    "SPRINT_ID" character varying(255),
    "SPRINT_ID_CHANGED" boolean,
    "STATUS_ID" character varying(255),
    "STATUS_ID_CHANGED" boolean,
    "STORY_POINTS_ESTIMATE" double precision,
    "STORY_POINTS_ESTIMATE_CHANGED" boolean,
    "TEAM_ID_CHANGED" boolean,
    "TEAM_KEY" character varying(255),
    "THEME_ID" character varying(255),
    "THEME_ID_CHANGED" boolean,
    "TIME_ESTIMATE" bigint,
    "TIME_ESTIMATE_CHANGED" boolean,
    "TITLE" character varying(255),
    "TITLE_CHANGED" boolean,
    "TYPE_ID" bigint,
    "TYPE_ID_CHANGED" boolean,
    "VERSION_ID" character varying(255),
    "VERSION_ID_CHANGED" boolean
);


ALTER TABLE public."AO_D9132D_SCENARIO_ISSUES" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_ISSUES_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_SCENARIO_ISSUES_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_SCENARIO_ISSUES_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_ISSUES_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_SCENARIO_ISSUES_ID_seq" OWNED BY public."AO_D9132D_SCENARIO_ISSUES"."ID";


--
-- Name: AO_D9132D_SCENARIO_ISSUE_CMPNT; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_SCENARIO_ISSUE_CMPNT" (
    "COMPONENT_ID" bigint,
    "ID" bigint NOT NULL,
    "SCENARIO_ISSUE_ID" bigint
);


ALTER TABLE public."AO_D9132D_SCENARIO_ISSUE_CMPNT" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_ISSUE_CMPNT_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_SCENARIO_ISSUE_CMPNT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_SCENARIO_ISSUE_CMPNT_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_ISSUE_CMPNT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_SCENARIO_ISSUE_CMPNT_ID_seq" OWNED BY public."AO_D9132D_SCENARIO_ISSUE_CMPNT"."ID";


--
-- Name: AO_D9132D_SCENARIO_ISSUE_LABEL; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_SCENARIO_ISSUE_LABEL" (
    "ID" bigint NOT NULL,
    "LABEL" character varying(255),
    "SCENARIO_ISSUE_ID" bigint
);


ALTER TABLE public."AO_D9132D_SCENARIO_ISSUE_LABEL" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_ISSUE_LABEL_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_SCENARIO_ISSUE_LABEL_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_SCENARIO_ISSUE_LABEL_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_ISSUE_LABEL_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_SCENARIO_ISSUE_LABEL_ID_seq" OWNED BY public."AO_D9132D_SCENARIO_ISSUE_LABEL"."ID";


--
-- Name: AO_D9132D_SCENARIO_ISSUE_LINKS; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_SCENARIO_ISSUE_LINKS" (
    "C_KEY" character varying(255) NOT NULL,
    "ID" bigint NOT NULL,
    "ITEM_KEY" character varying(255) NOT NULL,
    "LAST_CHANGE_TIMESTAMP" bigint,
    "LAST_CHANGE_USER" character varying(255),
    "LINK_TYPE" bigint,
    "LINK_TYPE_CHANGED" boolean,
    "SCENARIO_ID" bigint,
    "SCENARIO_TYPE" character varying(255) NOT NULL,
    "SOURCE" character varying(255),
    "TARGET" character varying(255)
);


ALTER TABLE public."AO_D9132D_SCENARIO_ISSUE_LINKS" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_ISSUE_LINKS_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_SCENARIO_ISSUE_LINKS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_SCENARIO_ISSUE_LINKS_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_ISSUE_LINKS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_SCENARIO_ISSUE_LINKS_ID_seq" OWNED BY public."AO_D9132D_SCENARIO_ISSUE_LINKS"."ID";


--
-- Name: AO_D9132D_SCENARIO_ISSUE_RES; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_SCENARIO_ISSUE_RES" (
    "ID" bigint NOT NULL,
    "RESOURCE_ITEM_KEY" character varying(255),
    "SCENARIO_ISSUE_ID" bigint
);


ALTER TABLE public."AO_D9132D_SCENARIO_ISSUE_RES" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_ISSUE_RES_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_SCENARIO_ISSUE_RES_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_SCENARIO_ISSUE_RES_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_ISSUE_RES_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_SCENARIO_ISSUE_RES_ID_seq" OWNED BY public."AO_D9132D_SCENARIO_ISSUE_RES"."ID";


--
-- Name: AO_D9132D_SCENARIO_PERSON; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_SCENARIO_PERSON" (
    "C_KEY" character varying(255) NOT NULL,
    "ID" bigint NOT NULL,
    "ITEM_KEY" character varying(255) NOT NULL,
    "LAST_CHANGE_TIMESTAMP" bigint,
    "LAST_CHANGE_USER" character varying(255),
    "SCENARIO_ID" bigint,
    "SCENARIO_TYPE" character varying(255) NOT NULL,
    "TITLE" character varying(255),
    "TITLE_CHANGED" boolean
);


ALTER TABLE public."AO_D9132D_SCENARIO_PERSON" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_PERSON_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_SCENARIO_PERSON_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_SCENARIO_PERSON_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_PERSON_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_SCENARIO_PERSON_ID_seq" OWNED BY public."AO_D9132D_SCENARIO_PERSON"."ID";


--
-- Name: AO_D9132D_SCENARIO_PLAN_CAP; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_SCENARIO_PLAN_CAP" (
    "CAPACITY" double precision,
    "CAPACITY_CHANGED" boolean,
    "C_KEY" character varying(255) NOT NULL,
    "ID" bigint NOT NULL,
    "ITEM_KEY" character varying(255) NOT NULL,
    "ITERATION_ID" bigint,
    "ITERATION_ID_CHANGED" boolean,
    "LAST_CHANGE_TIMESTAMP" bigint,
    "LAST_CHANGE_USER" character varying(255),
    "PLANNING_UNIT" character varying(32),
    "PLANNING_UNIT_CHANGED" boolean,
    "SCENARIO_ID" bigint,
    "SCENARIO_TYPE" character varying(255) NOT NULL,
    "SCHEDULING_MODE" character varying(32),
    "SCHEDULING_MODE_CHANGED" boolean,
    "SPRINT_ID" character varying(255),
    "SPRINT_ID_CHANGED" boolean,
    "TEAM_KEY" character varying(255),
    "TEAM_KEY_CHANGED" boolean
);


ALTER TABLE public."AO_D9132D_SCENARIO_PLAN_CAP" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_PLAN_CAP_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_SCENARIO_PLAN_CAP_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_SCENARIO_PLAN_CAP_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_PLAN_CAP_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_SCENARIO_PLAN_CAP_ID_seq" OWNED BY public."AO_D9132D_SCENARIO_PLAN_CAP"."ID";


--
-- Name: AO_D9132D_SCENARIO_RESOURCE; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_SCENARIO_RESOURCE" (
    "AVAILABILITY_CHANGED" boolean,
    "C_KEY" character varying(255) NOT NULL,
    "ID" bigint NOT NULL,
    "ITEM_KEY" character varying(255) NOT NULL,
    "JOIN_DATE" bigint,
    "JOIN_DATE_CHANGED" boolean,
    "LAST_CHANGE_TIMESTAMP" bigint,
    "LAST_CHANGE_USER" character varying(255),
    "LEAVE_DATE" bigint,
    "LEAVE_DATE_CHANGED" boolean,
    "PERSON_ITEM_KEY" character varying(255),
    "SCENARIO_ID" bigint,
    "SCENARIO_TYPE" character varying(255) NOT NULL,
    "TEAM_ITEM_KEY" character varying(255),
    "WEEKLY_HOURS" double precision,
    "WEEKLY_HOURS_CHANGED" boolean
);


ALTER TABLE public."AO_D9132D_SCENARIO_RESOURCE" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_RESOURCE_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_SCENARIO_RESOURCE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_SCENARIO_RESOURCE_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_RESOURCE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_SCENARIO_RESOURCE_ID_seq" OWNED BY public."AO_D9132D_SCENARIO_RESOURCE"."ID";


--
-- Name: AO_D9132D_SCENARIO_SKILL; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_SCENARIO_SKILL" (
    "ADD_TO_PLAN" boolean,
    "C_KEY" character varying(255) NOT NULL,
    "ID" bigint NOT NULL,
    "ITEM_KEY" character varying(255) NOT NULL,
    "LAST_CHANGE_TIMESTAMP" bigint,
    "LAST_CHANGE_USER" character varying(255),
    "SCENARIO_ID" bigint,
    "SCENARIO_TYPE" character varying(255) NOT NULL,
    "STAGE_ID" character varying(255),
    "STAGE_ID_CHANGED" boolean,
    "TITLE" character varying(255),
    "TITLE_CHANGED" boolean,
    "WEIGHT" double precision,
    "WEIGHT_CHANGED" boolean
);


ALTER TABLE public."AO_D9132D_SCENARIO_SKILL" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_SKILL_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_SCENARIO_SKILL_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_SCENARIO_SKILL_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_SKILL_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_SCENARIO_SKILL_ID_seq" OWNED BY public."AO_D9132D_SCENARIO_SKILL"."ID";


--
-- Name: AO_D9132D_SCENARIO_STAGE; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_SCENARIO_STAGE" (
    "COLOR" character varying(255),
    "COLOR_CHANGED" boolean,
    "C_KEY" character varying(255) NOT NULL,
    "ID" bigint NOT NULL,
    "ITEM_KEY" character varying(255) NOT NULL,
    "LAST_CHANGE_TIMESTAMP" bigint,
    "LAST_CHANGE_USER" character varying(255),
    "SCENARIO_ID" bigint,
    "SCENARIO_TYPE" character varying(255) NOT NULL,
    "TITLE" character varying(255),
    "TITLE_CHANGED" boolean,
    "WEIGHT" double precision,
    "WEIGHT_CHANGED" boolean
);


ALTER TABLE public."AO_D9132D_SCENARIO_STAGE" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_STAGE_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_SCENARIO_STAGE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_SCENARIO_STAGE_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_STAGE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_SCENARIO_STAGE_ID_seq" OWNED BY public."AO_D9132D_SCENARIO_STAGE"."ID";


--
-- Name: AO_D9132D_SCENARIO_TEAM; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_SCENARIO_TEAM" (
    "ADD_TO_PLAN" boolean,
    "AVATAR" character varying(255),
    "AVATAR_CHANGED" boolean,
    "CAPACITY_MEASUREMENT" character varying(255),
    "CAPACITY_MEASUREMENT_CHANGED" boolean,
    "C_KEY" character varying(255) NOT NULL,
    "EXCLUDED_SPRINTS_CHANGED" boolean,
    "ID" bigint NOT NULL,
    "ISSUE_SOURCE_CHANGED" boolean,
    "ISSUE_SOURCE_ID" bigint,
    "ITEM_KEY" character varying(255) NOT NULL,
    "ITERATION_LENGTH" bigint,
    "ITERATION_LENGTH_CHANGED" boolean,
    "LAST_CHANGE_TIMESTAMP" bigint,
    "LAST_CHANGE_USER" character varying(255),
    "SCENARIO_ID" bigint,
    "SCENARIO_TYPE" character varying(255) NOT NULL,
    "SCHEDULING_MODE" character varying(255),
    "SCHEDULING_MODE_CHANGED" boolean,
    "TITLE" character varying(255),
    "TITLE_CHANGED" boolean,
    "VELOCITY" double precision,
    "VELOCITY_CHANGED" boolean,
    "WEEKLY_HOURS" double precision,
    "WEEKLY_HOURS_CHANGED" boolean
);


ALTER TABLE public."AO_D9132D_SCENARIO_TEAM" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_TEAM_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_SCENARIO_TEAM_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_SCENARIO_TEAM_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_TEAM_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_SCENARIO_TEAM_ID_seq" OWNED BY public."AO_D9132D_SCENARIO_TEAM"."ID";


--
-- Name: AO_D9132D_SCENARIO_THEME; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_SCENARIO_THEME" (
    "ADD_TO_PLAN" boolean,
    "COLOR" character varying(255),
    "COLOR_CHANGED" boolean,
    "C_KEY" character varying(255) NOT NULL,
    "ID" bigint NOT NULL,
    "ITEM_KEY" character varying(255) NOT NULL,
    "LAST_CHANGE_TIMESTAMP" bigint,
    "LAST_CHANGE_USER" character varying(255),
    "SCENARIO_ID" bigint,
    "SCENARIO_TYPE" character varying(255) NOT NULL,
    "TITLE" character varying(255),
    "TITLE_CHANGED" boolean,
    "WEIGHT" double precision,
    "WEIGHT_CHANGED" boolean
);


ALTER TABLE public."AO_D9132D_SCENARIO_THEME" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_THEME_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_SCENARIO_THEME_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_SCENARIO_THEME_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_THEME_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_SCENARIO_THEME_ID_seq" OWNED BY public."AO_D9132D_SCENARIO_THEME"."ID";


--
-- Name: AO_D9132D_SCENARIO_VERSION; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_SCENARIO_VERSION" (
    "C_KEY" character varying(255) NOT NULL,
    "DELTA" bigint,
    "DELTA_CHANGED" boolean,
    "DESCRIPTION" text,
    "DESCRIPTION_CHANGED" boolean,
    "END_DATE" bigint,
    "END_DATE_CHANGED" boolean,
    "ID" bigint NOT NULL,
    "ITEM_KEY" character varying(255) NOT NULL,
    "LAST_CHANGE_TIMESTAMP" bigint,
    "LAST_CHANGE_USER" character varying(255),
    "PROJECT_ID" bigint,
    "SCENARIO_ID" bigint,
    "SCENARIO_TYPE" character varying(255) NOT NULL,
    "START_DATE" bigint,
    "START_DATE_CHANGED" boolean,
    "TITLE" character varying(255),
    "TITLE_CHANGED" boolean,
    "XPROJECT_VERSION" character varying(255),
    "XPROJECT_VERSION_CHANGED" boolean
);


ALTER TABLE public."AO_D9132D_SCENARIO_VERSION" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_VERSION_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_SCENARIO_VERSION_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_SCENARIO_VERSION_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_VERSION_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_SCENARIO_VERSION_ID_seq" OWNED BY public."AO_D9132D_SCENARIO_VERSION"."ID";


--
-- Name: AO_D9132D_SCENARIO_XPVERSION; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_SCENARIO_XPVERSION" (
    "C_KEY" character varying(255) NOT NULL,
    "ID" bigint NOT NULL,
    "ITEM_KEY" character varying(255) NOT NULL,
    "LAST_CHANGE_TIMESTAMP" bigint,
    "LAST_CHANGE_USER" character varying(255),
    "NAME" character varying(255),
    "NAME_CHANGED" boolean,
    "SCENARIO_ID" bigint,
    "SCENARIO_TYPE" character varying(255) NOT NULL
);


ALTER TABLE public."AO_D9132D_SCENARIO_XPVERSION" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_XPVERSION_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_SCENARIO_XPVERSION_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_SCENARIO_XPVERSION_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_SCENARIO_XPVERSION_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_SCENARIO_XPVERSION_ID_seq" OWNED BY public."AO_D9132D_SCENARIO_XPVERSION"."ID";


--
-- Name: AO_D9132D_SCEN_CSTM_FLD_MVAL; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_SCEN_CSTM_FLD_MVAL" (
    "ID" bigint NOT NULL,
    "SCENARIO_ISSUE_CUSTOM_FIELD_ID" bigint,
    "VALUE" text
);


ALTER TABLE public."AO_D9132D_SCEN_CSTM_FLD_MVAL" OWNER TO jira;

--
-- Name: AO_D9132D_SCEN_CSTM_FLD_MVAL_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_SCEN_CSTM_FLD_MVAL_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_SCEN_CSTM_FLD_MVAL_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_SCEN_CSTM_FLD_MVAL_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_SCEN_CSTM_FLD_MVAL_ID_seq" OWNED BY public."AO_D9132D_SCEN_CSTM_FLD_MVAL"."ID";


--
-- Name: AO_D9132D_SCEN_CUSTOM_FIELD; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_SCEN_CUSTOM_FIELD" (
    "C_KEY" character varying(255) NOT NULL,
    "DOUBLE_VALUE" double precision,
    "ID" bigint NOT NULL,
    "NUMBER_VALUE" bigint,
    "PLAN_CUSTOM_FIELD_ID" bigint,
    "SCENARIO_ISSUE_ID" bigint,
    "STRING_VALUE" character varying(255),
    "TEXT_VALUE" text
);


ALTER TABLE public."AO_D9132D_SCEN_CUSTOM_FIELD" OWNER TO jira;

--
-- Name: AO_D9132D_SCEN_CUSTOM_FIELD_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_SCEN_CUSTOM_FIELD_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_SCEN_CUSTOM_FIELD_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_SCEN_CUSTOM_FIELD_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_SCEN_CUSTOM_FIELD_ID_seq" OWNED BY public."AO_D9132D_SCEN_CUSTOM_FIELD"."ID";


--
-- Name: AO_D9132D_SCEN_TEAM_EX_SPRINT; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_SCEN_TEAM_EX_SPRINT" (
    "ID" bigint NOT NULL,
    "SCENARIO_TEAM_ID" bigint,
    "SPRINT_ID" character varying(255)
);


ALTER TABLE public."AO_D9132D_SCEN_TEAM_EX_SPRINT" OWNER TO jira;

--
-- Name: AO_D9132D_SCEN_TEAM_EX_SPRINT_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_SCEN_TEAM_EX_SPRINT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_SCEN_TEAM_EX_SPRINT_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_SCEN_TEAM_EX_SPRINT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_SCEN_TEAM_EX_SPRINT_ID_seq" OWNED BY public."AO_D9132D_SCEN_TEAM_EX_SPRINT"."ID";


--
-- Name: AO_D9132D_SHARED_REPORT; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_SHARED_REPORT" (
    "FILTER_CONFIGURATION" text NOT NULL,
    "FILTER_CONFIG_HASH" integer,
    "HASH" character varying(255) NOT NULL,
    "HIERARCHY_LEVEL" integer NOT NULL,
    "ID" bigint NOT NULL,
    "PLAN_ID" bigint NOT NULL,
    "REPORT_CONFIGURATION" text,
    "REPORT_CONFIG_HASH" integer,
    "REPORT_ID" character varying(255) NOT NULL,
    "SCENARIO" bigint
);


ALTER TABLE public."AO_D9132D_SHARED_REPORT" OWNER TO jira;

--
-- Name: AO_D9132D_SHARED_REPORT_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_SHARED_REPORT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_SHARED_REPORT_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_SHARED_REPORT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_SHARED_REPORT_ID_seq" OWNED BY public."AO_D9132D_SHARED_REPORT"."ID";


--
-- Name: AO_D9132D_SOLUTION; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_SOLUTION" (
    "HEARTBEAT_TIMESTAMP" timestamp without time zone NOT NULL,
    "ID" bigint NOT NULL,
    "PLAN" bigint NOT NULL,
    "SCENARIO" bigint,
    "SCHEDULABLE_ISSUE_COUNT" bigint,
    "SCHEDULED_ISSUE_COUNT" bigint,
    "SOLUTION" text,
    "STATE" character varying(255) NOT NULL,
    "TRIGGER_TIMESTAMP" timestamp without time zone NOT NULL,
    "UNIQUE_GUARD" character varying(255) NOT NULL,
    "VERSION" character varying(255)
);


ALTER TABLE public."AO_D9132D_SOLUTION" OWNER TO jira;

--
-- Name: AO_D9132D_SOLUTION_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_SOLUTION_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_SOLUTION_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_SOLUTION_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_SOLUTION_ID_seq" OWNED BY public."AO_D9132D_SOLUTION"."ID";


--
-- Name: AO_D9132D_STAGE; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_STAGE" (
    "COLOR" character varying(255),
    "ID" bigint NOT NULL,
    "PLAN_ID" bigint,
    "SKILL_ID" bigint,
    "WEIGHT" double precision
);


ALTER TABLE public."AO_D9132D_STAGE" OWNER TO jira;

--
-- Name: AO_D9132D_STAGE_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_STAGE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_STAGE_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_STAGE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_STAGE_ID_seq" OWNED BY public."AO_D9132D_STAGE"."ID";


--
-- Name: AO_D9132D_TEAM_EX_SPRINT; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_TEAM_EX_SPRINT" (
    "ID" bigint NOT NULL,
    "PLANTEAM_ID" bigint,
    "PLAN_TEAM_ID" bigint,
    "SPRINT_ID" bigint
);


ALTER TABLE public."AO_D9132D_TEAM_EX_SPRINT" OWNER TO jira;

--
-- Name: AO_D9132D_TEAM_EX_SPRINT_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_TEAM_EX_SPRINT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_TEAM_EX_SPRINT_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_TEAM_EX_SPRINT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_TEAM_EX_SPRINT_ID_seq" OWNED BY public."AO_D9132D_TEAM_EX_SPRINT"."ID";


--
-- Name: AO_D9132D_THEME; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_THEME" (
    "COLOR" character varying(255),
    "ID" bigint NOT NULL,
    "SHARED" boolean,
    "TITLE" character varying(255)
);


ALTER TABLE public."AO_D9132D_THEME" OWNER TO jira;

--
-- Name: AO_D9132D_THEME_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_THEME_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_THEME_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_THEME_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_THEME_ID_seq" OWNED BY public."AO_D9132D_THEME"."ID";


--
-- Name: AO_D9132D_VERSION_ENRICHMENT; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_VERSION_ENRICHMENT" (
    "DELTA" bigint,
    "ENV_ID" bigint NOT NULL,
    "ID" bigint NOT NULL
);


ALTER TABLE public."AO_D9132D_VERSION_ENRICHMENT" OWNER TO jira;

--
-- Name: AO_D9132D_VERSION_ENRICHMENT_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_VERSION_ENRICHMENT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_VERSION_ENRICHMENT_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_VERSION_ENRICHMENT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_VERSION_ENRICHMENT_ID_seq" OWNED BY public."AO_D9132D_VERSION_ENRICHMENT"."ID";


--
-- Name: AO_D9132D_X_PROJECT_VERSION; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_D9132D_X_PROJECT_VERSION" (
    "ID" bigint NOT NULL,
    "PLAN_ID" bigint,
    "TITLE" character varying(255)
);


ALTER TABLE public."AO_D9132D_X_PROJECT_VERSION" OWNER TO jira;

--
-- Name: AO_D9132D_X_PROJECT_VERSION_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_D9132D_X_PROJECT_VERSION_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_D9132D_X_PROJECT_VERSION_ID_seq" OWNER TO jira;

--
-- Name: AO_D9132D_X_PROJECT_VERSION_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_D9132D_X_PROJECT_VERSION_ID_seq" OWNED BY public."AO_D9132D_X_PROJECT_VERSION"."ID";


--
-- Name: AO_E8B6CC_BRANCH; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_E8B6CC_BRANCH" (
    "ID" integer NOT NULL,
    "NAME" character varying(255),
    "REPOSITORY_ID" integer
);


ALTER TABLE public."AO_E8B6CC_BRANCH" OWNER TO jira;

--
-- Name: AO_E8B6CC_BRANCH_HEAD_MAPPING; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_E8B6CC_BRANCH_HEAD_MAPPING" (
    "BRANCH_NAME" character varying(255),
    "HEAD" character varying(255),
    "ID" integer NOT NULL,
    "REPOSITORY_ID" integer
);


ALTER TABLE public."AO_E8B6CC_BRANCH_HEAD_MAPPING" OWNER TO jira;

--
-- Name: AO_E8B6CC_BRANCH_HEAD_MAPPING_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_E8B6CC_BRANCH_HEAD_MAPPING_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_BRANCH_HEAD_MAPPING_ID_seq" OWNER TO jira;

--
-- Name: AO_E8B6CC_BRANCH_HEAD_MAPPING_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_E8B6CC_BRANCH_HEAD_MAPPING_ID_seq" OWNED BY public."AO_E8B6CC_BRANCH_HEAD_MAPPING"."ID";


--
-- Name: AO_E8B6CC_BRANCH_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_E8B6CC_BRANCH_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_BRANCH_ID_seq" OWNER TO jira;

--
-- Name: AO_E8B6CC_BRANCH_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_E8B6CC_BRANCH_ID_seq" OWNED BY public."AO_E8B6CC_BRANCH"."ID";


--
-- Name: AO_E8B6CC_CHANGESET_MAPPING; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_E8B6CC_CHANGESET_MAPPING" (
    "AUTHOR" character varying(255),
    "AUTHOR_EMAIL" character varying(255),
    "BRANCH" character varying(255),
    "DATE" timestamp without time zone,
    "FILES_DATA" text,
    "FILE_COUNT" integer DEFAULT 0,
    "FILE_DETAILS_JSON" text,
    "ID" integer NOT NULL,
    "ISSUE_KEY" character varying(255),
    "MESSAGE" text,
    "NODE" character varying(255),
    "PARENTS_DATA" character varying(255),
    "PROJECT_KEY" character varying(255),
    "RAW_AUTHOR" character varying(255),
    "RAW_NODE" character varying(255),
    "REPOSITORY_ID" integer DEFAULT 0,
    "SMARTCOMMIT_AVAILABLE" boolean,
    "VERSION" integer
);


ALTER TABLE public."AO_E8B6CC_CHANGESET_MAPPING" OWNER TO jira;

--
-- Name: AO_E8B6CC_CHANGESET_MAPPING_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_E8B6CC_CHANGESET_MAPPING_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_CHANGESET_MAPPING_ID_seq" OWNER TO jira;

--
-- Name: AO_E8B6CC_CHANGESET_MAPPING_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_E8B6CC_CHANGESET_MAPPING_ID_seq" OWNED BY public."AO_E8B6CC_CHANGESET_MAPPING"."ID";


--
-- Name: AO_E8B6CC_COMMIT; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_E8B6CC_COMMIT" (
    "AUTHOR" character varying(255),
    "AUTHOR_AVATAR_URL" character varying(255),
    "DATE" timestamp without time zone NOT NULL,
    "DOMAIN_ID" integer DEFAULT 0 NOT NULL,
    "ID" integer NOT NULL,
    "MERGE" boolean,
    "MESSAGE" text,
    "NODE" character varying(255),
    "RAW_AUTHOR" character varying(255)
);


ALTER TABLE public."AO_E8B6CC_COMMIT" OWNER TO jira;

--
-- Name: AO_E8B6CC_COMMIT_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_E8B6CC_COMMIT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_COMMIT_ID_seq" OWNER TO jira;

--
-- Name: AO_E8B6CC_COMMIT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_E8B6CC_COMMIT_ID_seq" OWNED BY public."AO_E8B6CC_COMMIT"."ID";


--
-- Name: AO_E8B6CC_GIT_HUB_EVENT; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_E8B6CC_GIT_HUB_EVENT" (
    "CREATED_AT" timestamp without time zone NOT NULL,
    "GIT_HUB_ID" character varying(255) DEFAULT '0'::character varying NOT NULL,
    "ID" integer NOT NULL,
    "REPOSITORY_ID" integer NOT NULL,
    "SAVE_POINT" boolean
);


ALTER TABLE public."AO_E8B6CC_GIT_HUB_EVENT" OWNER TO jira;

--
-- Name: AO_E8B6CC_GIT_HUB_EVENT_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_E8B6CC_GIT_HUB_EVENT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_GIT_HUB_EVENT_ID_seq" OWNER TO jira;

--
-- Name: AO_E8B6CC_GIT_HUB_EVENT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_E8B6CC_GIT_HUB_EVENT_ID_seq" OWNED BY public."AO_E8B6CC_GIT_HUB_EVENT"."ID";


--
-- Name: AO_E8B6CC_HOOK_MIGRATION_TASK; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_E8B6CC_HOOK_MIGRATION_TASK" (
    "ID" integer NOT NULL,
    "ORGANIZATION_ID" integer DEFAULT 0,
    "REPOSITORY_ID" integer DEFAULT 0
);


ALTER TABLE public."AO_E8B6CC_HOOK_MIGRATION_TASK" OWNER TO jira;

--
-- Name: AO_E8B6CC_HOOK_MIGRATION_TASK_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_E8B6CC_HOOK_MIGRATION_TASK_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_HOOK_MIGRATION_TASK_ID_seq" OWNER TO jira;

--
-- Name: AO_E8B6CC_HOOK_MIGRATION_TASK_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_E8B6CC_HOOK_MIGRATION_TASK_ID_seq" OWNED BY public."AO_E8B6CC_HOOK_MIGRATION_TASK"."ID";


--
-- Name: AO_E8B6CC_ISSUE_MAPPING; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_E8B6CC_ISSUE_MAPPING" (
    "ID" integer NOT NULL,
    "ISSUE_ID" character varying(255),
    "NODE" character varying(255),
    "PROJECT_KEY" character varying(255),
    "REPOSITORY_URI" character varying(255)
);


ALTER TABLE public."AO_E8B6CC_ISSUE_MAPPING" OWNER TO jira;

--
-- Name: AO_E8B6CC_ISSUE_MAPPING_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_E8B6CC_ISSUE_MAPPING_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_ISSUE_MAPPING_ID_seq" OWNER TO jira;

--
-- Name: AO_E8B6CC_ISSUE_MAPPING_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_E8B6CC_ISSUE_MAPPING_ID_seq" OWNED BY public."AO_E8B6CC_ISSUE_MAPPING"."ID";


--
-- Name: AO_E8B6CC_ISSUE_MAPPING_V2; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_E8B6CC_ISSUE_MAPPING_V2" (
    "AUTHOR" character varying(255),
    "BRANCH" character varying(255),
    "DATE" timestamp without time zone,
    "FILES_DATA" text,
    "ID" integer NOT NULL,
    "ISSUE_ID" character varying(255),
    "MESSAGE" text,
    "NODE" character varying(255),
    "PARENTS_DATA" character varying(255),
    "RAW_AUTHOR" character varying(255),
    "RAW_NODE" character varying(255),
    "REPOSITORY_ID" integer DEFAULT 0,
    "VERSION" integer
);


ALTER TABLE public."AO_E8B6CC_ISSUE_MAPPING_V2" OWNER TO jira;

--
-- Name: AO_E8B6CC_ISSUE_MAPPING_V2_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_E8B6CC_ISSUE_MAPPING_V2_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_ISSUE_MAPPING_V2_ID_seq" OWNER TO jira;

--
-- Name: AO_E8B6CC_ISSUE_MAPPING_V2_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_E8B6CC_ISSUE_MAPPING_V2_ID_seq" OWNED BY public."AO_E8B6CC_ISSUE_MAPPING_V2"."ID";


--
-- Name: AO_E8B6CC_ISSUE_TO_BRANCH; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_E8B6CC_ISSUE_TO_BRANCH" (
    "BRANCH_ID" integer,
    "ID" integer NOT NULL,
    "ISSUE_KEY" character varying(255)
);


ALTER TABLE public."AO_E8B6CC_ISSUE_TO_BRANCH" OWNER TO jira;

--
-- Name: AO_E8B6CC_ISSUE_TO_BRANCH_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_E8B6CC_ISSUE_TO_BRANCH_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_ISSUE_TO_BRANCH_ID_seq" OWNER TO jira;

--
-- Name: AO_E8B6CC_ISSUE_TO_BRANCH_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_E8B6CC_ISSUE_TO_BRANCH_ID_seq" OWNED BY public."AO_E8B6CC_ISSUE_TO_BRANCH"."ID";


--
-- Name: AO_E8B6CC_ISSUE_TO_CHANGESET; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_E8B6CC_ISSUE_TO_CHANGESET" (
    "CHANGESET_ID" integer,
    "ID" integer NOT NULL,
    "ISSUE_KEY" character varying(255),
    "PROJECT_KEY" character varying(255)
);


ALTER TABLE public."AO_E8B6CC_ISSUE_TO_CHANGESET" OWNER TO jira;

--
-- Name: AO_E8B6CC_ISSUE_TO_CHANGESET_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_E8B6CC_ISSUE_TO_CHANGESET_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_ISSUE_TO_CHANGESET_ID_seq" OWNER TO jira;

--
-- Name: AO_E8B6CC_ISSUE_TO_CHANGESET_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_E8B6CC_ISSUE_TO_CHANGESET_ID_seq" OWNED BY public."AO_E8B6CC_ISSUE_TO_CHANGESET"."ID";


--
-- Name: AO_E8B6CC_MESSAGE; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_E8B6CC_MESSAGE" (
    "ADDRESS" character varying(255) NOT NULL,
    "ID" integer NOT NULL,
    "PAYLOAD" text NOT NULL,
    "PAYLOAD_TYPE" character varying(255) NOT NULL,
    "PRIORITY" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public."AO_E8B6CC_MESSAGE" OWNER TO jira;

--
-- Name: AO_E8B6CC_MESSAGE_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_E8B6CC_MESSAGE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_MESSAGE_ID_seq" OWNER TO jira;

--
-- Name: AO_E8B6CC_MESSAGE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_E8B6CC_MESSAGE_ID_seq" OWNED BY public."AO_E8B6CC_MESSAGE"."ID";


--
-- Name: AO_E8B6CC_MESSAGE_QUEUE_ITEM; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_E8B6CC_MESSAGE_QUEUE_ITEM" (
    "ID" integer NOT NULL,
    "LAST_FAILED" timestamp without time zone,
    "MESSAGE_ID" integer NOT NULL,
    "QUEUE" character varying(255) NOT NULL,
    "RETRIES_COUNT" integer DEFAULT 0 NOT NULL,
    "STATE" character varying(255) NOT NULL,
    "STATE_INFO" character varying(255)
);


ALTER TABLE public."AO_E8B6CC_MESSAGE_QUEUE_ITEM" OWNER TO jira;

--
-- Name: AO_E8B6CC_MESSAGE_QUEUE_ITEM_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_E8B6CC_MESSAGE_QUEUE_ITEM_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_MESSAGE_QUEUE_ITEM_ID_seq" OWNER TO jira;

--
-- Name: AO_E8B6CC_MESSAGE_QUEUE_ITEM_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_E8B6CC_MESSAGE_QUEUE_ITEM_ID_seq" OWNED BY public."AO_E8B6CC_MESSAGE_QUEUE_ITEM"."ID";


--
-- Name: AO_E8B6CC_MESSAGE_TAG; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_E8B6CC_MESSAGE_TAG" (
    "ID" integer NOT NULL,
    "MESSAGE_ID" integer,
    "TAG" character varying(255)
);


ALTER TABLE public."AO_E8B6CC_MESSAGE_TAG" OWNER TO jira;

--
-- Name: AO_E8B6CC_MESSAGE_TAG_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_E8B6CC_MESSAGE_TAG_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_MESSAGE_TAG_ID_seq" OWNER TO jira;

--
-- Name: AO_E8B6CC_MESSAGE_TAG_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_E8B6CC_MESSAGE_TAG_ID_seq" OWNED BY public."AO_E8B6CC_MESSAGE_TAG"."ID";


--
-- Name: AO_E8B6CC_ORGANIZATION_MAPPING; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_E8B6CC_ORGANIZATION_MAPPING" (
    "ACCESS_TOKEN" character varying(255),
    "ADMIN_PASSWORD" character varying(255),
    "ADMIN_USERNAME" character varying(255),
    "APPROVAL_STATE" character varying(255),
    "AUTOLINK_NEW_REPOS" boolean,
    "DEFAULT_GROUPS_SLUGS" character varying(255),
    "DVCS_TYPE" character varying(255),
    "HOST_URL" character varying(255),
    "ID" integer NOT NULL,
    "LAST_POLLED" bigint,
    "NAME" character varying(450),
    "OAUTH_KEY" character varying(255),
    "OAUTH_SECRET" character varying(255),
    "PRINCIPAL_ID" character varying(255),
    "SMARTCOMMITS_FOR_NEW_REPOS" boolean,
    "STATUS" character varying(255),
    "TOKEN_ID" character varying(255),
    "WEBHOOK_SECRET" character varying(255)
);


ALTER TABLE public."AO_E8B6CC_ORGANIZATION_MAPPING" OWNER TO jira;

--
-- Name: AO_E8B6CC_ORGANIZATION_MAPPING_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_E8B6CC_ORGANIZATION_MAPPING_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_ORGANIZATION_MAPPING_ID_seq" OWNER TO jira;

--
-- Name: AO_E8B6CC_ORGANIZATION_MAPPING_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_E8B6CC_ORGANIZATION_MAPPING_ID_seq" OWNED BY public."AO_E8B6CC_ORGANIZATION_MAPPING"."ID";


--
-- Name: AO_E8B6CC_ORG_TO_PROJECT; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_E8B6CC_ORG_TO_PROJECT" (
    "ID" integer NOT NULL,
    "ORGANIZATION_ID" integer,
    "PROJECT_KEY" character varying(255)
);


ALTER TABLE public."AO_E8B6CC_ORG_TO_PROJECT" OWNER TO jira;

--
-- Name: AO_E8B6CC_ORG_TO_PROJECT_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_E8B6CC_ORG_TO_PROJECT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_ORG_TO_PROJECT_ID_seq" OWNER TO jira;

--
-- Name: AO_E8B6CC_ORG_TO_PROJECT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_E8B6CC_ORG_TO_PROJECT_ID_seq" OWNED BY public."AO_E8B6CC_ORG_TO_PROJECT"."ID";


--
-- Name: AO_E8B6CC_PROJECT_MAPPING; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_E8B6CC_PROJECT_MAPPING" (
    "ID" integer NOT NULL,
    "PASSWORD" character varying(255),
    "PROJECT_KEY" character varying(255),
    "REPOSITORY_URI" character varying(255),
    "USERNAME" character varying(255)
);


ALTER TABLE public."AO_E8B6CC_PROJECT_MAPPING" OWNER TO jira;

--
-- Name: AO_E8B6CC_PROJECT_MAPPING_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_E8B6CC_PROJECT_MAPPING_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_PROJECT_MAPPING_ID_seq" OWNER TO jira;

--
-- Name: AO_E8B6CC_PROJECT_MAPPING_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_E8B6CC_PROJECT_MAPPING_ID_seq" OWNED BY public."AO_E8B6CC_PROJECT_MAPPING"."ID";


--
-- Name: AO_E8B6CC_PROJECT_MAPPING_V2; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_E8B6CC_PROJECT_MAPPING_V2" (
    "ACCESS_TOKEN" character varying(255),
    "ADMIN_PASSWORD" character varying(255),
    "ADMIN_USERNAME" character varying(255),
    "ID" integer NOT NULL,
    "LAST_COMMIT_DATE" timestamp without time zone,
    "PROJECT_KEY" character varying(255),
    "REPOSITORY_NAME" character varying(255),
    "REPOSITORY_TYPE" character varying(255),
    "REPOSITORY_URL" character varying(255)
);


ALTER TABLE public."AO_E8B6CC_PROJECT_MAPPING_V2" OWNER TO jira;

--
-- Name: AO_E8B6CC_PROJECT_MAPPING_V2_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_E8B6CC_PROJECT_MAPPING_V2_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_PROJECT_MAPPING_V2_ID_seq" OWNER TO jira;

--
-- Name: AO_E8B6CC_PROJECT_MAPPING_V2_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_E8B6CC_PROJECT_MAPPING_V2_ID_seq" OWNED BY public."AO_E8B6CC_PROJECT_MAPPING_V2"."ID";


--
-- Name: AO_E8B6CC_PR_ISSUE_KEY; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_E8B6CC_PR_ISSUE_KEY" (
    "DOMAIN_ID" integer DEFAULT 0 NOT NULL,
    "ID" integer NOT NULL,
    "ISSUE_KEY" character varying(255),
    "PULL_REQUEST_ID" integer DEFAULT 0
);


ALTER TABLE public."AO_E8B6CC_PR_ISSUE_KEY" OWNER TO jira;

--
-- Name: AO_E8B6CC_PR_ISSUE_KEY_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_E8B6CC_PR_ISSUE_KEY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_PR_ISSUE_KEY_ID_seq" OWNER TO jira;

--
-- Name: AO_E8B6CC_PR_ISSUE_KEY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_E8B6CC_PR_ISSUE_KEY_ID_seq" OWNED BY public."AO_E8B6CC_PR_ISSUE_KEY"."ID";


--
-- Name: AO_E8B6CC_PR_PARTICIPANT; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_E8B6CC_PR_PARTICIPANT" (
    "APPROVED" boolean,
    "DOMAIN_ID" integer DEFAULT 0 NOT NULL,
    "ID" integer NOT NULL,
    "PULL_REQUEST_ID" integer,
    "ROLE" character varying(255),
    "USERNAME" character varying(255)
);


ALTER TABLE public."AO_E8B6CC_PR_PARTICIPANT" OWNER TO jira;

--
-- Name: AO_E8B6CC_PR_PARTICIPANT_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_E8B6CC_PR_PARTICIPANT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_PR_PARTICIPANT_ID_seq" OWNER TO jira;

--
-- Name: AO_E8B6CC_PR_PARTICIPANT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_E8B6CC_PR_PARTICIPANT_ID_seq" OWNED BY public."AO_E8B6CC_PR_PARTICIPANT"."ID";


--
-- Name: AO_E8B6CC_PR_TO_COMMIT; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_E8B6CC_PR_TO_COMMIT" (
    "COMMIT_ID" integer NOT NULL,
    "DOMAIN_ID" integer DEFAULT 0 NOT NULL,
    "ID" integer NOT NULL,
    "REQUEST_ID" integer NOT NULL
);


ALTER TABLE public."AO_E8B6CC_PR_TO_COMMIT" OWNER TO jira;

--
-- Name: AO_E8B6CC_PR_TO_COMMIT_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_E8B6CC_PR_TO_COMMIT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_PR_TO_COMMIT_ID_seq" OWNER TO jira;

--
-- Name: AO_E8B6CC_PR_TO_COMMIT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_E8B6CC_PR_TO_COMMIT_ID_seq" OWNED BY public."AO_E8B6CC_PR_TO_COMMIT"."ID";


--
-- Name: AO_E8B6CC_PULL_REQUEST; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_E8B6CC_PULL_REQUEST" (
    "AUTHOR" character varying(255),
    "COMMENT_COUNT" integer DEFAULT 0,
    "CREATED_ON" timestamp without time zone,
    "DESTINATION_BRANCH" character varying(255),
    "DOMAIN_ID" integer DEFAULT 0 NOT NULL,
    "EXECUTED_BY" character varying(255),
    "ID" integer NOT NULL,
    "LAST_STATUS" character varying(255),
    "NAME" character varying(255),
    "REMOTE_ID" bigint,
    "SOURCE_BRANCH" character varying(255),
    "SOURCE_REPO" character varying(255),
    "TO_REPOSITORY_ID" integer DEFAULT 0,
    "UPDATED_ON" timestamp without time zone,
    "URL" character varying(255)
);


ALTER TABLE public."AO_E8B6CC_PULL_REQUEST" OWNER TO jira;

--
-- Name: AO_E8B6CC_PULL_REQUEST_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_E8B6CC_PULL_REQUEST_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_PULL_REQUEST_ID_seq" OWNER TO jira;

--
-- Name: AO_E8B6CC_PULL_REQUEST_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_E8B6CC_PULL_REQUEST_ID_seq" OWNED BY public."AO_E8B6CC_PULL_REQUEST"."ID";


--
-- Name: AO_E8B6CC_REPOSITORY_MAPPING; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_E8B6CC_REPOSITORY_MAPPING" (
    "ACTIVITY_LAST_SYNC" timestamp without time zone,
    "DELETED" boolean,
    "FORK" boolean,
    "FORK_OF_NAME" character varying(255),
    "FORK_OF_OWNER" character varying(255),
    "FORK_OF_SLUG" character varying(255),
    "ID" integer NOT NULL,
    "LAST_CHANGESET_NODE" character varying(255),
    "LAST_COMMIT_DATE" timestamp without time zone,
    "LINKED" boolean,
    "LOGO" text,
    "NAME" character varying(255),
    "ORGANIZATION_ID" integer DEFAULT 0,
    "REMOTE_ID" character varying(255),
    "REPOSITORY_URI" character varying(450),
    "REPOSITORY_URL" text,
    "SLUG" character varying(255),
    "SMARTCOMMITS_ENABLED" boolean,
    "UPDATE_LINK_AUTHORISED" boolean,
    "WEBHOOK_STATUS" character varying(255)
);


ALTER TABLE public."AO_E8B6CC_REPOSITORY_MAPPING" OWNER TO jira;

--
-- Name: AO_E8B6CC_REPOSITORY_MAPPING_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_E8B6CC_REPOSITORY_MAPPING_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_REPOSITORY_MAPPING_ID_seq" OWNER TO jira;

--
-- Name: AO_E8B6CC_REPOSITORY_MAPPING_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_E8B6CC_REPOSITORY_MAPPING_ID_seq" OWNED BY public."AO_E8B6CC_REPOSITORY_MAPPING"."ID";


--
-- Name: AO_E8B6CC_REPO_TO_CHANGESET; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_E8B6CC_REPO_TO_CHANGESET" (
    "CHANGESET_ID" integer,
    "ID" integer NOT NULL,
    "REPOSITORY_ID" integer
);


ALTER TABLE public."AO_E8B6CC_REPO_TO_CHANGESET" OWNER TO jira;

--
-- Name: AO_E8B6CC_REPO_TO_CHANGESET_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_E8B6CC_REPO_TO_CHANGESET_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_REPO_TO_CHANGESET_ID_seq" OWNER TO jira;

--
-- Name: AO_E8B6CC_REPO_TO_CHANGESET_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_E8B6CC_REPO_TO_CHANGESET_ID_seq" OWNED BY public."AO_E8B6CC_REPO_TO_CHANGESET"."ID";


--
-- Name: AO_E8B6CC_REPO_TO_PROJECT; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_E8B6CC_REPO_TO_PROJECT" (
    "ID" integer NOT NULL,
    "PROJECT_KEY" character varying(255),
    "REPOSITORY_ID" integer
);


ALTER TABLE public."AO_E8B6CC_REPO_TO_PROJECT" OWNER TO jira;

--
-- Name: AO_E8B6CC_REPO_TO_PROJECT_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_E8B6CC_REPO_TO_PROJECT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_REPO_TO_PROJECT_ID_seq" OWNER TO jira;

--
-- Name: AO_E8B6CC_REPO_TO_PROJECT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_E8B6CC_REPO_TO_PROJECT_ID_seq" OWNED BY public."AO_E8B6CC_REPO_TO_PROJECT"."ID";


--
-- Name: AO_E8B6CC_SYNC_AUDIT_LOG; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_E8B6CC_SYNC_AUDIT_LOG" (
    "END_DATE" timestamp without time zone,
    "EXC_TRACE" text,
    "FIRST_REQUEST_DATE" timestamp without time zone,
    "FLIGHT_TIME_MS" integer DEFAULT 0,
    "ID" integer NOT NULL,
    "NUM_REQUESTS" integer DEFAULT 0,
    "REPO_ID" integer DEFAULT 0,
    "START_DATE" timestamp without time zone,
    "SYNC_STATUS" character varying(255),
    "SYNC_TYPE" character varying(255),
    "TOTAL_ERRORS" integer DEFAULT 0
);


ALTER TABLE public."AO_E8B6CC_SYNC_AUDIT_LOG" OWNER TO jira;

--
-- Name: AO_E8B6CC_SYNC_AUDIT_LOG_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_E8B6CC_SYNC_AUDIT_LOG_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_SYNC_AUDIT_LOG_ID_seq" OWNER TO jira;

--
-- Name: AO_E8B6CC_SYNC_AUDIT_LOG_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_E8B6CC_SYNC_AUDIT_LOG_ID_seq" OWNED BY public."AO_E8B6CC_SYNC_AUDIT_LOG"."ID";


--
-- Name: AO_E8B6CC_SYNC_EVENT; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_E8B6CC_SYNC_EVENT" (
    "EVENT_CLASS" text NOT NULL,
    "EVENT_DATE" timestamp without time zone NOT NULL,
    "EVENT_JSON" text NOT NULL,
    "ID" integer NOT NULL,
    "REPO_ID" integer DEFAULT 0 NOT NULL,
    "SCHEDULED_SYNC" boolean
);


ALTER TABLE public."AO_E8B6CC_SYNC_EVENT" OWNER TO jira;

--
-- Name: AO_E8B6CC_SYNC_EVENT_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_E8B6CC_SYNC_EVENT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_SYNC_EVENT_ID_seq" OWNER TO jira;

--
-- Name: AO_E8B6CC_SYNC_EVENT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_E8B6CC_SYNC_EVENT_ID_seq" OWNED BY public."AO_E8B6CC_SYNC_EVENT"."ID";


--
-- Name: AO_ED669C_IDP_CONFIG; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_ED669C_IDP_CONFIG" (
    "ADDITIONAL_JIT_SCOPES" text,
    "ADDITIONAL_SCOPES" text,
    "AUTHORIZATION_ENDPOINT" character varying(255),
    "BUTTON_TEXT" character varying(255) NOT NULL,
    "CLIENT_ID" character varying(255),
    "CLIENT_SECRET" character varying(255),
    "ENABLED" boolean NOT NULL,
    "ENABLE_REMEMBER_ME" boolean,
    "ID" bigint NOT NULL,
    "INCLUDE_CUSTOMER_LOGINS" boolean,
    "ISSUER" character varying(255) NOT NULL,
    "LAST_UPDATED" timestamp without time zone,
    "MAPPING_DISPLAYNAME" character varying(255),
    "MAPPING_EMAIL" character varying(255),
    "MAPPING_GROUPS" character varying(255),
    "NAME" character varying(255) NOT NULL,
    "SAML_IDP_TYPE" character varying(255),
    "SIGNING_CERT" text,
    "SSO_TYPE" character varying(255),
    "SSO_URL" character varying(255),
    "TOKEN_ENDPOINT" character varying(255),
    "USERNAME_ATTRIBUTE" character varying(255),
    "USERNAME_CLAIM" character varying(255),
    "USER_INFO_ENDPOINT" character varying(255),
    "USER_PROVISIONING_ENABLED" boolean,
    "USE_DISCOVERY" boolean
);


ALTER TABLE public."AO_ED669C_IDP_CONFIG" OWNER TO jira;

--
-- Name: AO_ED669C_IDP_CONFIG_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_ED669C_IDP_CONFIG_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_ED669C_IDP_CONFIG_ID_seq" OWNER TO jira;

--
-- Name: AO_ED669C_IDP_CONFIG_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_ED669C_IDP_CONFIG_ID_seq" OWNED BY public."AO_ED669C_IDP_CONFIG"."ID";


--
-- Name: AO_ED669C_SEEN_ASSERTIONS; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_ED669C_SEEN_ASSERTIONS" (
    "ASSERTION_ID" character varying(255) NOT NULL,
    "EXPIRY_TIMESTAMP" bigint DEFAULT 0 NOT NULL,
    "ID" integer NOT NULL
);


ALTER TABLE public."AO_ED669C_SEEN_ASSERTIONS" OWNER TO jira;

--
-- Name: AO_ED669C_SEEN_ASSERTIONS_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_ED669C_SEEN_ASSERTIONS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_ED669C_SEEN_ASSERTIONS_ID_seq" OWNER TO jira;

--
-- Name: AO_ED669C_SEEN_ASSERTIONS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_ED669C_SEEN_ASSERTIONS_ID_seq" OWNED BY public."AO_ED669C_SEEN_ASSERTIONS"."ID";


--
-- Name: AO_FE1BC5_ACCESS_TOKEN; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_FE1BC5_ACCESS_TOKEN" (
    "AUTHORIZATION_CODE" character varying(255) NOT NULL,
    "AUTHORIZATION_DATE" bigint NOT NULL,
    "CLIENT_ID" character varying(255) NOT NULL,
    "CREATED_AT" bigint NOT NULL,
    "ID" character varying(255) NOT NULL,
    "LAST_ACCESSED" bigint,
    "SCOPE" character varying(255) NOT NULL,
    "USER_KEY" character varying(255) NOT NULL
);


ALTER TABLE public."AO_FE1BC5_ACCESS_TOKEN" OWNER TO jira;

--
-- Name: AO_FE1BC5_AUTHORIZATION; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_FE1BC5_AUTHORIZATION" (
    "AUTHORIZATION_CODE" character varying(255) NOT NULL,
    "CLIENT_ID" character varying(255) NOT NULL,
    "CODE_CHALLENGE" character varying(255),
    "CODE_CHALLENGE_METHOD" character varying(255),
    "CREATED_AT" bigint NOT NULL,
    "REDIRECT_URI" character varying(255) NOT NULL,
    "SCOPE" character varying(255) NOT NULL,
    "USER_KEY" character varying(255) NOT NULL
);


ALTER TABLE public."AO_FE1BC5_AUTHORIZATION" OWNER TO jira;

--
-- Name: AO_FE1BC5_CLIENT; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_FE1BC5_CLIENT" (
    "CLIENT_ID" character varying(255) NOT NULL,
    "CLIENT_SECRET" character varying(255) NOT NULL,
    "ID" character varying(255) NOT NULL,
    "NAME" character varying(255) NOT NULL,
    "SCOPE" character varying(255),
    "USER_KEY" character varying(255) NOT NULL
);


ALTER TABLE public."AO_FE1BC5_CLIENT" OWNER TO jira;

--
-- Name: AO_FE1BC5_REDIRECT_URI; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_FE1BC5_REDIRECT_URI" (
    "CLIENT_ID" character varying(255) NOT NULL,
    "ID" integer NOT NULL,
    "URI" character varying(450) NOT NULL
);


ALTER TABLE public."AO_FE1BC5_REDIRECT_URI" OWNER TO jira;

--
-- Name: AO_FE1BC5_REDIRECT_URI_ID_seq; Type: SEQUENCE; Schema: public; Owner: jira
--

CREATE SEQUENCE public."AO_FE1BC5_REDIRECT_URI_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_FE1BC5_REDIRECT_URI_ID_seq" OWNER TO jira;

--
-- Name: AO_FE1BC5_REDIRECT_URI_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jira
--

ALTER SEQUENCE public."AO_FE1BC5_REDIRECT_URI_ID_seq" OWNED BY public."AO_FE1BC5_REDIRECT_URI"."ID";


--
-- Name: AO_FE1BC5_REFRESH_TOKEN; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public."AO_FE1BC5_REFRESH_TOKEN" (
    "ACCESS_TOKEN_ID" character varying(255),
    "AUTHORIZATION_CODE" character varying(255) NOT NULL,
    "AUTHORIZATION_DATE" bigint NOT NULL,
    "CLIENT_ID" character varying(255) NOT NULL,
    "CREATED_AT" bigint NOT NULL,
    "ID" character varying(255) NOT NULL,
    "REFRESH_COUNT" integer,
    "SCOPE" character varying(255) NOT NULL,
    "USER_KEY" character varying(255) NOT NULL
);


ALTER TABLE public."AO_FE1BC5_REFRESH_TOKEN" OWNER TO jira;

--
-- Name: app_user; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.app_user (
    id numeric(18,0) NOT NULL,
    user_key character varying(255),
    lower_user_name character varying(255)
);


ALTER TABLE public.app_user OWNER TO jira;

--
-- Name: audit_changed_value; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.audit_changed_value (
    id numeric(18,0) NOT NULL,
    log_id numeric(18,0),
    name character varying(255),
    delta_from text,
    delta_to text
);


ALTER TABLE public.audit_changed_value OWNER TO jira;

--
-- Name: audit_item; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.audit_item (
    id numeric(18,0) NOT NULL,
    log_id numeric(18,0),
    object_type character varying(60),
    object_id character varying(255),
    object_name character varying(255),
    object_parent_id character varying(255),
    object_parent_name character varying(255)
);


ALTER TABLE public.audit_item OWNER TO jira;

--
-- Name: audit_log; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.audit_log (
    id numeric(18,0) NOT NULL,
    remote_address character varying(60),
    created timestamp with time zone,
    author_key character varying(255),
    summary character varying(255),
    category character varying(255),
    object_type character varying(60),
    object_id character varying(255),
    object_name character varying(255),
    object_parent_id character varying(255),
    object_parent_name character varying(255),
    author_type numeric(9,0),
    event_source_name character varying(255),
    description character varying(255),
    long_description text,
    search_field text
);


ALTER TABLE public.audit_log OWNER TO jira;

--
-- Name: avatar; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.avatar (
    id numeric(18,0) NOT NULL,
    filename character varying(255),
    contenttype character varying(255),
    avatartype character varying(60),
    owner character varying(255),
    systemavatar numeric(9,0)
);


ALTER TABLE public.avatar OWNER TO jira;

--
-- Name: board; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.board (
    id numeric(18,0) NOT NULL,
    jql text
);


ALTER TABLE public.board OWNER TO jira;

--
-- Name: boardproject; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.boardproject (
    board_id numeric(18,0) NOT NULL,
    project_id numeric(18,0) NOT NULL
);


ALTER TABLE public.boardproject OWNER TO jira;

--
-- Name: changegroup; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.changegroup (
    id numeric(18,0) NOT NULL,
    issueid numeric(18,0),
    author character varying(255),
    created timestamp with time zone
);


ALTER TABLE public.changegroup OWNER TO jira;

--
-- Name: changeitem; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.changeitem (
    id numeric(18,0) NOT NULL,
    groupid numeric(18,0),
    fieldtype character varying(255),
    field character varying(255),
    oldvalue text,
    oldstring text,
    newvalue text,
    newstring text
);


ALTER TABLE public.changeitem OWNER TO jira;

--
-- Name: clusteredjob; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.clusteredjob (
    id numeric(18,0) NOT NULL,
    job_id character varying(255),
    job_runner_key character varying(255),
    sched_type character(1),
    interval_millis numeric(18,0),
    first_run numeric(18,0),
    cron_expression character varying(255),
    time_zone character varying(60),
    next_run numeric(18,0),
    version numeric(18,0),
    parameters bytea
);


ALTER TABLE public.clusteredjob OWNER TO jira;

--
-- Name: clusterlockstatus; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.clusterlockstatus (
    id numeric(18,0) NOT NULL,
    lock_name character varying(255),
    locked_by_node character varying(60),
    update_time numeric(18,0)
);


ALTER TABLE public.clusterlockstatus OWNER TO jira;

--
-- Name: clustermessage; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.clustermessage (
    id numeric(18,0) NOT NULL,
    source_node character varying(60),
    destination_node character varying(60),
    claimed_by_node character varying(60),
    message character varying(255),
    message_time timestamp with time zone
);


ALTER TABLE public.clustermessage OWNER TO jira;

--
-- Name: clusternode; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.clusternode (
    node_id character varying(60) NOT NULL,
    node_state character varying(60),
    "timestamp" numeric(18,0),
    ip character varying(60),
    cache_listener_port numeric(18,0),
    node_build_number numeric(18,0),
    node_version character varying(60)
);


ALTER TABLE public.clusternode OWNER TO jira;

--
-- Name: clusternodeheartbeat; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.clusternodeheartbeat (
    node_id character varying(60) NOT NULL,
    heartbeat_time numeric(18,0),
    database_time numeric(18,0)
);


ALTER TABLE public.clusternodeheartbeat OWNER TO jira;

--
-- Name: clusterupgradestate; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.clusterupgradestate (
    id numeric(18,0) NOT NULL,
    database_time numeric(18,0),
    cluster_build_number numeric(18,0),
    cluster_version character varying(60),
    state character varying(60),
    order_number numeric(18,0)
);


ALTER TABLE public.clusterupgradestate OWNER TO jira;

--
-- Name: columnlayout; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.columnlayout (
    id numeric(18,0) NOT NULL,
    username character varying(255),
    searchrequest numeric(18,0)
);


ALTER TABLE public.columnlayout OWNER TO jira;

--
-- Name: columnlayoutitem; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.columnlayoutitem (
    id numeric(18,0) NOT NULL,
    columnlayout numeric(18,0),
    fieldidentifier character varying(255),
    horizontalposition numeric(18,0)
);


ALTER TABLE public.columnlayoutitem OWNER TO jira;

--
-- Name: comment_pin; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.comment_pin (
    id numeric(18,0) NOT NULL,
    issue_id numeric(18,0),
    comment_id numeric(18,0),
    pinned_by character varying(255),
    pinned_date timestamp with time zone
);


ALTER TABLE public.comment_pin OWNER TO jira;

--
-- Name: comment_reaction; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.comment_reaction (
    id numeric(18,0) NOT NULL,
    comment_id numeric(18,0),
    author character varying(255),
    emoticon character varying(255),
    created_date timestamp with time zone
);


ALTER TABLE public.comment_reaction OWNER TO jira;

--
-- Name: comment_version; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.comment_version (
    comment_id numeric(18,0) NOT NULL,
    parent_issue_id numeric(18,0),
    update_time timestamp with time zone,
    index_version numeric(18,0),
    deleted character(1)
);


ALTER TABLE public.comment_version OWNER TO jira;

--
-- Name: component; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.component (
    id numeric(18,0) NOT NULL,
    project numeric(18,0),
    cname character varying(255),
    description text,
    url character varying(255),
    lead character varying(255),
    assigneetype numeric(18,0),
    archived character varying(10),
    deleted character varying(10)
);


ALTER TABLE public.component OWNER TO jira;

--
-- Name: configurationcontext; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.configurationcontext (
    id numeric(18,0) NOT NULL,
    projectcategory numeric(18,0),
    project numeric(18,0),
    customfield character varying(255),
    fieldconfigscheme numeric(18,0)
);


ALTER TABLE public.configurationcontext OWNER TO jira;

--
-- Name: customfield; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.customfield (
    id numeric(18,0) NOT NULL,
    cfkey character varying(255),
    customfieldtypekey character varying(255),
    customfieldsearcherkey character varying(255),
    cfname character varying(255),
    description text,
    defaultvalue character varying(255),
    fieldtype numeric(18,0),
    project numeric(18,0),
    issuetype character varying(255),
    issueswithvalue numeric(18,0),
    lastvalueupdate timestamp with time zone
);


ALTER TABLE public.customfield OWNER TO jira;

--
-- Name: customfieldoption; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.customfieldoption (
    id numeric(18,0) NOT NULL,
    customfield numeric(18,0),
    customfieldconfig numeric(18,0),
    parentoptionid numeric(18,0),
    sequence numeric(18,0),
    customvalue character varying(255),
    optiontype character varying(60),
    disabled character varying(60)
);


ALTER TABLE public.customfieldoption OWNER TO jira;

--
-- Name: customfieldvalue; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.customfieldvalue (
    id numeric(18,0) NOT NULL,
    issue numeric(18,0),
    customfield numeric(18,0),
    updated numeric(18,0),
    parentkey character varying(255),
    stringvalue character varying(255),
    numbervalue double precision,
    textvalue text,
    datevalue timestamp with time zone,
    valuetype character varying(255)
);


ALTER TABLE public.customfieldvalue OWNER TO jira;

--
-- Name: cwd_application; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.cwd_application (
    id numeric(18,0) NOT NULL,
    application_name character varying(255),
    lower_application_name character varying(255),
    created_date timestamp with time zone,
    updated_date timestamp with time zone,
    active numeric(9,0),
    description character varying(255),
    application_type character varying(255),
    credential character varying(255)
);


ALTER TABLE public.cwd_application OWNER TO jira;

--
-- Name: cwd_application_address; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.cwd_application_address (
    application_id numeric(18,0) NOT NULL,
    remote_address character varying(255) NOT NULL,
    encoded_address_binary character varying(255),
    remote_address_mask numeric(9,0)
);


ALTER TABLE public.cwd_application_address OWNER TO jira;

--
-- Name: cwd_directory; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.cwd_directory (
    id numeric(18,0) NOT NULL,
    directory_name character varying(255),
    lower_directory_name character varying(255),
    created_date timestamp with time zone,
    updated_date timestamp with time zone,
    active numeric(9,0),
    description character varying(255),
    impl_class character varying(255),
    lower_impl_class character varying(255),
    directory_type character varying(60),
    directory_position numeric(18,0)
);


ALTER TABLE public.cwd_directory OWNER TO jira;

--
-- Name: cwd_directory_attribute; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.cwd_directory_attribute (
    directory_id numeric(18,0) NOT NULL,
    attribute_name character varying(255) NOT NULL,
    attribute_value text
);


ALTER TABLE public.cwd_directory_attribute OWNER TO jira;

--
-- Name: cwd_directory_operation; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.cwd_directory_operation (
    directory_id numeric(18,0) NOT NULL,
    operation_type character varying(60) NOT NULL
);


ALTER TABLE public.cwd_directory_operation OWNER TO jira;

--
-- Name: cwd_group; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.cwd_group (
    id numeric(18,0) NOT NULL,
    group_name character varying(255),
    lower_group_name character varying(255),
    active numeric(9,0),
    local numeric(9,0),
    created_date timestamp with time zone,
    updated_date timestamp with time zone,
    description character varying(255),
    lower_description character varying(255),
    group_type character varying(60),
    directory_id numeric(18,0),
    external_id character varying(255)
);


ALTER TABLE public.cwd_group OWNER TO jira;

--
-- Name: cwd_group_attributes; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.cwd_group_attributes (
    id numeric(18,0) NOT NULL,
    group_id numeric(18,0),
    directory_id numeric(18,0),
    attribute_name character varying(255),
    attribute_value character varying(255),
    lower_attribute_value character varying(255)
);


ALTER TABLE public.cwd_group_attributes OWNER TO jira;

--
-- Name: cwd_membership; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.cwd_membership (
    id numeric(18,0) NOT NULL,
    parent_id numeric(18,0),
    child_id numeric(18,0),
    membership_type character varying(60),
    group_type character varying(60),
    parent_name character varying(255),
    lower_parent_name character varying(255),
    child_name character varying(255),
    lower_child_name character varying(255),
    directory_id numeric(18,0)
);


ALTER TABLE public.cwd_membership OWNER TO jira;

--
-- Name: cwd_synchronisation_status; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.cwd_synchronisation_status (
    id numeric(18,0) NOT NULL,
    directory_id numeric(18,0),
    node_id character varying(60),
    sync_start numeric(18,0),
    sync_end numeric(18,0),
    sync_status character varying(60),
    status_parameters text
);


ALTER TABLE public.cwd_synchronisation_status OWNER TO jira;

--
-- Name: cwd_synchronisation_token; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.cwd_synchronisation_token (
    directory_id numeric(18,0) NOT NULL,
    sync_status_token text
);


ALTER TABLE public.cwd_synchronisation_token OWNER TO jira;

--
-- Name: cwd_user; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.cwd_user (
    id numeric(18,0) NOT NULL,
    directory_id numeric(18,0),
    user_name character varying(255),
    lower_user_name character varying(255),
    active numeric(9,0),
    created_date timestamp with time zone,
    updated_date timestamp with time zone,
    first_name character varying(255),
    lower_first_name character varying(255),
    last_name character varying(255),
    lower_last_name character varying(255),
    display_name character varying(255),
    lower_display_name character varying(255),
    email_address character varying(255),
    lower_email_address character varying(255),
    credential character varying(255),
    deleted_externally numeric(9,0),
    external_id character varying(255)
);


ALTER TABLE public.cwd_user OWNER TO jira;

--
-- Name: cwd_user_attributes; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.cwd_user_attributes (
    id numeric(18,0) NOT NULL,
    user_id numeric(18,0),
    directory_id numeric(18,0),
    attribute_name character varying(255),
    attribute_value character varying(255),
    lower_attribute_value character varying(255)
);


ALTER TABLE public.cwd_user_attributes OWNER TO jira;

--
-- Name: deadletter; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.deadletter (
    id numeric(18,0) NOT NULL,
    message_id character varying(255),
    last_seen numeric(18,0),
    mail_server_id numeric(18,0),
    folder_name character varying(255)
);


ALTER TABLE public.deadletter OWNER TO jira;

--
-- Name: draftworkflowscheme; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.draftworkflowscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text,
    workflow_scheme_id numeric(18,0),
    last_modified_date timestamp with time zone,
    last_modified_user character varying(255)
);


ALTER TABLE public.draftworkflowscheme OWNER TO jira;

--
-- Name: draftworkflowschemeentity; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.draftworkflowschemeentity (
    id numeric(18,0) NOT NULL,
    scheme numeric(18,0),
    workflow character varying(255),
    issuetype character varying(255)
);


ALTER TABLE public.draftworkflowschemeentity OWNER TO jira;

--
-- Name: entity_property; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.entity_property (
    id numeric(18,0) NOT NULL,
    entity_name character varying(255),
    entity_id numeric(18,0),
    property_key character varying(255),
    created timestamp with time zone,
    updated timestamp with time zone,
    json_value text
);


ALTER TABLE public.entity_property OWNER TO jira;

--
-- Name: entity_property_index_document; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.entity_property_index_document (
    id numeric(18,0) NOT NULL,
    plugin_key character varying(255),
    module_key character varying(255),
    entity_key character varying(255),
    updated timestamp with time zone,
    document text
);


ALTER TABLE public.entity_property_index_document OWNER TO jira;

--
-- Name: entity_translation; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.entity_translation (
    id numeric(18,0) NOT NULL,
    entity_name character varying(255),
    entity_id numeric(18,0),
    locale character varying(60),
    trans_name character varying(255),
    trans_desc character varying(255)
);


ALTER TABLE public.entity_translation OWNER TO jira;

--
-- Name: external_entities; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.external_entities (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    entitytype character varying(255)
);


ALTER TABLE public.external_entities OWNER TO jira;

--
-- Name: externalgadget; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.externalgadget (
    id numeric(18,0) NOT NULL,
    gadget_xml text
);


ALTER TABLE public.externalgadget OWNER TO jira;

--
-- Name: favouriteassociations; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.favouriteassociations (
    id numeric(18,0) NOT NULL,
    username character varying(255),
    entitytype character varying(60),
    entityid numeric(18,0),
    sequence numeric(18,0)
);


ALTER TABLE public.favouriteassociations OWNER TO jira;

--
-- Name: feature; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.feature (
    id numeric(18,0) NOT NULL,
    feature_name character varying(255),
    feature_type character varying(10),
    user_key character varying(255)
);


ALTER TABLE public.feature OWNER TO jira;

--
-- Name: fieldconfigscheme; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.fieldconfigscheme (
    id numeric(18,0) NOT NULL,
    configname character varying(255),
    description text,
    fieldid character varying(60),
    customfield numeric(18,0)
);


ALTER TABLE public.fieldconfigscheme OWNER TO jira;

--
-- Name: fieldconfigschemeissuetype; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.fieldconfigschemeissuetype (
    id numeric(18,0) NOT NULL,
    issuetype character varying(255),
    fieldconfigscheme numeric(18,0),
    fieldconfiguration numeric(18,0)
);


ALTER TABLE public.fieldconfigschemeissuetype OWNER TO jira;

--
-- Name: fieldconfiguration; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.fieldconfiguration (
    id numeric(18,0) NOT NULL,
    configname character varying(255),
    description text,
    fieldid character varying(60),
    customfield numeric(18,0)
);


ALTER TABLE public.fieldconfiguration OWNER TO jira;

--
-- Name: fieldlayout; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.fieldlayout (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description character varying(255),
    layout_type character varying(255),
    layoutscheme numeric(18,0)
);


ALTER TABLE public.fieldlayout OWNER TO jira;

--
-- Name: fieldlayoutitem; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.fieldlayoutitem (
    id numeric(18,0) NOT NULL,
    fieldlayout numeric(18,0),
    fieldidentifier character varying(255),
    description text,
    verticalposition numeric(18,0),
    ishidden character varying(60),
    isrequired character varying(60),
    renderertype character varying(255)
);


ALTER TABLE public.fieldlayoutitem OWNER TO jira;

--
-- Name: fieldlayoutscheme; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.fieldlayoutscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text
);


ALTER TABLE public.fieldlayoutscheme OWNER TO jira;

--
-- Name: fieldlayoutschemeassociation; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.fieldlayoutschemeassociation (
    id numeric(18,0) NOT NULL,
    issuetype character varying(255),
    project numeric(18,0),
    fieldlayoutscheme numeric(18,0)
);


ALTER TABLE public.fieldlayoutschemeassociation OWNER TO jira;

--
-- Name: fieldlayoutschemeentity; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.fieldlayoutschemeentity (
    id numeric(18,0) NOT NULL,
    scheme numeric(18,0),
    issuetype character varying(255),
    fieldlayout numeric(18,0)
);


ALTER TABLE public.fieldlayoutschemeentity OWNER TO jira;

--
-- Name: fieldscreen; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.fieldscreen (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description character varying(255)
);


ALTER TABLE public.fieldscreen OWNER TO jira;

--
-- Name: fieldscreenlayoutitem; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.fieldscreenlayoutitem (
    id numeric(18,0) NOT NULL,
    fieldidentifier character varying(255),
    sequence numeric(18,0),
    fieldscreentab numeric(18,0),
    showwhenemptyindicator character(1)
);


ALTER TABLE public.fieldscreenlayoutitem OWNER TO jira;

--
-- Name: fieldscreenscheme; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.fieldscreenscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description character varying(255)
);


ALTER TABLE public.fieldscreenscheme OWNER TO jira;

--
-- Name: fieldscreenschemeitem; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.fieldscreenschemeitem (
    id numeric(18,0) NOT NULL,
    operation numeric(18,0),
    fieldscreen numeric(18,0),
    fieldscreenscheme numeric(18,0)
);


ALTER TABLE public.fieldscreenschemeitem OWNER TO jira;

--
-- Name: fieldscreentab; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.fieldscreentab (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description character varying(255),
    sequence numeric(18,0),
    fieldscreen numeric(18,0)
);


ALTER TABLE public.fieldscreentab OWNER TO jira;

--
-- Name: fileattachment; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.fileattachment (
    id numeric(18,0) NOT NULL,
    issueid numeric(18,0),
    mimetype character varying(255),
    filename character varying(255),
    created timestamp with time zone,
    filesize numeric(18,0),
    author character varying(255),
    zip numeric(9,0),
    thumbnailable numeric(9,0)
);


ALTER TABLE public.fileattachment OWNER TO jira;

--
-- Name: filtersubscription; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.filtersubscription (
    id numeric(18,0) NOT NULL,
    filter_i_d numeric(18,0),
    username character varying(60),
    groupname character varying(60),
    last_run timestamp with time zone,
    email_on_empty character varying(10)
);


ALTER TABLE public.filtersubscription OWNER TO jira;

--
-- Name: gadgetuserpreference; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.gadgetuserpreference (
    id numeric(18,0) NOT NULL,
    portletconfiguration numeric(18,0),
    userprefkey character varying(255),
    userprefvalue text
);


ALTER TABLE public.gadgetuserpreference OWNER TO jira;

--
-- Name: genericconfiguration; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.genericconfiguration (
    id numeric(18,0) NOT NULL,
    datatype character varying(60),
    datakey character varying(60),
    xmlvalue text
);


ALTER TABLE public.genericconfiguration OWNER TO jira;

--
-- Name: globalpermissionentry; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.globalpermissionentry (
    id numeric(18,0) NOT NULL,
    permission character varying(255),
    group_id character varying(255)
);


ALTER TABLE public.globalpermissionentry OWNER TO jira;

--
-- Name: groupbase; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.groupbase (
    id numeric(18,0) NOT NULL,
    groupname character varying(255)
);


ALTER TABLE public.groupbase OWNER TO jira;

--
-- Name: issue_field_option; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.issue_field_option (
    id numeric(18,0) NOT NULL,
    option_id numeric(18,0),
    field_key character varying(255),
    option_value character varying(255),
    properties text
);


ALTER TABLE public.issue_field_option OWNER TO jira;

--
-- Name: issue_field_option_scope; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.issue_field_option_scope (
    id numeric(18,0) NOT NULL,
    option_id numeric(18,0),
    entity_id character varying(255),
    scope_type character varying(255)
);


ALTER TABLE public.issue_field_option_scope OWNER TO jira;

--
-- Name: issue_version; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.issue_version (
    issue_id numeric(18,0) NOT NULL,
    parent_issue_id numeric(18,0),
    update_time timestamp with time zone,
    index_version numeric(18,0),
    deleted character(1)
);


ALTER TABLE public.issue_version OWNER TO jira;

--
-- Name: issuelink; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.issuelink (
    id numeric(18,0) NOT NULL,
    linktype numeric(18,0),
    source numeric(18,0),
    destination numeric(18,0),
    sequence numeric(18,0)
);


ALTER TABLE public.issuelink OWNER TO jira;

--
-- Name: issuelinktype; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.issuelinktype (
    id numeric(18,0) NOT NULL,
    linkname character varying(255),
    inward character varying(255),
    outward character varying(255),
    pstyle character varying(60)
);


ALTER TABLE public.issuelinktype OWNER TO jira;

--
-- Name: issuesecurityscheme; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.issuesecurityscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text,
    defaultlevel numeric(18,0)
);


ALTER TABLE public.issuesecurityscheme OWNER TO jira;

--
-- Name: issuestatus; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.issuestatus (
    id character varying(60) NOT NULL,
    sequence numeric(18,0),
    pname character varying(60),
    description text,
    iconurl character varying(255),
    statuscategory numeric(18,0)
);


ALTER TABLE public.issuestatus OWNER TO jira;

--
-- Name: issuetype; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.issuetype (
    id character varying(60) NOT NULL,
    sequence numeric(18,0),
    pname character varying(60),
    pstyle character varying(60),
    description text,
    iconurl character varying(255),
    avatar numeric(18,0)
);


ALTER TABLE public.issuetype OWNER TO jira;

--
-- Name: issuetypescreenscheme; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.issuetypescreenscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description character varying(255)
);


ALTER TABLE public.issuetypescreenscheme OWNER TO jira;

--
-- Name: issuetypescreenschemeentity; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.issuetypescreenschemeentity (
    id numeric(18,0) NOT NULL,
    issuetype character varying(255),
    scheme numeric(18,0),
    fieldscreenscheme numeric(18,0)
);


ALTER TABLE public.issuetypescreenschemeentity OWNER TO jira;

--
-- Name: jiraaction; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.jiraaction (
    id numeric(18,0) NOT NULL,
    issueid numeric(18,0),
    author character varying(255),
    actiontype character varying(255),
    actionlevel character varying(255),
    rolelevel numeric(18,0),
    actionbody text,
    created timestamp with time zone,
    updateauthor character varying(255),
    updated timestamp with time zone,
    actionnum numeric(18,0)
);


ALTER TABLE public.jiraaction OWNER TO jira;

--
-- Name: jiradraftworkflows; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.jiradraftworkflows (
    id numeric(18,0) NOT NULL,
    parentname character varying(255),
    descriptor text
);


ALTER TABLE public.jiradraftworkflows OWNER TO jira;

--
-- Name: jiraeventtype; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.jiraeventtype (
    id numeric(18,0) NOT NULL,
    template_id numeric(18,0),
    name character varying(255),
    description text,
    event_type character varying(60)
);


ALTER TABLE public.jiraeventtype OWNER TO jira;

--
-- Name: jiraissue; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.jiraissue (
    id numeric(18,0) NOT NULL,
    pkey character varying(255),
    issuenum numeric(18,0),
    project numeric(18,0),
    reporter character varying(255),
    assignee character varying(255),
    creator character varying(255),
    issuetype character varying(255),
    summary character varying(255),
    description text,
    environment text,
    priority character varying(255),
    resolution character varying(255),
    issuestatus character varying(255),
    created timestamp with time zone,
    updated timestamp with time zone,
    duedate timestamp with time zone,
    resolutiondate timestamp with time zone,
    votes numeric(18,0),
    watches numeric(18,0),
    timeoriginalestimate numeric(18,0),
    timeestimate numeric(18,0),
    timespent numeric(18,0),
    workflow_id numeric(18,0),
    security numeric(18,0),
    fixfor numeric(18,0),
    component numeric(18,0),
    archived character(1),
    archivedby character varying(255),
    archiveddate timestamp with time zone
);


ALTER TABLE public.jiraissue OWNER TO jira;

--
-- Name: jiraperms; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.jiraperms (
    id numeric(18,0) NOT NULL,
    permtype numeric(18,0),
    projectid numeric(18,0),
    groupname character varying(255)
);


ALTER TABLE public.jiraperms OWNER TO jira;

--
-- Name: jiraworkflows; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.jiraworkflows (
    id numeric(18,0) NOT NULL,
    workflowname character varying(255),
    creatorname character varying(255),
    descriptor text,
    islocked character varying(60)
);


ALTER TABLE public.jiraworkflows OWNER TO jira;

--
-- Name: jiraworkflowstatuses; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.jiraworkflowstatuses (
    id numeric(18,0) NOT NULL,
    status character varying(255),
    parentname character varying(255)
);


ALTER TABLE public.jiraworkflowstatuses OWNER TO jira;

--
-- Name: jquartz_blob_triggers; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.jquartz_blob_triggers (
    sched_name character varying(120),
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    blob_data bytea
);


ALTER TABLE public.jquartz_blob_triggers OWNER TO jira;

--
-- Name: jquartz_calendars; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.jquartz_calendars (
    sched_name character varying(120),
    calendar_name character varying(200) NOT NULL,
    calendar bytea
);


ALTER TABLE public.jquartz_calendars OWNER TO jira;

--
-- Name: jquartz_cron_triggers; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.jquartz_cron_triggers (
    sched_name character varying(120),
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    cron_expression character varying(120),
    time_zone_id character varying(80)
);


ALTER TABLE public.jquartz_cron_triggers OWNER TO jira;

--
-- Name: jquartz_fired_triggers; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.jquartz_fired_triggers (
    sched_name character varying(120),
    entry_id character varying(95) NOT NULL,
    trigger_name character varying(200),
    trigger_group character varying(200),
    is_volatile boolean,
    instance_name character varying(200),
    fired_time numeric(18,0),
    sched_time numeric(18,0),
    priority numeric(9,0),
    state character varying(16),
    job_name character varying(200),
    job_group character varying(200),
    is_stateful boolean,
    is_nonconcurrent boolean,
    is_update_data boolean,
    requests_recovery boolean
);


ALTER TABLE public.jquartz_fired_triggers OWNER TO jira;

--
-- Name: jquartz_job_details; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.jquartz_job_details (
    sched_name character varying(120),
    job_name character varying(200) NOT NULL,
    job_group character varying(200) NOT NULL,
    description character varying(250),
    job_class_name character varying(250),
    is_durable boolean,
    is_volatile boolean,
    is_stateful boolean,
    is_nonconcurrent boolean,
    is_update_data boolean,
    requests_recovery boolean,
    job_data bytea
);


ALTER TABLE public.jquartz_job_details OWNER TO jira;

--
-- Name: jquartz_job_listeners; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.jquartz_job_listeners (
    job_name character varying(200) NOT NULL,
    job_group character varying(200) NOT NULL,
    job_listener character varying(200) NOT NULL
);


ALTER TABLE public.jquartz_job_listeners OWNER TO jira;

--
-- Name: jquartz_locks; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.jquartz_locks (
    sched_name character varying(120),
    lock_name character varying(40) NOT NULL
);


ALTER TABLE public.jquartz_locks OWNER TO jira;

--
-- Name: jquartz_paused_trigger_grps; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.jquartz_paused_trigger_grps (
    sched_name character varying(120),
    trigger_group character varying(200) NOT NULL
);


ALTER TABLE public.jquartz_paused_trigger_grps OWNER TO jira;

--
-- Name: jquartz_scheduler_state; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.jquartz_scheduler_state (
    sched_name character varying(120),
    instance_name character varying(200) NOT NULL,
    last_checkin_time numeric(18,0),
    checkin_interval numeric(18,0)
);


ALTER TABLE public.jquartz_scheduler_state OWNER TO jira;

--
-- Name: jquartz_simple_triggers; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.jquartz_simple_triggers (
    sched_name character varying(120),
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    repeat_count numeric(18,0),
    repeat_interval numeric(18,0),
    times_triggered numeric(18,0)
);


ALTER TABLE public.jquartz_simple_triggers OWNER TO jira;

--
-- Name: jquartz_simprop_triggers; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.jquartz_simprop_triggers (
    sched_name character varying(120),
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    str_prop_1 character varying(512),
    str_prop_2 character varying(512),
    str_prop_3 character varying(512),
    int_prop_1 numeric(9,0),
    int_prop_2 numeric(9,0),
    long_prop_1 numeric(18,0),
    long_prop_2 numeric(18,0),
    dec_prop_1 numeric(13,4),
    dec_prop_2 numeric(13,4),
    bool_prop_1 boolean,
    bool_prop_2 boolean
);


ALTER TABLE public.jquartz_simprop_triggers OWNER TO jira;

--
-- Name: jquartz_trigger_listeners; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.jquartz_trigger_listeners (
    trigger_name character varying(200),
    trigger_group character varying(200) NOT NULL,
    trigger_listener character varying(200) NOT NULL
);


ALTER TABLE public.jquartz_trigger_listeners OWNER TO jira;

--
-- Name: jquartz_triggers; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.jquartz_triggers (
    sched_name character varying(120),
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    job_name character varying(200),
    job_group character varying(200),
    is_volatile boolean,
    description character varying(250),
    next_fire_time numeric(18,0),
    prev_fire_time numeric(18,0),
    priority numeric(9,0),
    trigger_state character varying(16),
    trigger_type character varying(8),
    start_time numeric(18,0),
    end_time numeric(18,0),
    calendar_name character varying(200),
    misfire_instr numeric(4,0),
    job_data bytea
);


ALTER TABLE public.jquartz_triggers OWNER TO jira;

--
-- Name: label; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.label (
    id numeric(18,0) NOT NULL,
    fieldid numeric(18,0),
    issue numeric(18,0),
    label character varying(255)
);


ALTER TABLE public.label OWNER TO jira;

--
-- Name: licenserolesdefault; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.licenserolesdefault (
    id numeric(18,0) NOT NULL,
    license_role_name character varying(255)
);


ALTER TABLE public.licenserolesdefault OWNER TO jira;

--
-- Name: licenserolesgroup; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.licenserolesgroup (
    id numeric(18,0) NOT NULL,
    license_role_name character varying(255),
    group_id character varying(255),
    primary_group character(1)
);


ALTER TABLE public.licenserolesgroup OWNER TO jira;

--
-- Name: listenerconfig; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.listenerconfig (
    id numeric(18,0) NOT NULL,
    clazz character varying(255),
    listenername character varying(255)
);


ALTER TABLE public.listenerconfig OWNER TO jira;

--
-- Name: mailserver; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.mailserver (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text,
    mailfrom character varying(255),
    prefix character varying(60),
    smtp_port character varying(60),
    protocol character varying(60),
    server_type character varying(60),
    servername character varying(255),
    jndilocation character varying(255),
    mailusername character varying(255),
    mailpassword character varying(255),
    cipher_type character varying(255),
    istlsrequired character varying(60),
    timeout numeric(18,0),
    socks_port character varying(60),
    socks_host character varying(60),
    auth_conf text
);


ALTER TABLE public.mailserver OWNER TO jira;

--
-- Name: managedconfigurationitem; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.managedconfigurationitem (
    id numeric(18,0) NOT NULL,
    item_id character varying(255),
    item_type character varying(255),
    managed character varying(10),
    access_level character varying(255),
    source character varying(255),
    description_key character varying(255)
);


ALTER TABLE public.managedconfigurationitem OWNER TO jira;

--
-- Name: membershipbase; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.membershipbase (
    id numeric(18,0) NOT NULL,
    user_name character varying(255),
    group_name character varying(255)
);


ALTER TABLE public.membershipbase OWNER TO jira;

--
-- Name: moved_issue_key; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.moved_issue_key (
    id numeric(18,0) NOT NULL,
    old_issue_key character varying(255),
    issue_id numeric(18,0)
);


ALTER TABLE public.moved_issue_key OWNER TO jira;

--
-- Name: nodeassociation; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.nodeassociation (
    source_node_id numeric(18,0) NOT NULL,
    source_node_entity character varying(60) NOT NULL,
    sink_node_id numeric(18,0) NOT NULL,
    sink_node_entity character varying(60) NOT NULL,
    association_type character varying(60) NOT NULL,
    sequence numeric(9,0)
);


ALTER TABLE public.nodeassociation OWNER TO jira;

--
-- Name: nodeindexcounter; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.nodeindexcounter (
    id numeric(18,0) NOT NULL,
    node_id character varying(60),
    sending_node_id character varying(60),
    index_operation_id numeric(18,0)
);


ALTER TABLE public.nodeindexcounter OWNER TO jira;

--
-- Name: nomenclature_entries; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.nomenclature_entries (
    id numeric(18,0) NOT NULL,
    original_name character varying(255),
    new_name character varying(255),
    new_name_plural character varying(255),
    "timestamp" numeric(18,0)
);


ALTER TABLE public.nomenclature_entries OWNER TO jira;

--
-- Name: notification; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.notification (
    id numeric(18,0) NOT NULL,
    scheme numeric(18,0),
    event character varying(60),
    event_type_id numeric(18,0),
    template_id numeric(18,0),
    notif_type character varying(60),
    notif_parameter character varying(60)
);


ALTER TABLE public.notification OWNER TO jira;

--
-- Name: notificationinstance; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.notificationinstance (
    id numeric(18,0) NOT NULL,
    notificationtype character varying(60),
    source numeric(18,0),
    emailaddress character varying(255),
    messageid character varying(255)
);


ALTER TABLE public.notificationinstance OWNER TO jira;

--
-- Name: notificationscheme; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.notificationscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text
);


ALTER TABLE public.notificationscheme OWNER TO jira;

--
-- Name: oauthconsumer; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.oauthconsumer (
    id numeric(18,0) NOT NULL,
    created timestamp with time zone,
    consumername character varying(255),
    consumer_key character varying(255),
    consumerservice character varying(255),
    public_key text,
    private_key text,
    description text,
    callback text,
    signature_method character varying(60),
    shared_secret text
);


ALTER TABLE public.oauthconsumer OWNER TO jira;

--
-- Name: oauthconsumertoken; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.oauthconsumertoken (
    id numeric(18,0) NOT NULL,
    created timestamp with time zone,
    token_key character varying(255),
    token character varying(255),
    token_secret character varying(255),
    token_type character varying(60),
    consumer_key character varying(255)
);


ALTER TABLE public.oauthconsumertoken OWNER TO jira;

--
-- Name: oauthspconsumer; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.oauthspconsumer (
    id numeric(18,0) NOT NULL,
    created timestamp with time zone,
    consumer_key character varying(255),
    consumername character varying(255),
    public_key text,
    description text,
    callback text,
    two_l_o_allowed character varying(60),
    executing_two_l_o_user character varying(255),
    two_l_o_impersonation_allowed character varying(60),
    three_l_o_allowed character varying(60)
);


ALTER TABLE public.oauthspconsumer OWNER TO jira;

--
-- Name: oauthsptoken; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.oauthsptoken (
    id numeric(18,0) NOT NULL,
    created timestamp with time zone,
    token character varying(255),
    token_secret character varying(255),
    token_type character varying(60),
    consumer_key character varying(255),
    username character varying(255),
    ttl numeric(18,0),
    spauth character varying(60),
    callback text,
    spverifier character varying(255),
    spversion character varying(60),
    session_handle character varying(255),
    session_creation_time timestamp with time zone,
    session_last_renewal_time timestamp with time zone,
    session_time_to_live timestamp with time zone
);


ALTER TABLE public.oauthsptoken OWNER TO jira;

--
-- Name: optionconfiguration; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.optionconfiguration (
    id numeric(18,0) NOT NULL,
    fieldid character varying(60),
    optionid character varying(60),
    fieldconfig numeric(18,0),
    sequence numeric(18,0)
);


ALTER TABLE public.optionconfiguration OWNER TO jira;

--
-- Name: os_currentstep; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.os_currentstep (
    id numeric(18,0) NOT NULL,
    entry_id numeric(18,0),
    step_id numeric(9,0),
    action_id numeric(9,0),
    owner character varying(255),
    start_date timestamp with time zone,
    due_date timestamp with time zone,
    finish_date timestamp with time zone,
    status character varying(60),
    caller character varying(255)
);


ALTER TABLE public.os_currentstep OWNER TO jira;

--
-- Name: os_currentstep_prev; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.os_currentstep_prev (
    id numeric(18,0) NOT NULL,
    previous_id numeric(18,0) NOT NULL
);


ALTER TABLE public.os_currentstep_prev OWNER TO jira;

--
-- Name: os_historystep; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.os_historystep (
    id numeric(18,0) NOT NULL,
    entry_id numeric(18,0),
    step_id numeric(9,0),
    action_id numeric(9,0),
    owner character varying(255),
    start_date timestamp with time zone,
    due_date timestamp with time zone,
    finish_date timestamp with time zone,
    status character varying(60),
    caller character varying(255)
);


ALTER TABLE public.os_historystep OWNER TO jira;

--
-- Name: os_historystep_prev; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.os_historystep_prev (
    id numeric(18,0) NOT NULL,
    previous_id numeric(18,0) NOT NULL
);


ALTER TABLE public.os_historystep_prev OWNER TO jira;

--
-- Name: os_wfentry; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.os_wfentry (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    initialized numeric(9,0),
    state numeric(9,0)
);


ALTER TABLE public.os_wfentry OWNER TO jira;

--
-- Name: permissionscheme; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.permissionscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text
);


ALTER TABLE public.permissionscheme OWNER TO jira;

--
-- Name: permissionschemeattribute; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.permissionschemeattribute (
    id numeric(18,0) NOT NULL,
    scheme numeric(18,0),
    attribute_key character varying(255),
    attribute_value text
);


ALTER TABLE public.permissionschemeattribute OWNER TO jira;

--
-- Name: pluginstate; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.pluginstate (
    pluginkey character varying(255) NOT NULL,
    pluginenabled character varying(60)
);


ALTER TABLE public.pluginstate OWNER TO jira;

--
-- Name: pluginversion; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.pluginversion (
    id numeric(18,0) NOT NULL,
    pluginname character varying(255),
    pluginkey character varying(255),
    pluginversion character varying(255),
    created timestamp with time zone
);


ALTER TABLE public.pluginversion OWNER TO jira;

--
-- Name: portalpage; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.portalpage (
    id numeric(18,0) NOT NULL,
    username character varying(255),
    pagename character varying(255),
    description character varying(255),
    sequence numeric(18,0),
    fav_count numeric(18,0),
    layout character varying(255),
    ppversion numeric(18,0)
);


ALTER TABLE public.portalpage OWNER TO jira;

--
-- Name: portletconfiguration; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.portletconfiguration (
    id numeric(18,0) NOT NULL,
    portalpage numeric(18,0),
    portlet_id character varying(255),
    column_number numeric(9,0),
    positionseq numeric(9,0),
    gadget_xml text,
    color character varying(255),
    dashboard_module_complete_key text
);


ALTER TABLE public.portletconfiguration OWNER TO jira;

--
-- Name: priority; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.priority (
    id character varying(60) NOT NULL,
    sequence numeric(18,0),
    pname character varying(60),
    description text,
    iconurl character varying(255),
    status_color character varying(60)
);


ALTER TABLE public.priority OWNER TO jira;

--
-- Name: productlicense; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.productlicense (
    id numeric(18,0) NOT NULL,
    license text
);


ALTER TABLE public.productlicense OWNER TO jira;

--
-- Name: project; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.project (
    id numeric(18,0) NOT NULL,
    pname character varying(255),
    url character varying(255),
    lead character varying(255),
    description text,
    pkey character varying(255),
    pcounter numeric(18,0),
    assigneetype numeric(18,0),
    avatar numeric(18,0),
    originalkey character varying(255),
    projecttype character varying(255)
);


ALTER TABLE public.project OWNER TO jira;

--
-- Name: project_key; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.project_key (
    id numeric(18,0) NOT NULL,
    project_id numeric(18,0),
    project_key character varying(255)
);


ALTER TABLE public.project_key OWNER TO jira;

--
-- Name: projectcategory; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.projectcategory (
    id numeric(18,0) NOT NULL,
    cname character varying(255),
    description text
);


ALTER TABLE public.projectcategory OWNER TO jira;

--
-- Name: projectchangedtime; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.projectchangedtime (
    project_id numeric(18,0) NOT NULL,
    issue_changed_time timestamp with time zone
);


ALTER TABLE public.projectchangedtime OWNER TO jira;

--
-- Name: projectrole; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.projectrole (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text
);


ALTER TABLE public.projectrole OWNER TO jira;

--
-- Name: projectroleactor; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.projectroleactor (
    id numeric(18,0) NOT NULL,
    pid numeric(18,0),
    projectroleid numeric(18,0),
    roletype character varying(255),
    roletypeparameter character varying(255)
);


ALTER TABLE public.projectroleactor OWNER TO jira;

--
-- Name: projectversion; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.projectversion (
    id numeric(18,0) NOT NULL,
    project numeric(18,0),
    vname character varying(255),
    description text,
    sequence numeric(18,0),
    released character varying(10),
    archived character varying(10),
    url character varying(255),
    startdate timestamp with time zone,
    releasedate timestamp with time zone
);


ALTER TABLE public.projectversion OWNER TO jira;

--
-- Name: propertydata; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.propertydata (
    id numeric(18,0) NOT NULL,
    propertyvalue oid
);


ALTER TABLE public.propertydata OWNER TO jira;

--
-- Name: propertydate; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.propertydate (
    id numeric(18,0) NOT NULL,
    propertyvalue timestamp with time zone
);


ALTER TABLE public.propertydate OWNER TO jira;

--
-- Name: propertydecimal; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.propertydecimal (
    id numeric(18,0) NOT NULL,
    propertyvalue double precision
);


ALTER TABLE public.propertydecimal OWNER TO jira;

--
-- Name: propertyentry; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.propertyentry (
    id numeric(18,0) NOT NULL,
    entity_name character varying(255),
    entity_id numeric(18,0),
    property_key character varying(255),
    propertytype numeric(9,0)
);


ALTER TABLE public.propertyentry OWNER TO jira;

--
-- Name: propertynumber; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.propertynumber (
    id numeric(18,0) NOT NULL,
    propertyvalue numeric(18,0)
);


ALTER TABLE public.propertynumber OWNER TO jira;

--
-- Name: propertystring; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.propertystring (
    id numeric(18,0) NOT NULL,
    propertyvalue text
);


ALTER TABLE public.propertystring OWNER TO jira;

--
-- Name: propertytext; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.propertytext (
    id numeric(18,0) NOT NULL,
    propertyvalue text
);


ALTER TABLE public.propertytext OWNER TO jira;

--
-- Name: qrtz_calendars; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.qrtz_calendars (
    id numeric(18,0),
    calendar_name character varying(255) NOT NULL,
    calendar text
);


ALTER TABLE public.qrtz_calendars OWNER TO jira;

--
-- Name: qrtz_cron_triggers; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.qrtz_cron_triggers (
    id numeric(18,0) NOT NULL,
    trigger_id numeric(18,0),
    cronexperssion character varying(255)
);


ALTER TABLE public.qrtz_cron_triggers OWNER TO jira;

--
-- Name: qrtz_fired_triggers; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.qrtz_fired_triggers (
    id numeric(18,0),
    entry_id character varying(255) NOT NULL,
    trigger_id numeric(18,0),
    trigger_listener character varying(255),
    fired_time timestamp with time zone,
    trigger_state character varying(255)
);


ALTER TABLE public.qrtz_fired_triggers OWNER TO jira;

--
-- Name: qrtz_job_details; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.qrtz_job_details (
    id numeric(18,0) NOT NULL,
    job_name character varying(255),
    job_group character varying(255),
    class_name character varying(255),
    is_durable character varying(60),
    is_stateful character varying(60),
    requests_recovery character varying(60),
    job_data character varying(255)
);


ALTER TABLE public.qrtz_job_details OWNER TO jira;

--
-- Name: qrtz_job_listeners; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.qrtz_job_listeners (
    id numeric(18,0) NOT NULL,
    job numeric(18,0),
    job_listener character varying(255)
);


ALTER TABLE public.qrtz_job_listeners OWNER TO jira;

--
-- Name: qrtz_simple_triggers; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.qrtz_simple_triggers (
    id numeric(18,0) NOT NULL,
    trigger_id numeric(18,0),
    repeat_count numeric(9,0),
    repeat_interval numeric(18,0),
    times_triggered numeric(9,0)
);


ALTER TABLE public.qrtz_simple_triggers OWNER TO jira;

--
-- Name: qrtz_trigger_listeners; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.qrtz_trigger_listeners (
    id numeric(18,0) NOT NULL,
    trigger_id numeric(18,0),
    trigger_listener character varying(255)
);


ALTER TABLE public.qrtz_trigger_listeners OWNER TO jira;

--
-- Name: qrtz_triggers; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.qrtz_triggers (
    id numeric(18,0) NOT NULL,
    trigger_name character varying(255),
    trigger_group character varying(255),
    job numeric(18,0),
    next_fire timestamp with time zone,
    trigger_state character varying(255),
    trigger_type character varying(60),
    start_time timestamp with time zone,
    end_time timestamp with time zone,
    calendar_name character varying(255),
    misfire_instr numeric(9,0)
);


ALTER TABLE public.qrtz_triggers OWNER TO jira;

--
-- Name: reindex_component; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.reindex_component (
    id numeric(18,0) NOT NULL,
    request_id numeric(18,0),
    affected_index character varying(60),
    entity_type character varying(60)
);


ALTER TABLE public.reindex_component OWNER TO jira;

--
-- Name: reindex_request; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.reindex_request (
    id numeric(18,0) NOT NULL,
    type character varying(60),
    request_time timestamp with time zone,
    start_time timestamp with time zone,
    completion_time timestamp with time zone,
    status character varying(60),
    execution_node_id character varying(60),
    query text
);


ALTER TABLE public.reindex_request OWNER TO jira;

--
-- Name: remembermetoken; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.remembermetoken (
    id numeric(18,0) NOT NULL,
    created timestamp with time zone,
    token character varying(255),
    username character varying(255)
);


ALTER TABLE public.remembermetoken OWNER TO jira;

--
-- Name: remotelink; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.remotelink (
    id numeric(18,0) NOT NULL,
    issueid numeric(18,0),
    globalid character varying(255),
    title character varying(255),
    summary text,
    url text,
    iconurl text,
    icontitle text,
    relationship character varying(255),
    resolved character(1),
    statusname character varying(255),
    statusdescription text,
    statusiconurl text,
    statusicontitle text,
    statusiconlink text,
    statuscategorykey character varying(255),
    statuscategorycolorname character varying(255),
    applicationtype character varying(255),
    applicationname character varying(255)
);


ALTER TABLE public.remotelink OWNER TO jira;

--
-- Name: replicatedindexoperation; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.replicatedindexoperation (
    id numeric(18,0) NOT NULL,
    index_time timestamp with time zone,
    node_id character varying(60),
    affected_index character varying(60),
    entity_type character varying(60),
    affected_ids text,
    versions text,
    operation character varying(60),
    filename character varying(255)
);


ALTER TABLE public.replicatedindexoperation OWNER TO jira;

--
-- Name: resolution; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.resolution (
    id character varying(60) NOT NULL,
    sequence numeric(18,0),
    pname character varying(60),
    description text,
    iconurl character varying(255)
);


ALTER TABLE public.resolution OWNER TO jira;

--
-- Name: rundetails; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.rundetails (
    id numeric(18,0) NOT NULL,
    job_id character varying(255),
    start_time timestamp with time zone,
    run_duration numeric(18,0),
    run_outcome character(1),
    info_message character varying(255)
);


ALTER TABLE public.rundetails OWNER TO jira;

--
-- Name: schemeissuesecurities; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.schemeissuesecurities (
    id numeric(18,0) NOT NULL,
    scheme numeric(18,0),
    security numeric(18,0),
    sec_type character varying(255),
    sec_parameter character varying(255)
);


ALTER TABLE public.schemeissuesecurities OWNER TO jira;

--
-- Name: schemeissuesecuritylevels; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.schemeissuesecuritylevels (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text,
    scheme numeric(18,0)
);


ALTER TABLE public.schemeissuesecuritylevels OWNER TO jira;

--
-- Name: schemepermissions; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.schemepermissions (
    id numeric(18,0) NOT NULL,
    scheme numeric(18,0),
    permission numeric(18,0),
    perm_type character varying(255),
    perm_parameter character varying(255),
    permission_key character varying(255)
);


ALTER TABLE public.schemepermissions OWNER TO jira;

--
-- Name: searchrequest; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.searchrequest (
    id numeric(18,0) NOT NULL,
    filtername character varying(255),
    authorname character varying(255),
    description text,
    username character varying(255),
    groupname character varying(255),
    projectid numeric(18,0),
    reqcontent text,
    fav_count numeric(18,0),
    filtername_lower character varying(255)
);


ALTER TABLE public.searchrequest OWNER TO jira;

--
-- Name: securityproperty; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.securityproperty (
    property_key character varying(255) NOT NULL,
    propertyvalue text
);


ALTER TABLE public.securityproperty OWNER TO jira;

--
-- Name: sequence_value_item; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.sequence_value_item (
    seq_name character varying(60) NOT NULL,
    seq_id numeric(18,0)
);


ALTER TABLE public.sequence_value_item OWNER TO jira;

--
-- Name: serviceconfig; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.serviceconfig (
    id numeric(18,0) NOT NULL,
    delaytime numeric(18,0),
    clazz character varying(255),
    servicename character varying(255),
    cron_expression character varying(255)
);


ALTER TABLE public.serviceconfig OWNER TO jira;

--
-- Name: sharepermissions; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.sharepermissions (
    id numeric(18,0) NOT NULL,
    entityid numeric(18,0),
    entitytype character varying(60),
    sharetype character varying(10),
    param1 character varying(255),
    param2 character varying(60),
    rights numeric(9,0)
);


ALTER TABLE public.sharepermissions OWNER TO jira;

--
-- Name: tempattachmentsmonitor; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.tempattachmentsmonitor (
    temporary_attachment_id character varying(255) NOT NULL,
    form_token character varying(255),
    file_name character varying(255),
    content_type character varying(255),
    file_size numeric(18,0),
    created_time numeric(18,0)
);


ALTER TABLE public.tempattachmentsmonitor OWNER TO jira;

--
-- Name: trackback_ping; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.trackback_ping (
    id numeric(18,0) NOT NULL,
    issue numeric(18,0),
    url character varying(255),
    title character varying(255),
    blogname character varying(255),
    excerpt character varying(255),
    created timestamp with time zone
);


ALTER TABLE public.trackback_ping OWNER TO jira;

--
-- Name: trustedapp; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.trustedapp (
    id numeric(18,0) NOT NULL,
    application_id character varying(255),
    name character varying(255),
    public_key text,
    ip_match text,
    url_match text,
    timeout numeric(18,0),
    created timestamp with time zone,
    created_by character varying(255),
    updated timestamp with time zone,
    updated_by character varying(255)
);


ALTER TABLE public.trustedapp OWNER TO jira;

--
-- Name: upgradehistory; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.upgradehistory (
    id numeric(18,0),
    upgradeclass character varying(255) NOT NULL,
    targetbuild character varying(255),
    status character varying(255),
    downgradetaskrequired character(1)
);


ALTER TABLE public.upgradehistory OWNER TO jira;

--
-- Name: upgradetaskhistory; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.upgradetaskhistory (
    id numeric(18,0) NOT NULL,
    upgrade_task_factory_key character varying(255),
    build_number numeric(9,0),
    status character varying(60),
    upgrade_type character varying(10)
);


ALTER TABLE public.upgradetaskhistory OWNER TO jira;

--
-- Name: upgradetaskhistoryauditlog; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.upgradetaskhistoryauditlog (
    id numeric(18,0) NOT NULL,
    upgrade_task_factory_key character varying(255),
    build_number numeric(9,0),
    status character varying(60),
    upgrade_type character varying(10),
    timeperformed timestamp with time zone,
    action character varying(10)
);


ALTER TABLE public.upgradetaskhistoryauditlog OWNER TO jira;

--
-- Name: upgradeversionhistory; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.upgradeversionhistory (
    id numeric(18,0),
    timeperformed timestamp with time zone,
    targetbuild character varying(255) NOT NULL,
    targetversion character varying(255)
);


ALTER TABLE public.upgradeversionhistory OWNER TO jira;

--
-- Name: userassociation; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.userassociation (
    source_name character varying(60) NOT NULL,
    sink_node_id numeric(18,0) NOT NULL,
    sink_node_entity character varying(60) NOT NULL,
    association_type character varying(60) NOT NULL,
    sequence numeric(9,0),
    created timestamp with time zone
);


ALTER TABLE public.userassociation OWNER TO jira;

--
-- Name: userbase; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.userbase (
    id numeric(18,0) NOT NULL,
    username character varying(255),
    password_hash character varying(255)
);


ALTER TABLE public.userbase OWNER TO jira;

--
-- Name: userhistoryitem; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.userhistoryitem (
    id numeric(18,0) NOT NULL,
    entitytype character varying(10),
    entityid character varying(60),
    username character varying(255),
    lastviewed numeric(18,0),
    data text
);


ALTER TABLE public.userhistoryitem OWNER TO jira;

--
-- Name: userpickerfilter; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.userpickerfilter (
    id numeric(18,0) NOT NULL,
    customfield numeric(18,0),
    customfieldconfig numeric(18,0),
    enabled character varying(60)
);


ALTER TABLE public.userpickerfilter OWNER TO jira;

--
-- Name: userpickerfiltergroup; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.userpickerfiltergroup (
    id numeric(18,0) NOT NULL,
    userpickerfilter numeric(18,0),
    groupname character varying(255)
);


ALTER TABLE public.userpickerfiltergroup OWNER TO jira;

--
-- Name: userpickerfilterrole; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.userpickerfilterrole (
    id numeric(18,0) NOT NULL,
    userpickerfilter numeric(18,0),
    projectroleid numeric(18,0)
);


ALTER TABLE public.userpickerfilterrole OWNER TO jira;

--
-- Name: versioncontrol; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.versioncontrol (
    id numeric(18,0) NOT NULL,
    vcsname character varying(255),
    vcsdescription character varying(255),
    vcstype character varying(255)
);


ALTER TABLE public.versioncontrol OWNER TO jira;

--
-- Name: votehistory; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.votehistory (
    id numeric(18,0) NOT NULL,
    issueid numeric(18,0),
    votes numeric(18,0),
    "timestamp" timestamp with time zone
);


ALTER TABLE public.votehistory OWNER TO jira;

--
-- Name: workflowscheme; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.workflowscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text
);


ALTER TABLE public.workflowscheme OWNER TO jira;

--
-- Name: workflowschemeentity; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.workflowschemeentity (
    id numeric(18,0) NOT NULL,
    scheme numeric(18,0),
    workflow character varying(255),
    issuetype character varying(255)
);


ALTER TABLE public.workflowschemeentity OWNER TO jira;

--
-- Name: worklog; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.worklog (
    id numeric(18,0) NOT NULL,
    issueid numeric(18,0),
    author character varying(255),
    grouplevel character varying(255),
    rolelevel numeric(18,0),
    worklogbody text,
    created timestamp with time zone,
    updateauthor character varying(255),
    updated timestamp with time zone,
    startdate timestamp with time zone,
    timeworked numeric(18,0)
);


ALTER TABLE public.worklog OWNER TO jira;

--
-- Name: worklog_version; Type: TABLE; Schema: public; Owner: jira
--

CREATE TABLE public.worklog_version (
    worklog_id numeric(18,0) NOT NULL,
    parent_issue_id numeric(18,0),
    update_time timestamp with time zone,
    index_version numeric(18,0),
    deleted character(1)
);


ALTER TABLE public.worklog_version OWNER TO jira;

--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_0A5972_NOTIFICATION_SETTING" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_0A5972_NOTIFICATION_SETTING_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_21D670_WHITELIST_RULES" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_21D670_WHITELIST_RULES_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_21F425_MESSAGE_MAPPING_AO" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_21F425_MESSAGE_MAPPING_AO_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_21F425_USER_PROPERTY_AO" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_21F425_USER_PROPERTY_AO_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_38321B_CUSTOM_CONTENT_LINK" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_38321B_CUSTOM_CONTENT_LINK_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_3B1893_LOOP_DETECTION" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_3B1893_LOOP_DETECTION_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_4789DD_DISABLED_CHECKS" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_4789DD_DISABLED_CHECKS_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_4789DD_HEALTH_CHECK_STATUS" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_4789DD_HEALTH_CHECK_STATUS_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_4789DD_HEALTH_CHECK_WATCHER" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_4789DD_HEALTH_CHECK_WATCHER_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_4789DD_PROPERTIES" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_4789DD_PROPERTIES_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_4789DD_READ_NOTIFICATIONS" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_4789DD_READ_NOTIFICATIONS_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_4789DD_SHORTENED_KEY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_4789DD_SHORTENED_KEY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_4789DD_TASK_MONITOR" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_4789DD_TASK_MONITOR_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_4AEACD_WEBHOOK_DAO" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_4AEACD_WEBHOOK_DAO_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_550953_SHORTCUT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_550953_SHORTCUT_ID_seq"'::regclass);


--
-- Name: ACTIVITY_ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_563AEE_ACTIVITY_ENTITY" ALTER COLUMN "ACTIVITY_ID" SET DEFAULT nextval('public."AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_563AEE_ACTOR_ENTITY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_563AEE_ACTOR_ENTITY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_563AEE_MEDIA_LINK_ENTITY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_563AEE_MEDIA_LINK_ENTITY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_563AEE_OBJECT_ENTITY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_563AEE_OBJECT_ENTITY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_563AEE_TARGET_ENTITY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_563AEE_TARGET_ENTITY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_575BF5_DEV_SUMMARY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_575BF5_DEV_SUMMARY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_575BF5_PROCESSED_COMMITS" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_575BF5_PROCESSED_COMMITS_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_575BF5_PROVIDER_ISSUE" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_575BF5_PROVIDER_ISSUE_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_575BF5_PROVIDER_SEQ_NO" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_575BF5_PROVIDER_SEQ_NO_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_AUDIT_ITEM" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_589059_AUDIT_ITEM_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_AUDIT_ITEM_ASC_ITEM" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_589059_AUDIT_ITEM_ASC_ITEM_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_AUDIT_ITEM_CGE_ITEM" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_589059_AUDIT_ITEM_CGE_ITEM_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_AUDIT_ITEM_COMP_CGE" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_589059_AUDIT_ITEM_COMP_CGE_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_AUDIT_ITEM_PROJECT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_589059_AUDIT_ITEM_PROJECT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_AUTOMATION_QUEUE" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_589059_AUTOMATION_QUEUE_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_COUNTERS" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_589059_COUNTERS_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_LEGACY_RULE_LINK" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_589059_LEGACY_RULE_LINK_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_CFG_COMPONENT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_589059_RULE_CFG_COMPONENT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_CFG_PROJ_ASSOC" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_589059_RULE_CFG_PROJ_ASSOC_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_CONFIG" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_589059_RULE_CONFIG_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_LABEL" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_589059_RULE_LABEL_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_SCHEDULE" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_589059_RULE_SCHEDULE_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_SECRET" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_589059_RULE_SECRET_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_STAT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_589059_RULE_STAT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_STATE_LATEST" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_589059_RULE_STATE_LATEST_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_STAT_ROLLUP_DAY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_589059_RULE_STAT_ROLLUP_DAY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_STAT_ROLLUP_HR" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_589059_RULE_STAT_ROLLUP_HR_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_STAT_ROLLUP_MIN" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_589059_RULE_STAT_ROLLUP_MIN_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_TAG" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_589059_RULE_TAG_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_TO_LABEL" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_589059_RULE_TO_LABEL_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_TO_SECRET" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_589059_RULE_TO_SECRET_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_SECRET_PROJ_ASSOC" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_589059_SECRET_PROJ_ASSOC_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_AUDITENTRY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_AUDITENTRY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_BOARDADMINS" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_BOARDADMINS_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_CARDCOLOR" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_CARDCOLOR_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_CARDLAYOUT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_CARDLAYOUT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_COLUMN" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_COLUMN_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_COLUMNSTATUS" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_COLUMNSTATUS_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_DETAILVIEWFIELD" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_DETAILVIEWFIELD_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_ESTIMATESTATISTIC" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_ESTIMATESTATISTIC_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_ISSUERANKING" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_ISSUERANKING_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_ISSUERANKINGLOG" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_ISSUERANKINGLOG_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_LEXORANK" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_LEXORANK_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_LEXORANKBALANCER" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_LEXORANKBALANCER_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_NONWORKINGDAY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_NONWORKINGDAY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_QUICKFILTER" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_QUICKFILTER_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_RANKABLEOBJECT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_RANKABLEOBJECT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_RAPIDVIEW" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_RAPIDVIEW_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_SPRINT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_SPRINT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_STATSFIELD" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_STATSFIELD_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_SUBQUERY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_SUBQUERY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_SWIMLANE" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_SWIMLANE_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_TRACKINGSTATISTIC" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_TRACKINGSTATISTIC_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_VERSION" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_VERSION_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_WORKINGDAYS" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_WORKINGDAYS_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_ACCESS_LOG_PRC_CTRL" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_6FF49D_ACCESS_LOG_PRC_CTRL_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_ACCESS_LOG_PRC_ITEM" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_6FF49D_ACCESS_LOG_PRC_ITEM_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_ACTUAL_MIG_COUNTS" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_6FF49D_ACTUAL_MIG_COUNTS_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_ANALYTICS_EVENT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_6FF49D_ANALYTICS_EVENT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_BROWSER_METRICS" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_6FF49D_BROWSER_METRICS_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_CONFIG_ITEMS" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_6FF49D_CONFIG_ITEMS_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_DAILY_USAGE_METRICS" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_6FF49D_DAILY_USAGE_METRICS_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_EXPECTED_MIG_COUNTS" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_6FF49D_EXPECTED_MIG_COUNTS_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_EXPORT_ERROR" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_6FF49D_EXPORT_ERROR_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_GR_RESPONSE_GROUP" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_6FF49D_GR_RESPONSE_GROUP_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_GUARDRAILS_RESPONSE" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_6FF49D_GUARDRAILS_RESPONSE_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_INST_ANALYSIS_CTRL" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_6FF49D_INST_ANALYSIS_CTRL_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_LINKED_MEDIA" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_6FF49D_LINKED_MEDIA_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_MIGRATED_AVATAR" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_6FF49D_MIGRATED_AVATAR_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_MIGRATED_FILE" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_6FF49D_MIGRATED_FILE_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_MIG_REPORT_STATUS" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_6FF49D_MIG_REPORT_STATUS_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_PREMIG_OUTCOME" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_6FF49D_PREMIG_OUTCOME_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_SKIP_PREFLT_RESULT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_6FF49D_SKIP_PREFLT_RESULT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_UNSUPPORTED_ENTITY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_6FF49D_UNSUPPORTED_ENTITY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_USERS_GROUPS_EXTRACT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_6FF49D_USERS_GROUPS_EXTRACT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_USER_EMAIL_EVENT_LOG" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_6FF49D_USER_EMAIL_EVENT_LOG_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_VIRTUAL_ATTACHMENT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_6FF49D_VIRTUAL_ATTACHMENT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_733371_EVENT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_733371_EVENT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_733371_EVENT_PARAMETER" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_733371_EVENT_PARAMETER_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_733371_EVENT_RECIPIENT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_733371_EVENT_RECIPIENT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_81F455_PERSONAL_TOKEN" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_81F455_PERSONAL_TOKEN_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_82B313_ABILITY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_82B313_ABILITY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_82B313_ABSENCE" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_82B313_ABSENCE_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_82B313_AVAILABILITY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_82B313_AVAILABILITY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_82B313_INIT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_82B313_INIT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_82B313_PERSON" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_82B313_PERSON_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_82B313_RESOURCE" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_82B313_RESOURCE_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_82B313_SKILL" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_82B313_SKILL_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_82B313_TEAM" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_82B313_TEAM_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_8752F1_DATA_PIPELINE_CONFIG" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_8752F1_DATA_PIPELINE_CONFIG_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_8752F1_DATA_PIPELINE_EOO" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_8752F1_DATA_PIPELINE_EOO_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_8752F1_DATA_PIPELINE_JOB" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_8752F1_DATA_PIPELINE_JOB_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_97EDAB_USERINVITATION" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_97EDAB_USERINVITATION_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A0B856_WEB_HOOK_LISTENER_AO" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq"'::regclass);


--
-- Name: ID_OTHER; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOABILITY" ALTER COLUMN "ID_OTHER" SET DEFAULT nextval('public."AO_A415DF_AOABILITY_ID_OTHER_seq"'::regclass);


--
-- Name: ID_OTHER; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOABSENCE" ALTER COLUMN "ID_OTHER" SET DEFAULT nextval('public."AO_A415DF_AOABSENCE_ID_OTHER_seq"'::regclass);


--
-- Name: ID_OTHER; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOAVAILABILITY" ALTER COLUMN "ID_OTHER" SET DEFAULT nextval('public."AO_A415DF_AOAVAILABILITY_ID_OTHER_seq"'::regclass);


--
-- Name: ID_OTHER; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOCONFIGURATION" ALTER COLUMN "ID_OTHER" SET DEFAULT nextval('public."AO_A415DF_AOCONFIGURATION_ID_OTHER_seq"'::regclass);


--
-- Name: ID_OTHER; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOCUSTOM_WORDING" ALTER COLUMN "ID_OTHER" SET DEFAULT nextval('public."AO_A415DF_AOCUSTOM_WORDING_ID_OTHER_seq"'::regclass);


--
-- Name: ID_OTHER; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AODEPENDENCY" ALTER COLUMN "ID_OTHER" SET DEFAULT nextval('public."AO_A415DF_AODEPENDENCY_ID_OTHER_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AODOOR_STOP" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_A415DF_AODOOR_STOP_ID_seq"'::regclass);


--
-- Name: ID_OTHER; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOESTIMATE" ALTER COLUMN "ID_OTHER" SET DEFAULT nextval('public."AO_A415DF_AOESTIMATE_ID_OTHER_seq"'::regclass);


--
-- Name: ID_OTHER; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOEXTENSION_LINK" ALTER COLUMN "ID_OTHER" SET DEFAULT nextval('public."AO_A415DF_AOEXTENSION_LINK_ID_OTHER_seq"'::regclass);


--
-- Name: ID_OTHER; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AONON_WORKING_DAYS" ALTER COLUMN "ID_OTHER" SET DEFAULT nextval('public."AO_A415DF_AONON_WORKING_DAYS_ID_OTHER_seq"'::regclass);


--
-- Name: ID_OTHER; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOPERMISSION" ALTER COLUMN "ID_OTHER" SET DEFAULT nextval('public."AO_A415DF_AOPERMISSION_ID_OTHER_seq"'::regclass);


--
-- Name: ID_OTHER; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOPERSON" ALTER COLUMN "ID_OTHER" SET DEFAULT nextval('public."AO_A415DF_AOPERSON_ID_OTHER_seq"'::regclass);


--
-- Name: ID_OTHER; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOPLAN" ALTER COLUMN "ID_OTHER" SET DEFAULT nextval('public."AO_A415DF_AOPLAN_ID_OTHER_seq"'::regclass);


--
-- Name: ID_OTHER; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOPLAN_CONFIGURATION" ALTER COLUMN "ID_OTHER" SET DEFAULT nextval('public."AO_A415DF_AOPLAN_CONFIGURATION_ID_OTHER_seq"'::regclass);


--
-- Name: ID_OTHER; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOPRESENCE" ALTER COLUMN "ID_OTHER" SET DEFAULT nextval('public."AO_A415DF_AOPRESENCE_ID_OTHER_seq"'::regclass);


--
-- Name: ID_OTHER; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AORELEASE" ALTER COLUMN "ID_OTHER" SET DEFAULT nextval('public."AO_A415DF_AORELEASE_ID_OTHER_seq"'::regclass);


--
-- Name: ID_OTHER; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOREPLANNING" ALTER COLUMN "ID_OTHER" SET DEFAULT nextval('public."AO_A415DF_AOREPLANNING_ID_OTHER_seq"'::regclass);


--
-- Name: ID_OTHER; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AORESOURCE" ALTER COLUMN "ID_OTHER" SET DEFAULT nextval('public."AO_A415DF_AORESOURCE_ID_OTHER_seq"'::regclass);


--
-- Name: ID_OTHER; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOSKILL" ALTER COLUMN "ID_OTHER" SET DEFAULT nextval('public."AO_A415DF_AOSKILL_ID_OTHER_seq"'::regclass);


--
-- Name: ID_OTHER; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOSOLUTION_STORE" ALTER COLUMN "ID_OTHER" SET DEFAULT nextval('public."AO_A415DF_AOSOLUTION_STORE_ID_OTHER_seq"'::regclass);


--
-- Name: ID_OTHER; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOSPRINT" ALTER COLUMN "ID_OTHER" SET DEFAULT nextval('public."AO_A415DF_AOSPRINT_ID_OTHER_seq"'::regclass);


--
-- Name: ID_OTHER; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOSTAGE" ALTER COLUMN "ID_OTHER" SET DEFAULT nextval('public."AO_A415DF_AOSTAGE_ID_OTHER_seq"'::regclass);


--
-- Name: ID_OTHER; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOSTREAM" ALTER COLUMN "ID_OTHER" SET DEFAULT nextval('public."AO_A415DF_AOSTREAM_ID_OTHER_seq"'::regclass);


--
-- Name: ID_OTHER; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOSTREAM_TO_TEAM" ALTER COLUMN "ID_OTHER" SET DEFAULT nextval('public."AO_A415DF_AOSTREAM_TO_TEAM_ID_OTHER_seq"'::regclass);


--
-- Name: ID_OTHER; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOTEAM" ALTER COLUMN "ID_OTHER" SET DEFAULT nextval('public."AO_A415DF_AOTEAM_ID_OTHER_seq"'::regclass);


--
-- Name: ID_OTHER; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOTHEME" ALTER COLUMN "ID_OTHER" SET DEFAULT nextval('public."AO_A415DF_AOTHEME_ID_OTHER_seq"'::regclass);


--
-- Name: ID_OTHER; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOWORK_ITEM" ALTER COLUMN "ID_OTHER" SET DEFAULT nextval('public."AO_A415DF_AOWORK_ITEM_ID_OTHER_seq"'::regclass);


--
-- Name: ID_OTHER; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOWORK_ITEM_TO_RES" ALTER COLUMN "ID_OTHER" SET DEFAULT nextval('public."AO_A415DF_AOWORK_ITEM_TO_RES_ID_OTHER_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_AC3877_RL_USER_COUNTER" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_AC3877_RL_USER_COUNTER_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_B9A0F0_APPLIED_TEMPLATE" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_B9A0F0_APPLIED_TEMPLATE_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_C16815_ALERT_AO" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_C16815_ALERT_AO_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_C77861_AUDIT_ACTION_CACHE" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_C77861_AUDIT_ACTION_CACHE_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_C77861_AUDIT_CATEGORY_CACHE" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_C77861_AUDIT_CATEGORY_CACHE_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_C77861_AUDIT_DENY_LISTED" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_C77861_AUDIT_DENY_LISTED_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_C77861_AUDIT_ENTITY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_C77861_AUDIT_ENTITY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_CFF990_AOTRANSITION_FAILURE" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_CFF990_AOTRANSITION_FAILURE_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_ASSIGNMENT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_ASSIGNMENT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_ASSIGNMENT_EXT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_ASSIGNMENT_EXT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_CONFIGURATION" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_CONFIGURATION_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_DEP_ISSUE_LINK_TYPES" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_DEP_ISSUE_LINK_TYPES_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_DISTRIBUTION" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_DISTRIBUTION_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_EXCLUDED_ISSUE_TYPES" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_EXCLUDED_ISSUE_TYPES_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_EXCLUDED_STATUSCATS" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_EXCLUDED_STATUSCATS_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_EXCLUDED_STATUSES" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_EXCLUDED_STATUSES_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_EXCLUDED_VERSIONS" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_EXCLUDED_VERSIONS_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_GENERICREPORT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_GENERICREPORT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_HIERARCHY_CONFIG" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_HIERARCHY_CONFIG_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_INIT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_INIT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_ISSUE_SOURCE" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_ISSUE_SOURCE_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_NONWORKINGDAYS" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_NONWORKINGDAYS_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PERMISSIONS" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_PERMISSIONS_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PLAN" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_PLAN_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PLANNED_CAPACITY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_PLANNED_CAPACITY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PLANSKILL" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_PLANSKILL_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PLANTEAM" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_PLANTEAM_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PLANTHEME" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_PLANTHEME_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PLANVERSION" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_PLANVERSION_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PLAN_CUSTOM_FIELD" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_PLAN_CUSTOM_FIELD_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PLAN_USER_PROPERTY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_PLAN_USER_PROPERTY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PLAN_US_PR_MAPPING" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_PLAN_US_PR_MAPPING_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PROGRAM" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_PROGRAM_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PROGRAM_CUSTOM_FIELD" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_PROGRAM_CUSTOM_FIELD_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_RANK_ITEM" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_RANK_ITEM_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SAVED_VIEW" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_SAVED_VIEW_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SAVED_VIEW2" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_SAVED_VIEW2_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_SCENARIO_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_ABILITY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_SCENARIO_ABILITY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_AVLBLTY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_SCENARIO_AVLBLTY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_CHANGES" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_SCENARIO_CHANGES_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_ISSUES" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_SCENARIO_ISSUES_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_ISSUE_CMPNT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_SCENARIO_ISSUE_CMPNT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_ISSUE_LABEL" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_SCENARIO_ISSUE_LABEL_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_ISSUE_LINKS" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_SCENARIO_ISSUE_LINKS_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_ISSUE_RES" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_SCENARIO_ISSUE_RES_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_PERSON" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_SCENARIO_PERSON_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_PLAN_CAP" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_SCENARIO_PLAN_CAP_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_RESOURCE" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_SCENARIO_RESOURCE_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_SKILL" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_SCENARIO_SKILL_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_STAGE" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_SCENARIO_STAGE_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_TEAM" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_SCENARIO_TEAM_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_THEME" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_SCENARIO_THEME_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_VERSION" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_SCENARIO_VERSION_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_XPVERSION" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_SCENARIO_XPVERSION_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCEN_CSTM_FLD_MVAL" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_SCEN_CSTM_FLD_MVAL_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCEN_CUSTOM_FIELD" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_SCEN_CUSTOM_FIELD_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCEN_TEAM_EX_SPRINT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_SCEN_TEAM_EX_SPRINT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SHARED_REPORT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_SHARED_REPORT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SOLUTION" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_SOLUTION_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_STAGE" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_STAGE_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_TEAM_EX_SPRINT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_TEAM_EX_SPRINT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_THEME" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_THEME_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_VERSION_ENRICHMENT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_VERSION_ENRICHMENT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_X_PROJECT_VERSION" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_D9132D_X_PROJECT_VERSION_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_BRANCH" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_BRANCH_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_BRANCH_HEAD_MAPPING" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_BRANCH_HEAD_MAPPING_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_CHANGESET_MAPPING" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_CHANGESET_MAPPING_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_COMMIT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_COMMIT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_GIT_HUB_EVENT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_GIT_HUB_EVENT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_HOOK_MIGRATION_TASK" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_HOOK_MIGRATION_TASK_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_ISSUE_MAPPING" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_ISSUE_MAPPING_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_ISSUE_MAPPING_V2" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_ISSUE_MAPPING_V2_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_ISSUE_TO_BRANCH" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_ISSUE_TO_BRANCH_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_ISSUE_TO_CHANGESET" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_ISSUE_TO_CHANGESET_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_MESSAGE" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_MESSAGE_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_MESSAGE_QUEUE_ITEM" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_MESSAGE_QUEUE_ITEM_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_MESSAGE_TAG" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_MESSAGE_TAG_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_ORGANIZATION_MAPPING" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_ORGANIZATION_MAPPING_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_ORG_TO_PROJECT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_ORG_TO_PROJECT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_PROJECT_MAPPING" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_PROJECT_MAPPING_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_PROJECT_MAPPING_V2" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_PROJECT_MAPPING_V2_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_PR_ISSUE_KEY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_PR_ISSUE_KEY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_PR_PARTICIPANT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_PR_PARTICIPANT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_PR_TO_COMMIT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_PR_TO_COMMIT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_PULL_REQUEST" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_PULL_REQUEST_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_REPOSITORY_MAPPING" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_REPOSITORY_MAPPING_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_REPO_TO_CHANGESET" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_REPO_TO_CHANGESET_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_REPO_TO_PROJECT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_REPO_TO_PROJECT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_SYNC_AUDIT_LOG" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_SYNC_AUDIT_LOG_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_SYNC_EVENT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_SYNC_EVENT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_ED669C_IDP_CONFIG" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_ED669C_IDP_CONFIG_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_ED669C_SEEN_ASSERTIONS" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_ED669C_SEEN_ASSERTIONS_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_FE1BC5_REDIRECT_URI" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_FE1BC5_REDIRECT_URI_ID_seq"'::regclass);


--
-- Name: AO_0A5972_NOTIFICATION_SETTING_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_0A5972_NOTIFICATION_SETTING"
    ADD CONSTRAINT "AO_0A5972_NOTIFICATION_SETTING_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_0A5972_PUSH_REGISTRATION_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_0A5972_PUSH_REGISTRATION"
    ADD CONSTRAINT "AO_0A5972_PUSH_REGISTRATION_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_0AC321_RECOMMENDATION_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_0AC321_RECOMMENDATION_AO"
    ADD CONSTRAINT "AO_0AC321_RECOMMENDATION_AO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_21D670_WHITELIST_RULES_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_21D670_WHITELIST_RULES"
    ADD CONSTRAINT "AO_21D670_WHITELIST_RULES_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_21F425_MESSAGE_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_21F425_MESSAGE_AO"
    ADD CONSTRAINT "AO_21F425_MESSAGE_AO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_21F425_MESSAGE_MAPPING_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_21F425_MESSAGE_MAPPING_AO"
    ADD CONSTRAINT "AO_21F425_MESSAGE_MAPPING_AO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_21F425_USER_PROPERTY_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_21F425_USER_PROPERTY_AO"
    ADD CONSTRAINT "AO_21F425_USER_PROPERTY_AO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_38321B_CUSTOM_CONTENT_LINK"
    ADD CONSTRAINT "AO_38321B_CUSTOM_CONTENT_LINK_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_3B1893_LOOP_DETECTION_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_3B1893_LOOP_DETECTION"
    ADD CONSTRAINT "AO_3B1893_LOOP_DETECTION_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_4789DD_DISABLED_CHECKS_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_4789DD_DISABLED_CHECKS"
    ADD CONSTRAINT "AO_4789DD_DISABLED_CHECKS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_4789DD_HEALTH_CHECK_STATUS_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_4789DD_HEALTH_CHECK_STATUS"
    ADD CONSTRAINT "AO_4789DD_HEALTH_CHECK_STATUS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_4789DD_HEALTH_CHECK_WATCHER_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_4789DD_HEALTH_CHECK_WATCHER"
    ADD CONSTRAINT "AO_4789DD_HEALTH_CHECK_WATCHER_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_4789DD_PROPERTIES_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_4789DD_PROPERTIES"
    ADD CONSTRAINT "AO_4789DD_PROPERTIES_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_4789DD_READ_NOTIFICATIONS_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_4789DD_READ_NOTIFICATIONS"
    ADD CONSTRAINT "AO_4789DD_READ_NOTIFICATIONS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_4789DD_SHORTENED_KEY_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_4789DD_SHORTENED_KEY"
    ADD CONSTRAINT "AO_4789DD_SHORTENED_KEY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_4789DD_TASK_MONITOR_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_4789DD_TASK_MONITOR"
    ADD CONSTRAINT "AO_4789DD_TASK_MONITOR_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_4AEACD_WEBHOOK_DAO_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_4AEACD_WEBHOOK_DAO"
    ADD CONSTRAINT "AO_4AEACD_WEBHOOK_DAO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_550953_SHORTCUT_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_550953_SHORTCUT"
    ADD CONSTRAINT "AO_550953_SHORTCUT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_563AEE_ACTIVITY_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT "AO_563AEE_ACTIVITY_ENTITY_pkey" PRIMARY KEY ("ACTIVITY_ID");


--
-- Name: AO_563AEE_ACTOR_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_563AEE_ACTOR_ENTITY"
    ADD CONSTRAINT "AO_563AEE_ACTOR_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_563AEE_MEDIA_LINK_ENTITY"
    ADD CONSTRAINT "AO_563AEE_MEDIA_LINK_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_563AEE_OBJECT_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_563AEE_OBJECT_ENTITY"
    ADD CONSTRAINT "AO_563AEE_OBJECT_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_563AEE_TARGET_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_563AEE_TARGET_ENTITY"
    ADD CONSTRAINT "AO_563AEE_TARGET_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_575BF5_DEV_SUMMARY_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_575BF5_DEV_SUMMARY"
    ADD CONSTRAINT "AO_575BF5_DEV_SUMMARY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_575BF5_PROCESSED_COMMITS_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_575BF5_PROCESSED_COMMITS"
    ADD CONSTRAINT "AO_575BF5_PROCESSED_COMMITS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_575BF5_PROVIDER_ISSUE_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_575BF5_PROVIDER_ISSUE"
    ADD CONSTRAINT "AO_575BF5_PROVIDER_ISSUE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_575BF5_PROVIDER_SEQ_NO_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_575BF5_PROVIDER_SEQ_NO"
    ADD CONSTRAINT "AO_575BF5_PROVIDER_SEQ_NO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_589059_AUDIT_ITEM_ASC_ITEM_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_AUDIT_ITEM_ASC_ITEM"
    ADD CONSTRAINT "AO_589059_AUDIT_ITEM_ASC_ITEM_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_589059_AUDIT_ITEM_CGE_ITEM_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_AUDIT_ITEM_CGE_ITEM"
    ADD CONSTRAINT "AO_589059_AUDIT_ITEM_CGE_ITEM_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_589059_AUDIT_ITEM_COMP_CGE_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_AUDIT_ITEM_COMP_CGE"
    ADD CONSTRAINT "AO_589059_AUDIT_ITEM_COMP_CGE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_589059_AUDIT_ITEM_PROJECT_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_AUDIT_ITEM_PROJECT"
    ADD CONSTRAINT "AO_589059_AUDIT_ITEM_PROJECT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_589059_AUDIT_ITEM_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_AUDIT_ITEM"
    ADD CONSTRAINT "AO_589059_AUDIT_ITEM_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_589059_AUTOMATION_QUEUE_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_AUTOMATION_QUEUE"
    ADD CONSTRAINT "AO_589059_AUTOMATION_QUEUE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_589059_COUNTERS_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_COUNTERS"
    ADD CONSTRAINT "AO_589059_COUNTERS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_589059_LEGACY_RULE_LINK_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_LEGACY_RULE_LINK"
    ADD CONSTRAINT "AO_589059_LEGACY_RULE_LINK_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_589059_RULE_CFG_COMPONENT_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_CFG_COMPONENT"
    ADD CONSTRAINT "AO_589059_RULE_CFG_COMPONENT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_589059_RULE_CFG_PROJ_ASSOC_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_CFG_PROJ_ASSOC"
    ADD CONSTRAINT "AO_589059_RULE_CFG_PROJ_ASSOC_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_589059_RULE_CONFIG_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_CONFIG"
    ADD CONSTRAINT "AO_589059_RULE_CONFIG_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_589059_RULE_LABEL_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_LABEL"
    ADD CONSTRAINT "AO_589059_RULE_LABEL_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_589059_RULE_SCHEDULE_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_SCHEDULE"
    ADD CONSTRAINT "AO_589059_RULE_SCHEDULE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_589059_RULE_SECRET_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_SECRET"
    ADD CONSTRAINT "AO_589059_RULE_SECRET_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_589059_RULE_STATE_LATEST_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_STATE_LATEST"
    ADD CONSTRAINT "AO_589059_RULE_STATE_LATEST_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_589059_RULE_STAT_ROLLUP_DAY_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_STAT_ROLLUP_DAY"
    ADD CONSTRAINT "AO_589059_RULE_STAT_ROLLUP_DAY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_589059_RULE_STAT_ROLLUP_HR_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_STAT_ROLLUP_HR"
    ADD CONSTRAINT "AO_589059_RULE_STAT_ROLLUP_HR_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_589059_RULE_STAT_ROLLUP_MIN_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_STAT_ROLLUP_MIN"
    ADD CONSTRAINT "AO_589059_RULE_STAT_ROLLUP_MIN_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_589059_RULE_STAT_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_STAT"
    ADD CONSTRAINT "AO_589059_RULE_STAT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_589059_RULE_TAG_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_TAG"
    ADD CONSTRAINT "AO_589059_RULE_TAG_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_589059_RULE_TO_LABEL_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_TO_LABEL"
    ADD CONSTRAINT "AO_589059_RULE_TO_LABEL_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_589059_RULE_TO_SECRET_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_TO_SECRET"
    ADD CONSTRAINT "AO_589059_RULE_TO_SECRET_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_589059_SECRET_PROJ_ASSOC_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_SECRET_PROJ_ASSOC"
    ADD CONSTRAINT "AO_589059_SECRET_PROJ_ASSOC_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_AUDITENTRY_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_AUDITENTRY"
    ADD CONSTRAINT "AO_60DB71_AUDITENTRY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_BOARDADMINS_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_BOARDADMINS"
    ADD CONSTRAINT "AO_60DB71_BOARDADMINS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_CARDCOLOR_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_CARDCOLOR"
    ADD CONSTRAINT "AO_60DB71_CARDCOLOR_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_CARDLAYOUT_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_CARDLAYOUT"
    ADD CONSTRAINT "AO_60DB71_CARDLAYOUT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_COLUMNSTATUS_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_COLUMNSTATUS"
    ADD CONSTRAINT "AO_60DB71_COLUMNSTATUS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_COLUMN_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_COLUMN"
    ADD CONSTRAINT "AO_60DB71_COLUMN_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_DETAILVIEWFIELD_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_DETAILVIEWFIELD"
    ADD CONSTRAINT "AO_60DB71_DETAILVIEWFIELD_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_ESTIMATESTATISTIC_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_ESTIMATESTATISTIC"
    ADD CONSTRAINT "AO_60DB71_ESTIMATESTATISTIC_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_ISSUERANKINGLOG_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_ISSUERANKINGLOG"
    ADD CONSTRAINT "AO_60DB71_ISSUERANKINGLOG_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_ISSUERANKING_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_ISSUERANKING"
    ADD CONSTRAINT "AO_60DB71_ISSUERANKING_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_LEXORANKBALANCER_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_LEXORANKBALANCER"
    ADD CONSTRAINT "AO_60DB71_LEXORANKBALANCER_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_LEXORANK_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_LEXORANK"
    ADD CONSTRAINT "AO_60DB71_LEXORANK_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_NONWORKINGDAY_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_NONWORKINGDAY"
    ADD CONSTRAINT "AO_60DB71_NONWORKINGDAY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_QUICKFILTER_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_QUICKFILTER"
    ADD CONSTRAINT "AO_60DB71_QUICKFILTER_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_RANKABLEOBJECT_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_RANKABLEOBJECT"
    ADD CONSTRAINT "AO_60DB71_RANKABLEOBJECT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_RAPIDVIEW_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_RAPIDVIEW"
    ADD CONSTRAINT "AO_60DB71_RAPIDVIEW_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_SPRINT_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_SPRINT"
    ADD CONSTRAINT "AO_60DB71_SPRINT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_STATSFIELD_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_STATSFIELD"
    ADD CONSTRAINT "AO_60DB71_STATSFIELD_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_SUBQUERY_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_SUBQUERY"
    ADD CONSTRAINT "AO_60DB71_SUBQUERY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_SWIMLANE_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_SWIMLANE"
    ADD CONSTRAINT "AO_60DB71_SWIMLANE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_TRACKINGSTATISTIC_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_TRACKINGSTATISTIC"
    ADD CONSTRAINT "AO_60DB71_TRACKINGSTATISTIC_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_VERSION_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_VERSION"
    ADD CONSTRAINT "AO_60DB71_VERSION_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_WORKINGDAYS_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_WORKINGDAYS"
    ADD CONSTRAINT "AO_60DB71_WORKINGDAYS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_6FF49D_ACCESS_LOG_PRC_CTRL_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_ACCESS_LOG_PRC_CTRL"
    ADD CONSTRAINT "AO_6FF49D_ACCESS_LOG_PRC_CTRL_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_6FF49D_ACCESS_LOG_PRC_ITEM_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_ACCESS_LOG_PRC_ITEM"
    ADD CONSTRAINT "AO_6FF49D_ACCESS_LOG_PRC_ITEM_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_6FF49D_ACTUAL_MIG_COUNTS_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_ACTUAL_MIG_COUNTS"
    ADD CONSTRAINT "AO_6FF49D_ACTUAL_MIG_COUNTS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_6FF49D_ANALYTICS_EVENT_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_ANALYTICS_EVENT"
    ADD CONSTRAINT "AO_6FF49D_ANALYTICS_EVENT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_6FF49D_APP_ASSESSMENT_INFO_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_APP_ASSESSMENT_INFO"
    ADD CONSTRAINT "AO_6FF49D_APP_ASSESSMENT_INFO_pkey" PRIMARY KEY ("APP_KEY");


--
-- Name: AO_6FF49D_BROWSER_METRICS_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_BROWSER_METRICS"
    ADD CONSTRAINT "AO_6FF49D_BROWSER_METRICS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_6FF49D_CLOUD_SITE_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_CLOUD_SITE"
    ADD CONSTRAINT "AO_6FF49D_CLOUD_SITE_pkey" PRIMARY KEY ("CLOUD_ID");


--
-- Name: AO_6FF49D_CONFIG_ITEMS_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_CONFIG_ITEMS"
    ADD CONSTRAINT "AO_6FF49D_CONFIG_ITEMS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_6FF49D_CORRECTED_EMAIL_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_CORRECTED_EMAIL"
    ADD CONSTRAINT "AO_6FF49D_CORRECTED_EMAIL_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_6FF49D_DAILY_USAGE_METRICS_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_DAILY_USAGE_METRICS"
    ADD CONSTRAINT "AO_6FF49D_DAILY_USAGE_METRICS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_6FF49D_EMAIL_TRST_DMN_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_EMAIL_TRST_DMN"
    ADD CONSTRAINT "AO_6FF49D_EMAIL_TRST_DMN_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_6FF49D_EXPECTED_MIG_COUNTS_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_EXPECTED_MIG_COUNTS"
    ADD CONSTRAINT "AO_6FF49D_EXPECTED_MIG_COUNTS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_6FF49D_EXPELLED_USER_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_EXPELLED_USER"
    ADD CONSTRAINT "AO_6FF49D_EXPELLED_USER_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_6FF49D_EXPORT_ERROR_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_EXPORT_ERROR"
    ADD CONSTRAINT "AO_6FF49D_EXPORT_ERROR_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_6FF49D_GR_RESPONSE_GROUP_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_GR_RESPONSE_GROUP"
    ADD CONSTRAINT "AO_6FF49D_GR_RESPONSE_GROUP_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_6FF49D_GUARDRAILS_RESPONSE_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_GUARDRAILS_RESPONSE"
    ADD CONSTRAINT "AO_6FF49D_GUARDRAILS_RESPONSE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_6FF49D_INCORRECT_EMAIL_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_INCORRECT_EMAIL"
    ADD CONSTRAINT "AO_6FF49D_INCORRECT_EMAIL_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_6FF49D_INST_ANALYSIS_CTRL_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_INST_ANALYSIS_CTRL"
    ADD CONSTRAINT "AO_6FF49D_INST_ANALYSIS_CTRL_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_6FF49D_LINKED_MEDIA_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_LINKED_MEDIA"
    ADD CONSTRAINT "AO_6FF49D_LINKED_MEDIA_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_6FF49D_MIGRATED_AVATAR_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_MIGRATED_AVATAR"
    ADD CONSTRAINT "AO_6FF49D_MIGRATED_AVATAR_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_6FF49D_MIGRATED_FILE_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_MIGRATED_FILE"
    ADD CONSTRAINT "AO_6FF49D_MIGRATED_FILE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_6FF49D_MIGRATION_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_MIGRATION_ENTITY"
    ADD CONSTRAINT "AO_6FF49D_MIGRATION_ENTITY_pkey" PRIMARY KEY ("MIGRATION_ID");


--
-- Name: AO_6FF49D_MIGRATION_INCREMENT_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_MIGRATION_INCREMENT"
    ADD CONSTRAINT "AO_6FF49D_MIGRATION_INCREMENT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_6FF49D_MIGRATION_SCOPE_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_MIGRATION_SCOPE"
    ADD CONSTRAINT "AO_6FF49D_MIGRATION_SCOPE_pkey" PRIMARY KEY ("CLOUD_ID");


--
-- Name: AO_6FF49D_MIG_REPORT_STATUS_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_MIG_REPORT_STATUS"
    ADD CONSTRAINT "AO_6FF49D_MIG_REPORT_STATUS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_6FF49D_PLAN_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_PLAN_ENTITY"
    ADD CONSTRAINT "AO_6FF49D_PLAN_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_6FF49D_PREMIG_OUTCOME_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_PREMIG_OUTCOME"
    ADD CONSTRAINT "AO_6FF49D_PREMIG_OUTCOME_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_6FF49D_PUBLIC_PLAN_MAPPING_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_PUBLIC_PLAN_MAPPING"
    ADD CONSTRAINT "AO_6FF49D_PUBLIC_PLAN_MAPPING_pkey" PRIMARY KEY ("JOB_ID");


--
-- Name: AO_6FF49D_SKIP_PREFLT_RESULT_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_SKIP_PREFLT_RESULT"
    ADD CONSTRAINT "AO_6FF49D_SKIP_PREFLT_RESULT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_6FF49D_TOMBSTONE_ACCOUNT_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_TOMBSTONE_ACCOUNT"
    ADD CONSTRAINT "AO_6FF49D_TOMBSTONE_ACCOUNT_pkey" PRIMARY KEY ("USER_KEY");


--
-- Name: AO_6FF49D_UNSUPPORTED_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_UNSUPPORTED_ENTITY"
    ADD CONSTRAINT "AO_6FF49D_UNSUPPORTED_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_6FF49D_USERBASE_SCAN_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_USERBASE_SCAN"
    ADD CONSTRAINT "AO_6FF49D_USERBASE_SCAN_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_6FF49D_USERS_GROUPS_EXTRACT_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_USERS_GROUPS_EXTRACT"
    ADD CONSTRAINT "AO_6FF49D_USERS_GROUPS_EXTRACT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_6FF49D_USER_EMAIL_EVENT_LOG_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_USER_EMAIL_EVENT_LOG"
    ADD CONSTRAINT "AO_6FF49D_USER_EMAIL_EVENT_LOG_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_6FF49D_VIRTUAL_ATTACHMENT_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_VIRTUAL_ATTACHMENT"
    ADD CONSTRAINT "AO_6FF49D_VIRTUAL_ATTACHMENT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_723324_CLIENT_CONFIG_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_723324_CLIENT_CONFIG"
    ADD CONSTRAINT "AO_723324_CLIENT_CONFIG_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_723324_CLIENT_TOKEN_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_723324_CLIENT_TOKEN"
    ADD CONSTRAINT "AO_723324_CLIENT_TOKEN_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_733371_EVENT_PARAMETER_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_733371_EVENT_PARAMETER"
    ADD CONSTRAINT "AO_733371_EVENT_PARAMETER_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_733371_EVENT_RECIPIENT_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_733371_EVENT_RECIPIENT"
    ADD CONSTRAINT "AO_733371_EVENT_RECIPIENT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_733371_EVENT_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_733371_EVENT"
    ADD CONSTRAINT "AO_733371_EVENT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_81F455_PERSONAL_TOKEN_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_81F455_PERSONAL_TOKEN"
    ADD CONSTRAINT "AO_81F455_PERSONAL_TOKEN_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_82B313_ABILITY_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_82B313_ABILITY"
    ADD CONSTRAINT "AO_82B313_ABILITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_82B313_ABSENCE_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_82B313_ABSENCE"
    ADD CONSTRAINT "AO_82B313_ABSENCE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_82B313_AVAILABILITY_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_82B313_AVAILABILITY"
    ADD CONSTRAINT "AO_82B313_AVAILABILITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_82B313_INIT_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_82B313_INIT"
    ADD CONSTRAINT "AO_82B313_INIT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_82B313_PERSON_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_82B313_PERSON"
    ADD CONSTRAINT "AO_82B313_PERSON_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_82B313_RESOURCE_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_82B313_RESOURCE"
    ADD CONSTRAINT "AO_82B313_RESOURCE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_82B313_SKILL_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_82B313_SKILL"
    ADD CONSTRAINT "AO_82B313_SKILL_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_82B313_TEAM_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_82B313_TEAM"
    ADD CONSTRAINT "AO_82B313_TEAM_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_8752F1_DATA_PIPELINE_CONFIG_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_8752F1_DATA_PIPELINE_CONFIG"
    ADD CONSTRAINT "AO_8752F1_DATA_PIPELINE_CONFIG_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_8752F1_DATA_PIPELINE_EOO_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_8752F1_DATA_PIPELINE_EOO"
    ADD CONSTRAINT "AO_8752F1_DATA_PIPELINE_EOO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_8752F1_DATA_PIPELINE_JOB_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_8752F1_DATA_PIPELINE_JOB"
    ADD CONSTRAINT "AO_8752F1_DATA_PIPELINE_JOB_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_97EDAB_USERINVITATION_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_97EDAB_USERINVITATION"
    ADD CONSTRAINT "AO_97EDAB_USERINVITATION_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A0B856_WEB_HOOK_LISTENER_AO"
    ADD CONSTRAINT "AO_A0B856_WEB_HOOK_LISTENER_AO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_A415DF_AOABILITY_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOABILITY"
    ADD CONSTRAINT "AO_A415DF_AOABILITY_pkey" PRIMARY KEY ("ID_OTHER");


--
-- Name: AO_A415DF_AOABSENCE_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOABSENCE"
    ADD CONSTRAINT "AO_A415DF_AOABSENCE_pkey" PRIMARY KEY ("ID_OTHER");


--
-- Name: AO_A415DF_AOAVAILABILITY_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOAVAILABILITY"
    ADD CONSTRAINT "AO_A415DF_AOAVAILABILITY_pkey" PRIMARY KEY ("ID_OTHER");


--
-- Name: AO_A415DF_AOCONFIGURATION_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOCONFIGURATION"
    ADD CONSTRAINT "AO_A415DF_AOCONFIGURATION_pkey" PRIMARY KEY ("ID_OTHER");


--
-- Name: AO_A415DF_AOCUSTOM_WORDING_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOCUSTOM_WORDING"
    ADD CONSTRAINT "AO_A415DF_AOCUSTOM_WORDING_pkey" PRIMARY KEY ("ID_OTHER");


--
-- Name: AO_A415DF_AODEPENDENCY_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AODEPENDENCY"
    ADD CONSTRAINT "AO_A415DF_AODEPENDENCY_pkey" PRIMARY KEY ("ID_OTHER");


--
-- Name: AO_A415DF_AODOOR_STOP_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AODOOR_STOP"
    ADD CONSTRAINT "AO_A415DF_AODOOR_STOP_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_A415DF_AOESTIMATE_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOESTIMATE"
    ADD CONSTRAINT "AO_A415DF_AOESTIMATE_pkey" PRIMARY KEY ("ID_OTHER");


--
-- Name: AO_A415DF_AOEXTENSION_LINK_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOEXTENSION_LINK"
    ADD CONSTRAINT "AO_A415DF_AOEXTENSION_LINK_pkey" PRIMARY KEY ("ID_OTHER");


--
-- Name: AO_A415DF_AONON_WORKING_DAYS_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AONON_WORKING_DAYS"
    ADD CONSTRAINT "AO_A415DF_AONON_WORKING_DAYS_pkey" PRIMARY KEY ("ID_OTHER");


--
-- Name: AO_A415DF_AOPERMISSION_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOPERMISSION"
    ADD CONSTRAINT "AO_A415DF_AOPERMISSION_pkey" PRIMARY KEY ("ID_OTHER");


--
-- Name: AO_A415DF_AOPERSON_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOPERSON"
    ADD CONSTRAINT "AO_A415DF_AOPERSON_pkey" PRIMARY KEY ("ID_OTHER");


--
-- Name: AO_A415DF_AOPLAN_CONFIGURATION_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOPLAN_CONFIGURATION"
    ADD CONSTRAINT "AO_A415DF_AOPLAN_CONFIGURATION_pkey" PRIMARY KEY ("ID_OTHER");


--
-- Name: AO_A415DF_AOPLAN_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOPLAN"
    ADD CONSTRAINT "AO_A415DF_AOPLAN_pkey" PRIMARY KEY ("ID_OTHER");


--
-- Name: AO_A415DF_AOPRESENCE_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOPRESENCE"
    ADD CONSTRAINT "AO_A415DF_AOPRESENCE_pkey" PRIMARY KEY ("ID_OTHER");


--
-- Name: AO_A415DF_AORELEASE_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AORELEASE"
    ADD CONSTRAINT "AO_A415DF_AORELEASE_pkey" PRIMARY KEY ("ID_OTHER");


--
-- Name: AO_A415DF_AOREPLANNING_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOREPLANNING"
    ADD CONSTRAINT "AO_A415DF_AOREPLANNING_pkey" PRIMARY KEY ("ID_OTHER");


--
-- Name: AO_A415DF_AORESOURCE_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AORESOURCE"
    ADD CONSTRAINT "AO_A415DF_AORESOURCE_pkey" PRIMARY KEY ("ID_OTHER");


--
-- Name: AO_A415DF_AOSKILL_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOSKILL"
    ADD CONSTRAINT "AO_A415DF_AOSKILL_pkey" PRIMARY KEY ("ID_OTHER");


--
-- Name: AO_A415DF_AOSOLUTION_STORE_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOSOLUTION_STORE"
    ADD CONSTRAINT "AO_A415DF_AOSOLUTION_STORE_pkey" PRIMARY KEY ("ID_OTHER");


--
-- Name: AO_A415DF_AOSPRINT_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOSPRINT"
    ADD CONSTRAINT "AO_A415DF_AOSPRINT_pkey" PRIMARY KEY ("ID_OTHER");


--
-- Name: AO_A415DF_AOSTAGE_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOSTAGE"
    ADD CONSTRAINT "AO_A415DF_AOSTAGE_pkey" PRIMARY KEY ("ID_OTHER");


--
-- Name: AO_A415DF_AOSTREAM_TO_TEAM_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOSTREAM_TO_TEAM"
    ADD CONSTRAINT "AO_A415DF_AOSTREAM_TO_TEAM_pkey" PRIMARY KEY ("ID_OTHER");


--
-- Name: AO_A415DF_AOSTREAM_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOSTREAM"
    ADD CONSTRAINT "AO_A415DF_AOSTREAM_pkey" PRIMARY KEY ("ID_OTHER");


--
-- Name: AO_A415DF_AOTEAM_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOTEAM"
    ADD CONSTRAINT "AO_A415DF_AOTEAM_pkey" PRIMARY KEY ("ID_OTHER");


--
-- Name: AO_A415DF_AOTHEME_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOTHEME"
    ADD CONSTRAINT "AO_A415DF_AOTHEME_pkey" PRIMARY KEY ("ID_OTHER");


--
-- Name: AO_A415DF_AOWORK_ITEM_TO_RES_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOWORK_ITEM_TO_RES"
    ADD CONSTRAINT "AO_A415DF_AOWORK_ITEM_TO_RES_pkey" PRIMARY KEY ("ID_OTHER");


--
-- Name: AO_A415DF_AOWORK_ITEM_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOWORK_ITEM"
    ADD CONSTRAINT "AO_A415DF_AOWORK_ITEM_pkey" PRIMARY KEY ("ID_OTHER");


--
-- Name: AO_AC3877_RL_USER_COUNTER_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_AC3877_RL_USER_COUNTER"
    ADD CONSTRAINT "AO_AC3877_RL_USER_COUNTER_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_AC3877_SETTINGS_VERSION_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_AC3877_SETTINGS_VERSION"
    ADD CONSTRAINT "AO_AC3877_SETTINGS_VERSION_pkey" PRIMARY KEY ("TYPE");


--
-- Name: AO_AC3877_SYSTEM_RL_SETTINGS_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_AC3877_SYSTEM_RL_SETTINGS"
    ADD CONSTRAINT "AO_AC3877_SYSTEM_RL_SETTINGS_pkey" PRIMARY KEY ("NAME");


--
-- Name: AO_AC3877_USER_RL_SETTINGS_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_AC3877_USER_RL_SETTINGS"
    ADD CONSTRAINT "AO_AC3877_USER_RL_SETTINGS_pkey" PRIMARY KEY ("USER_ID");


--
-- Name: AO_B9A0F0_APPLIED_TEMPLATE_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_B9A0F0_APPLIED_TEMPLATE"
    ADD CONSTRAINT "AO_B9A0F0_APPLIED_TEMPLATE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_C16815_ALERT_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_C16815_ALERT_AO"
    ADD CONSTRAINT "AO_C16815_ALERT_AO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_C77861_AUDIT_ACTION_CACHE_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_C77861_AUDIT_ACTION_CACHE"
    ADD CONSTRAINT "AO_C77861_AUDIT_ACTION_CACHE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_C77861_AUDIT_CATEGORY_CACHE_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_C77861_AUDIT_CATEGORY_CACHE"
    ADD CONSTRAINT "AO_C77861_AUDIT_CATEGORY_CACHE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_C77861_AUDIT_DENY_LISTED_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_C77861_AUDIT_DENY_LISTED"
    ADD CONSTRAINT "AO_C77861_AUDIT_DENY_LISTED_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_C77861_AUDIT_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_C77861_AUDIT_ENTITY"
    ADD CONSTRAINT "AO_C77861_AUDIT_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_CFF990_AOTRANSITION_FAILURE_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_CFF990_AOTRANSITION_FAILURE"
    ADD CONSTRAINT "AO_CFF990_AOTRANSITION_FAILURE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_ASSIGNMENT_EXT_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_ASSIGNMENT_EXT"
    ADD CONSTRAINT "AO_D9132D_ASSIGNMENT_EXT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_ASSIGNMENT_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_ASSIGNMENT"
    ADD CONSTRAINT "AO_D9132D_ASSIGNMENT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_CONFIGURATION_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_CONFIGURATION"
    ADD CONSTRAINT "AO_D9132D_CONFIGURATION_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_DEP_ISSUE_LINK_TYPES_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_DEP_ISSUE_LINK_TYPES"
    ADD CONSTRAINT "AO_D9132D_DEP_ISSUE_LINK_TYPES_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_DISTRIBUTION_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_DISTRIBUTION"
    ADD CONSTRAINT "AO_D9132D_DISTRIBUTION_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_EXCLUDED_ISSUE_TYPES_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_EXCLUDED_ISSUE_TYPES"
    ADD CONSTRAINT "AO_D9132D_EXCLUDED_ISSUE_TYPES_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_EXCLUDED_STATUSCATS_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_EXCLUDED_STATUSCATS"
    ADD CONSTRAINT "AO_D9132D_EXCLUDED_STATUSCATS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_EXCLUDED_STATUSES_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_EXCLUDED_STATUSES"
    ADD CONSTRAINT "AO_D9132D_EXCLUDED_STATUSES_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_EXCLUDED_VERSIONS_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_EXCLUDED_VERSIONS"
    ADD CONSTRAINT "AO_D9132D_EXCLUDED_VERSIONS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_GENERICREPORT_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_GENERICREPORT"
    ADD CONSTRAINT "AO_D9132D_GENERICREPORT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_HIERARCHY_CONFIG_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_HIERARCHY_CONFIG"
    ADD CONSTRAINT "AO_D9132D_HIERARCHY_CONFIG_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_INIT_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_INIT"
    ADD CONSTRAINT "AO_D9132D_INIT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_ISSUE_SOURCE_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_ISSUE_SOURCE"
    ADD CONSTRAINT "AO_D9132D_ISSUE_SOURCE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_NONWORKINGDAYS_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_NONWORKINGDAYS"
    ADD CONSTRAINT "AO_D9132D_NONWORKINGDAYS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_PERMISSIONS_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PERMISSIONS"
    ADD CONSTRAINT "AO_D9132D_PERMISSIONS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_PLANNED_CAPACITY_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PLANNED_CAPACITY"
    ADD CONSTRAINT "AO_D9132D_PLANNED_CAPACITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_PLANSKILL_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PLANSKILL"
    ADD CONSTRAINT "AO_D9132D_PLANSKILL_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_PLANTEAM_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PLANTEAM"
    ADD CONSTRAINT "AO_D9132D_PLANTEAM_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_PLANTHEME_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PLANTHEME"
    ADD CONSTRAINT "AO_D9132D_PLANTHEME_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_PLANVERSION_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PLANVERSION"
    ADD CONSTRAINT "AO_D9132D_PLANVERSION_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_PLAN_CUSTOM_FIELD_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PLAN_CUSTOM_FIELD"
    ADD CONSTRAINT "AO_D9132D_PLAN_CUSTOM_FIELD_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_PLAN_USER_PROPERTY_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PLAN_USER_PROPERTY"
    ADD CONSTRAINT "AO_D9132D_PLAN_USER_PROPERTY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_PLAN_US_PR_MAPPING_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PLAN_US_PR_MAPPING"
    ADD CONSTRAINT "AO_D9132D_PLAN_US_PR_MAPPING_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_PLAN_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PLAN"
    ADD CONSTRAINT "AO_D9132D_PLAN_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_PROGRAM_CUSTOM_FIELD_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PROGRAM_CUSTOM_FIELD"
    ADD CONSTRAINT "AO_D9132D_PROGRAM_CUSTOM_FIELD_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_PROGRAM_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PROGRAM"
    ADD CONSTRAINT "AO_D9132D_PROGRAM_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_RANK_ITEM_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_RANK_ITEM"
    ADD CONSTRAINT "AO_D9132D_RANK_ITEM_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_SAVED_VIEW2_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SAVED_VIEW2"
    ADD CONSTRAINT "AO_D9132D_SAVED_VIEW2_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_SAVED_VIEW_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SAVED_VIEW"
    ADD CONSTRAINT "AO_D9132D_SAVED_VIEW_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_SCENARIO_ABILITY_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_ABILITY"
    ADD CONSTRAINT "AO_D9132D_SCENARIO_ABILITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_SCENARIO_AVLBLTY_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_AVLBLTY"
    ADD CONSTRAINT "AO_D9132D_SCENARIO_AVLBLTY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_SCENARIO_CHANGES_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_CHANGES"
    ADD CONSTRAINT "AO_D9132D_SCENARIO_CHANGES_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_SCENARIO_ISSUES_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_ISSUES"
    ADD CONSTRAINT "AO_D9132D_SCENARIO_ISSUES_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_SCENARIO_ISSUE_CMPNT_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_ISSUE_CMPNT"
    ADD CONSTRAINT "AO_D9132D_SCENARIO_ISSUE_CMPNT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_SCENARIO_ISSUE_LABEL_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_ISSUE_LABEL"
    ADD CONSTRAINT "AO_D9132D_SCENARIO_ISSUE_LABEL_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_SCENARIO_ISSUE_LINKS_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_ISSUE_LINKS"
    ADD CONSTRAINT "AO_D9132D_SCENARIO_ISSUE_LINKS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_SCENARIO_ISSUE_RES_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_ISSUE_RES"
    ADD CONSTRAINT "AO_D9132D_SCENARIO_ISSUE_RES_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_SCENARIO_PERSON_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_PERSON"
    ADD CONSTRAINT "AO_D9132D_SCENARIO_PERSON_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_SCENARIO_PLAN_CAP_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_PLAN_CAP"
    ADD CONSTRAINT "AO_D9132D_SCENARIO_PLAN_CAP_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_SCENARIO_RESOURCE_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_RESOURCE"
    ADD CONSTRAINT "AO_D9132D_SCENARIO_RESOURCE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_SCENARIO_SKILL_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_SKILL"
    ADD CONSTRAINT "AO_D9132D_SCENARIO_SKILL_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_SCENARIO_STAGE_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_STAGE"
    ADD CONSTRAINT "AO_D9132D_SCENARIO_STAGE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_SCENARIO_TEAM_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_TEAM"
    ADD CONSTRAINT "AO_D9132D_SCENARIO_TEAM_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_SCENARIO_THEME_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_THEME"
    ADD CONSTRAINT "AO_D9132D_SCENARIO_THEME_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_SCENARIO_VERSION_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_VERSION"
    ADD CONSTRAINT "AO_D9132D_SCENARIO_VERSION_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_SCENARIO_XPVERSION_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_XPVERSION"
    ADD CONSTRAINT "AO_D9132D_SCENARIO_XPVERSION_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_SCENARIO_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO"
    ADD CONSTRAINT "AO_D9132D_SCENARIO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_SCEN_CSTM_FLD_MVAL_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCEN_CSTM_FLD_MVAL"
    ADD CONSTRAINT "AO_D9132D_SCEN_CSTM_FLD_MVAL_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_SCEN_CUSTOM_FIELD_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCEN_CUSTOM_FIELD"
    ADD CONSTRAINT "AO_D9132D_SCEN_CUSTOM_FIELD_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_SCEN_TEAM_EX_SPRINT_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCEN_TEAM_EX_SPRINT"
    ADD CONSTRAINT "AO_D9132D_SCEN_TEAM_EX_SPRINT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_SHARED_REPORT_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SHARED_REPORT"
    ADD CONSTRAINT "AO_D9132D_SHARED_REPORT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_SOLUTION_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SOLUTION"
    ADD CONSTRAINT "AO_D9132D_SOLUTION_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_STAGE_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_STAGE"
    ADD CONSTRAINT "AO_D9132D_STAGE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_TEAM_EX_SPRINT_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_TEAM_EX_SPRINT"
    ADD CONSTRAINT "AO_D9132D_TEAM_EX_SPRINT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_THEME_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_THEME"
    ADD CONSTRAINT "AO_D9132D_THEME_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_VERSION_ENRICHMENT_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_VERSION_ENRICHMENT"
    ADD CONSTRAINT "AO_D9132D_VERSION_ENRICHMENT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_D9132D_X_PROJECT_VERSION_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_X_PROJECT_VERSION"
    ADD CONSTRAINT "AO_D9132D_X_PROJECT_VERSION_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_BRANCH_HEAD_MAPPING_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_BRANCH_HEAD_MAPPING"
    ADD CONSTRAINT "AO_E8B6CC_BRANCH_HEAD_MAPPING_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_BRANCH_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_BRANCH"
    ADD CONSTRAINT "AO_E8B6CC_BRANCH_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_CHANGESET_MAPPING_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_CHANGESET_MAPPING"
    ADD CONSTRAINT "AO_E8B6CC_CHANGESET_MAPPING_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_COMMIT_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_COMMIT"
    ADD CONSTRAINT "AO_E8B6CC_COMMIT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_GIT_HUB_EVENT_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_GIT_HUB_EVENT"
    ADD CONSTRAINT "AO_E8B6CC_GIT_HUB_EVENT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_HOOK_MIGRATION_TASK_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_HOOK_MIGRATION_TASK"
    ADD CONSTRAINT "AO_E8B6CC_HOOK_MIGRATION_TASK_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_ISSUE_MAPPING_V2_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_ISSUE_MAPPING_V2"
    ADD CONSTRAINT "AO_E8B6CC_ISSUE_MAPPING_V2_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_ISSUE_MAPPING_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_ISSUE_MAPPING"
    ADD CONSTRAINT "AO_E8B6CC_ISSUE_MAPPING_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_ISSUE_TO_BRANCH_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_ISSUE_TO_BRANCH"
    ADD CONSTRAINT "AO_E8B6CC_ISSUE_TO_BRANCH_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_ISSUE_TO_CHANGESET_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_ISSUE_TO_CHANGESET"
    ADD CONSTRAINT "AO_E8B6CC_ISSUE_TO_CHANGESET_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_MESSAGE_QUEUE_ITEM_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_MESSAGE_QUEUE_ITEM"
    ADD CONSTRAINT "AO_E8B6CC_MESSAGE_QUEUE_ITEM_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_MESSAGE_TAG_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_MESSAGE_TAG"
    ADD CONSTRAINT "AO_E8B6CC_MESSAGE_TAG_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_MESSAGE_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_MESSAGE"
    ADD CONSTRAINT "AO_E8B6CC_MESSAGE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_ORGANIZATION_MAPPING_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_ORGANIZATION_MAPPING"
    ADD CONSTRAINT "AO_E8B6CC_ORGANIZATION_MAPPING_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_ORG_TO_PROJECT_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_ORG_TO_PROJECT"
    ADD CONSTRAINT "AO_E8B6CC_ORG_TO_PROJECT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_PROJECT_MAPPING_V2_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_PROJECT_MAPPING_V2"
    ADD CONSTRAINT "AO_E8B6CC_PROJECT_MAPPING_V2_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_PROJECT_MAPPING_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_PROJECT_MAPPING"
    ADD CONSTRAINT "AO_E8B6CC_PROJECT_MAPPING_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_PR_ISSUE_KEY_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_PR_ISSUE_KEY"
    ADD CONSTRAINT "AO_E8B6CC_PR_ISSUE_KEY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_PR_PARTICIPANT_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_PR_PARTICIPANT"
    ADD CONSTRAINT "AO_E8B6CC_PR_PARTICIPANT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_PR_TO_COMMIT_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_PR_TO_COMMIT"
    ADD CONSTRAINT "AO_E8B6CC_PR_TO_COMMIT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_PULL_REQUEST_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_PULL_REQUEST"
    ADD CONSTRAINT "AO_E8B6CC_PULL_REQUEST_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_REPOSITORY_MAPPING_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_REPOSITORY_MAPPING"
    ADD CONSTRAINT "AO_E8B6CC_REPOSITORY_MAPPING_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_REPO_TO_CHANGESET_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_REPO_TO_CHANGESET"
    ADD CONSTRAINT "AO_E8B6CC_REPO_TO_CHANGESET_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_REPO_TO_PROJECT_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_REPO_TO_PROJECT"
    ADD CONSTRAINT "AO_E8B6CC_REPO_TO_PROJECT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_SYNC_AUDIT_LOG_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_SYNC_AUDIT_LOG"
    ADD CONSTRAINT "AO_E8B6CC_SYNC_AUDIT_LOG_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_SYNC_EVENT_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_SYNC_EVENT"
    ADD CONSTRAINT "AO_E8B6CC_SYNC_EVENT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_ED669C_IDP_CONFIG_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_ED669C_IDP_CONFIG"
    ADD CONSTRAINT "AO_ED669C_IDP_CONFIG_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_ED669C_SEEN_ASSERTIONS_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_ED669C_SEEN_ASSERTIONS"
    ADD CONSTRAINT "AO_ED669C_SEEN_ASSERTIONS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_FE1BC5_ACCESS_TOKEN_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_FE1BC5_ACCESS_TOKEN"
    ADD CONSTRAINT "AO_FE1BC5_ACCESS_TOKEN_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_FE1BC5_AUTHORIZATION_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_FE1BC5_AUTHORIZATION"
    ADD CONSTRAINT "AO_FE1BC5_AUTHORIZATION_pkey" PRIMARY KEY ("AUTHORIZATION_CODE");


--
-- Name: AO_FE1BC5_CLIENT_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_FE1BC5_CLIENT"
    ADD CONSTRAINT "AO_FE1BC5_CLIENT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_FE1BC5_REDIRECT_URI_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_FE1BC5_REDIRECT_URI"
    ADD CONSTRAINT "AO_FE1BC5_REDIRECT_URI_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_FE1BC5_REFRESH_TOKEN_pkey; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_FE1BC5_REFRESH_TOKEN"
    ADD CONSTRAINT "AO_FE1BC5_REFRESH_TOKEN_pkey" PRIMARY KEY ("ID");


--
-- Name: pk_app_user; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.app_user
    ADD CONSTRAINT pk_app_user PRIMARY KEY (id);


--
-- Name: pk_audit_changed_value; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.audit_changed_value
    ADD CONSTRAINT pk_audit_changed_value PRIMARY KEY (id);


--
-- Name: pk_audit_item; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.audit_item
    ADD CONSTRAINT pk_audit_item PRIMARY KEY (id);


--
-- Name: pk_audit_log; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.audit_log
    ADD CONSTRAINT pk_audit_log PRIMARY KEY (id);


--
-- Name: pk_avatar; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.avatar
    ADD CONSTRAINT pk_avatar PRIMARY KEY (id);


--
-- Name: pk_board; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.board
    ADD CONSTRAINT pk_board PRIMARY KEY (id);


--
-- Name: pk_boardproject; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.boardproject
    ADD CONSTRAINT pk_boardproject PRIMARY KEY (board_id, project_id);


--
-- Name: pk_changegroup; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.changegroup
    ADD CONSTRAINT pk_changegroup PRIMARY KEY (id);


--
-- Name: pk_changeitem; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.changeitem
    ADD CONSTRAINT pk_changeitem PRIMARY KEY (id);


--
-- Name: pk_clusteredjob; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.clusteredjob
    ADD CONSTRAINT pk_clusteredjob PRIMARY KEY (id);


--
-- Name: pk_clusterlockstatus; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.clusterlockstatus
    ADD CONSTRAINT pk_clusterlockstatus PRIMARY KEY (id);


--
-- Name: pk_clustermessage; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.clustermessage
    ADD CONSTRAINT pk_clustermessage PRIMARY KEY (id);


--
-- Name: pk_clusternode; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.clusternode
    ADD CONSTRAINT pk_clusternode PRIMARY KEY (node_id);


--
-- Name: pk_clusternodeheartbeat; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.clusternodeheartbeat
    ADD CONSTRAINT pk_clusternodeheartbeat PRIMARY KEY (node_id);


--
-- Name: pk_clusterupgradestate; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.clusterupgradestate
    ADD CONSTRAINT pk_clusterupgradestate PRIMARY KEY (id);


--
-- Name: pk_columnlayout; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.columnlayout
    ADD CONSTRAINT pk_columnlayout PRIMARY KEY (id);


--
-- Name: pk_columnlayoutitem; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.columnlayoutitem
    ADD CONSTRAINT pk_columnlayoutitem PRIMARY KEY (id);


--
-- Name: pk_comment_pin; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.comment_pin
    ADD CONSTRAINT pk_comment_pin PRIMARY KEY (id);


--
-- Name: pk_comment_reaction; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.comment_reaction
    ADD CONSTRAINT pk_comment_reaction PRIMARY KEY (id);


--
-- Name: pk_comment_version; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.comment_version
    ADD CONSTRAINT pk_comment_version PRIMARY KEY (comment_id);


--
-- Name: pk_component; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.component
    ADD CONSTRAINT pk_component PRIMARY KEY (id);


--
-- Name: pk_configurationcontext; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.configurationcontext
    ADD CONSTRAINT pk_configurationcontext PRIMARY KEY (id);


--
-- Name: pk_customfield; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.customfield
    ADD CONSTRAINT pk_customfield PRIMARY KEY (id);


--
-- Name: pk_customfieldoption; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.customfieldoption
    ADD CONSTRAINT pk_customfieldoption PRIMARY KEY (id);


--
-- Name: pk_customfieldvalue; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.customfieldvalue
    ADD CONSTRAINT pk_customfieldvalue PRIMARY KEY (id);


--
-- Name: pk_cwd_application; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.cwd_application
    ADD CONSTRAINT pk_cwd_application PRIMARY KEY (id);


--
-- Name: pk_cwd_application_address; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.cwd_application_address
    ADD CONSTRAINT pk_cwd_application_address PRIMARY KEY (application_id, remote_address);


--
-- Name: pk_cwd_directory; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.cwd_directory
    ADD CONSTRAINT pk_cwd_directory PRIMARY KEY (id);


--
-- Name: pk_cwd_directory_attribute; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.cwd_directory_attribute
    ADD CONSTRAINT pk_cwd_directory_attribute PRIMARY KEY (directory_id, attribute_name);


--
-- Name: pk_cwd_directory_operation; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.cwd_directory_operation
    ADD CONSTRAINT pk_cwd_directory_operation PRIMARY KEY (directory_id, operation_type);


--
-- Name: pk_cwd_group; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.cwd_group
    ADD CONSTRAINT pk_cwd_group PRIMARY KEY (id);


--
-- Name: pk_cwd_group_attributes; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.cwd_group_attributes
    ADD CONSTRAINT pk_cwd_group_attributes PRIMARY KEY (id);


--
-- Name: pk_cwd_membership; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.cwd_membership
    ADD CONSTRAINT pk_cwd_membership PRIMARY KEY (id);


--
-- Name: pk_cwd_synchronisation_status; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.cwd_synchronisation_status
    ADD CONSTRAINT pk_cwd_synchronisation_status PRIMARY KEY (id);


--
-- Name: pk_cwd_synchronisation_token; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.cwd_synchronisation_token
    ADD CONSTRAINT pk_cwd_synchronisation_token PRIMARY KEY (directory_id);


--
-- Name: pk_cwd_user; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.cwd_user
    ADD CONSTRAINT pk_cwd_user PRIMARY KEY (id);


--
-- Name: pk_cwd_user_attributes; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.cwd_user_attributes
    ADD CONSTRAINT pk_cwd_user_attributes PRIMARY KEY (id);


--
-- Name: pk_deadletter; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.deadletter
    ADD CONSTRAINT pk_deadletter PRIMARY KEY (id);


--
-- Name: pk_draftworkflowscheme; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.draftworkflowscheme
    ADD CONSTRAINT pk_draftworkflowscheme PRIMARY KEY (id);


--
-- Name: pk_draftworkflowschemeentity; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.draftworkflowschemeentity
    ADD CONSTRAINT pk_draftworkflowschemeentity PRIMARY KEY (id);


--
-- Name: pk_entity_property; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.entity_property
    ADD CONSTRAINT pk_entity_property PRIMARY KEY (id);


--
-- Name: pk_entity_property_index_docum; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.entity_property_index_document
    ADD CONSTRAINT pk_entity_property_index_docum PRIMARY KEY (id);


--
-- Name: pk_entity_translation; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.entity_translation
    ADD CONSTRAINT pk_entity_translation PRIMARY KEY (id);


--
-- Name: pk_external_entities; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.external_entities
    ADD CONSTRAINT pk_external_entities PRIMARY KEY (id);


--
-- Name: pk_externalgadget; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.externalgadget
    ADD CONSTRAINT pk_externalgadget PRIMARY KEY (id);


--
-- Name: pk_favouriteassociations; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.favouriteassociations
    ADD CONSTRAINT pk_favouriteassociations PRIMARY KEY (id);


--
-- Name: pk_feature; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.feature
    ADD CONSTRAINT pk_feature PRIMARY KEY (id);


--
-- Name: pk_fieldconfigscheme; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.fieldconfigscheme
    ADD CONSTRAINT pk_fieldconfigscheme PRIMARY KEY (id);


--
-- Name: pk_fieldconfigschemeissuetype; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.fieldconfigschemeissuetype
    ADD CONSTRAINT pk_fieldconfigschemeissuetype PRIMARY KEY (id);


--
-- Name: pk_fieldconfiguration; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.fieldconfiguration
    ADD CONSTRAINT pk_fieldconfiguration PRIMARY KEY (id);


--
-- Name: pk_fieldlayout; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.fieldlayout
    ADD CONSTRAINT pk_fieldlayout PRIMARY KEY (id);


--
-- Name: pk_fieldlayoutitem; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.fieldlayoutitem
    ADD CONSTRAINT pk_fieldlayoutitem PRIMARY KEY (id);


--
-- Name: pk_fieldlayoutscheme; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.fieldlayoutscheme
    ADD CONSTRAINT pk_fieldlayoutscheme PRIMARY KEY (id);


--
-- Name: pk_fieldlayoutschemeassociatio; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.fieldlayoutschemeassociation
    ADD CONSTRAINT pk_fieldlayoutschemeassociatio PRIMARY KEY (id);


--
-- Name: pk_fieldlayoutschemeentity; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.fieldlayoutschemeentity
    ADD CONSTRAINT pk_fieldlayoutschemeentity PRIMARY KEY (id);


--
-- Name: pk_fieldscreen; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.fieldscreen
    ADD CONSTRAINT pk_fieldscreen PRIMARY KEY (id);


--
-- Name: pk_fieldscreenlayoutitem; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.fieldscreenlayoutitem
    ADD CONSTRAINT pk_fieldscreenlayoutitem PRIMARY KEY (id);


--
-- Name: pk_fieldscreenscheme; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.fieldscreenscheme
    ADD CONSTRAINT pk_fieldscreenscheme PRIMARY KEY (id);


--
-- Name: pk_fieldscreenschemeitem; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.fieldscreenschemeitem
    ADD CONSTRAINT pk_fieldscreenschemeitem PRIMARY KEY (id);


--
-- Name: pk_fieldscreentab; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.fieldscreentab
    ADD CONSTRAINT pk_fieldscreentab PRIMARY KEY (id);


--
-- Name: pk_fileattachment; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.fileattachment
    ADD CONSTRAINT pk_fileattachment PRIMARY KEY (id);


--
-- Name: pk_filtersubscription; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.filtersubscription
    ADD CONSTRAINT pk_filtersubscription PRIMARY KEY (id);


--
-- Name: pk_gadgetuserpreference; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.gadgetuserpreference
    ADD CONSTRAINT pk_gadgetuserpreference PRIMARY KEY (id);


--
-- Name: pk_genericconfiguration; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.genericconfiguration
    ADD CONSTRAINT pk_genericconfiguration PRIMARY KEY (id);


--
-- Name: pk_globalpermissionentry; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.globalpermissionentry
    ADD CONSTRAINT pk_globalpermissionentry PRIMARY KEY (id);


--
-- Name: pk_groupbase; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.groupbase
    ADD CONSTRAINT pk_groupbase PRIMARY KEY (id);


--
-- Name: pk_issue_field_option; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.issue_field_option
    ADD CONSTRAINT pk_issue_field_option PRIMARY KEY (id);


--
-- Name: pk_issue_field_option_scope; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.issue_field_option_scope
    ADD CONSTRAINT pk_issue_field_option_scope PRIMARY KEY (id);


--
-- Name: pk_issue_version; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.issue_version
    ADD CONSTRAINT pk_issue_version PRIMARY KEY (issue_id);


--
-- Name: pk_issuelink; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.issuelink
    ADD CONSTRAINT pk_issuelink PRIMARY KEY (id);


--
-- Name: pk_issuelinktype; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.issuelinktype
    ADD CONSTRAINT pk_issuelinktype PRIMARY KEY (id);


--
-- Name: pk_issuesecurityscheme; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.issuesecurityscheme
    ADD CONSTRAINT pk_issuesecurityscheme PRIMARY KEY (id);


--
-- Name: pk_issuestatus; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.issuestatus
    ADD CONSTRAINT pk_issuestatus PRIMARY KEY (id);


--
-- Name: pk_issuetype; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.issuetype
    ADD CONSTRAINT pk_issuetype PRIMARY KEY (id);


--
-- Name: pk_issuetypescreenscheme; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.issuetypescreenscheme
    ADD CONSTRAINT pk_issuetypescreenscheme PRIMARY KEY (id);


--
-- Name: pk_issuetypescreenschemeentity; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.issuetypescreenschemeentity
    ADD CONSTRAINT pk_issuetypescreenschemeentity PRIMARY KEY (id);


--
-- Name: pk_jiraaction; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.jiraaction
    ADD CONSTRAINT pk_jiraaction PRIMARY KEY (id);


--
-- Name: pk_jiradraftworkflows; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.jiradraftworkflows
    ADD CONSTRAINT pk_jiradraftworkflows PRIMARY KEY (id);


--
-- Name: pk_jiraeventtype; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.jiraeventtype
    ADD CONSTRAINT pk_jiraeventtype PRIMARY KEY (id);


--
-- Name: pk_jiraissue; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.jiraissue
    ADD CONSTRAINT pk_jiraissue PRIMARY KEY (id);


--
-- Name: pk_jiraperms; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.jiraperms
    ADD CONSTRAINT pk_jiraperms PRIMARY KEY (id);


--
-- Name: pk_jiraworkflows; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.jiraworkflows
    ADD CONSTRAINT pk_jiraworkflows PRIMARY KEY (id);


--
-- Name: pk_jiraworkflowstatuses; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.jiraworkflowstatuses
    ADD CONSTRAINT pk_jiraworkflowstatuses PRIMARY KEY (id);


--
-- Name: pk_jquartz_blob_triggers; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.jquartz_blob_triggers
    ADD CONSTRAINT pk_jquartz_blob_triggers PRIMARY KEY (trigger_name, trigger_group);


--
-- Name: pk_jquartz_calendars; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.jquartz_calendars
    ADD CONSTRAINT pk_jquartz_calendars PRIMARY KEY (calendar_name);


--
-- Name: pk_jquartz_cron_triggers; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.jquartz_cron_triggers
    ADD CONSTRAINT pk_jquartz_cron_triggers PRIMARY KEY (trigger_name, trigger_group);


--
-- Name: pk_jquartz_fired_triggers; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.jquartz_fired_triggers
    ADD CONSTRAINT pk_jquartz_fired_triggers PRIMARY KEY (entry_id);


--
-- Name: pk_jquartz_job_details; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.jquartz_job_details
    ADD CONSTRAINT pk_jquartz_job_details PRIMARY KEY (job_name, job_group);


--
-- Name: pk_jquartz_job_listeners; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.jquartz_job_listeners
    ADD CONSTRAINT pk_jquartz_job_listeners PRIMARY KEY (job_name, job_group, job_listener);


--
-- Name: pk_jquartz_locks; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.jquartz_locks
    ADD CONSTRAINT pk_jquartz_locks PRIMARY KEY (lock_name);


--
-- Name: pk_jquartz_paused_trigger_grps; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.jquartz_paused_trigger_grps
    ADD CONSTRAINT pk_jquartz_paused_trigger_grps PRIMARY KEY (trigger_group);


--
-- Name: pk_jquartz_scheduler_state; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.jquartz_scheduler_state
    ADD CONSTRAINT pk_jquartz_scheduler_state PRIMARY KEY (instance_name);


--
-- Name: pk_jquartz_simple_triggers; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.jquartz_simple_triggers
    ADD CONSTRAINT pk_jquartz_simple_triggers PRIMARY KEY (trigger_name, trigger_group);


--
-- Name: pk_jquartz_simprop_triggers; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.jquartz_simprop_triggers
    ADD CONSTRAINT pk_jquartz_simprop_triggers PRIMARY KEY (trigger_name, trigger_group);


--
-- Name: pk_jquartz_trigger_listeners; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.jquartz_trigger_listeners
    ADD CONSTRAINT pk_jquartz_trigger_listeners PRIMARY KEY (trigger_group, trigger_listener);


--
-- Name: pk_jquartz_triggers; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.jquartz_triggers
    ADD CONSTRAINT pk_jquartz_triggers PRIMARY KEY (trigger_name, trigger_group);


--
-- Name: pk_label; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.label
    ADD CONSTRAINT pk_label PRIMARY KEY (id);


--
-- Name: pk_licenserolesdefault; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.licenserolesdefault
    ADD CONSTRAINT pk_licenserolesdefault PRIMARY KEY (id);


--
-- Name: pk_licenserolesgroup; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.licenserolesgroup
    ADD CONSTRAINT pk_licenserolesgroup PRIMARY KEY (id);


--
-- Name: pk_listenerconfig; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.listenerconfig
    ADD CONSTRAINT pk_listenerconfig PRIMARY KEY (id);


--
-- Name: pk_mailserver; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.mailserver
    ADD CONSTRAINT pk_mailserver PRIMARY KEY (id);


--
-- Name: pk_managedconfigurationitem; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.managedconfigurationitem
    ADD CONSTRAINT pk_managedconfigurationitem PRIMARY KEY (id);


--
-- Name: pk_membershipbase; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.membershipbase
    ADD CONSTRAINT pk_membershipbase PRIMARY KEY (id);


--
-- Name: pk_moved_issue_key; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.moved_issue_key
    ADD CONSTRAINT pk_moved_issue_key PRIMARY KEY (id);


--
-- Name: pk_nodeassociation; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.nodeassociation
    ADD CONSTRAINT pk_nodeassociation PRIMARY KEY (source_node_id, source_node_entity, sink_node_id, sink_node_entity, association_type);


--
-- Name: pk_nodeindexcounter; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.nodeindexcounter
    ADD CONSTRAINT pk_nodeindexcounter PRIMARY KEY (id);


--
-- Name: pk_nomenclature_entries; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.nomenclature_entries
    ADD CONSTRAINT pk_nomenclature_entries PRIMARY KEY (id);


--
-- Name: pk_notification; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.notification
    ADD CONSTRAINT pk_notification PRIMARY KEY (id);


--
-- Name: pk_notificationinstance; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.notificationinstance
    ADD CONSTRAINT pk_notificationinstance PRIMARY KEY (id);


--
-- Name: pk_notificationscheme; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.notificationscheme
    ADD CONSTRAINT pk_notificationscheme PRIMARY KEY (id);


--
-- Name: pk_oauthconsumer; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.oauthconsumer
    ADD CONSTRAINT pk_oauthconsumer PRIMARY KEY (id);


--
-- Name: pk_oauthconsumertoken; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.oauthconsumertoken
    ADD CONSTRAINT pk_oauthconsumertoken PRIMARY KEY (id);


--
-- Name: pk_oauthspconsumer; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.oauthspconsumer
    ADD CONSTRAINT pk_oauthspconsumer PRIMARY KEY (id);


--
-- Name: pk_oauthsptoken; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.oauthsptoken
    ADD CONSTRAINT pk_oauthsptoken PRIMARY KEY (id);


--
-- Name: pk_optionconfiguration; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.optionconfiguration
    ADD CONSTRAINT pk_optionconfiguration PRIMARY KEY (id);


--
-- Name: pk_os_currentstep; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.os_currentstep
    ADD CONSTRAINT pk_os_currentstep PRIMARY KEY (id);


--
-- Name: pk_os_currentstep_prev; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.os_currentstep_prev
    ADD CONSTRAINT pk_os_currentstep_prev PRIMARY KEY (id, previous_id);


--
-- Name: pk_os_historystep; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.os_historystep
    ADD CONSTRAINT pk_os_historystep PRIMARY KEY (id);


--
-- Name: pk_os_historystep_prev; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.os_historystep_prev
    ADD CONSTRAINT pk_os_historystep_prev PRIMARY KEY (id, previous_id);


--
-- Name: pk_os_wfentry; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.os_wfentry
    ADD CONSTRAINT pk_os_wfentry PRIMARY KEY (id);


--
-- Name: pk_permissionscheme; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.permissionscheme
    ADD CONSTRAINT pk_permissionscheme PRIMARY KEY (id);


--
-- Name: pk_permissionschemeattribute; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.permissionschemeattribute
    ADD CONSTRAINT pk_permissionschemeattribute PRIMARY KEY (id);


--
-- Name: pk_pluginstate; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.pluginstate
    ADD CONSTRAINT pk_pluginstate PRIMARY KEY (pluginkey);


--
-- Name: pk_pluginversion; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.pluginversion
    ADD CONSTRAINT pk_pluginversion PRIMARY KEY (id);


--
-- Name: pk_portalpage; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.portalpage
    ADD CONSTRAINT pk_portalpage PRIMARY KEY (id);


--
-- Name: pk_portletconfiguration; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.portletconfiguration
    ADD CONSTRAINT pk_portletconfiguration PRIMARY KEY (id);


--
-- Name: pk_priority; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.priority
    ADD CONSTRAINT pk_priority PRIMARY KEY (id);


--
-- Name: pk_productlicense; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.productlicense
    ADD CONSTRAINT pk_productlicense PRIMARY KEY (id);


--
-- Name: pk_project; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT pk_project PRIMARY KEY (id);


--
-- Name: pk_project_key; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.project_key
    ADD CONSTRAINT pk_project_key PRIMARY KEY (id);


--
-- Name: pk_projectcategory; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.projectcategory
    ADD CONSTRAINT pk_projectcategory PRIMARY KEY (id);


--
-- Name: pk_projectchangedtime; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.projectchangedtime
    ADD CONSTRAINT pk_projectchangedtime PRIMARY KEY (project_id);


--
-- Name: pk_projectrole; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.projectrole
    ADD CONSTRAINT pk_projectrole PRIMARY KEY (id);


--
-- Name: pk_projectroleactor; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.projectroleactor
    ADD CONSTRAINT pk_projectroleactor PRIMARY KEY (id);


--
-- Name: pk_projectversion; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.projectversion
    ADD CONSTRAINT pk_projectversion PRIMARY KEY (id);


--
-- Name: pk_propertydata; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.propertydata
    ADD CONSTRAINT pk_propertydata PRIMARY KEY (id);


--
-- Name: pk_propertydate; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.propertydate
    ADD CONSTRAINT pk_propertydate PRIMARY KEY (id);


--
-- Name: pk_propertydecimal; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.propertydecimal
    ADD CONSTRAINT pk_propertydecimal PRIMARY KEY (id);


--
-- Name: pk_propertyentry; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.propertyentry
    ADD CONSTRAINT pk_propertyentry PRIMARY KEY (id);


--
-- Name: pk_propertynumber; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.propertynumber
    ADD CONSTRAINT pk_propertynumber PRIMARY KEY (id);


--
-- Name: pk_propertystring; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.propertystring
    ADD CONSTRAINT pk_propertystring PRIMARY KEY (id);


--
-- Name: pk_propertytext; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.propertytext
    ADD CONSTRAINT pk_propertytext PRIMARY KEY (id);


--
-- Name: pk_qrtz_calendars; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.qrtz_calendars
    ADD CONSTRAINT pk_qrtz_calendars PRIMARY KEY (calendar_name);


--
-- Name: pk_qrtz_cron_triggers; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.qrtz_cron_triggers
    ADD CONSTRAINT pk_qrtz_cron_triggers PRIMARY KEY (id);


--
-- Name: pk_qrtz_fired_triggers; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.qrtz_fired_triggers
    ADD CONSTRAINT pk_qrtz_fired_triggers PRIMARY KEY (entry_id);


--
-- Name: pk_qrtz_job_details; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.qrtz_job_details
    ADD CONSTRAINT pk_qrtz_job_details PRIMARY KEY (id);


--
-- Name: pk_qrtz_job_listeners; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.qrtz_job_listeners
    ADD CONSTRAINT pk_qrtz_job_listeners PRIMARY KEY (id);


--
-- Name: pk_qrtz_simple_triggers; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.qrtz_simple_triggers
    ADD CONSTRAINT pk_qrtz_simple_triggers PRIMARY KEY (id);


--
-- Name: pk_qrtz_trigger_listeners; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.qrtz_trigger_listeners
    ADD CONSTRAINT pk_qrtz_trigger_listeners PRIMARY KEY (id);


--
-- Name: pk_qrtz_triggers; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.qrtz_triggers
    ADD CONSTRAINT pk_qrtz_triggers PRIMARY KEY (id);


--
-- Name: pk_reindex_component; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.reindex_component
    ADD CONSTRAINT pk_reindex_component PRIMARY KEY (id);


--
-- Name: pk_reindex_request; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.reindex_request
    ADD CONSTRAINT pk_reindex_request PRIMARY KEY (id);


--
-- Name: pk_remembermetoken; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.remembermetoken
    ADD CONSTRAINT pk_remembermetoken PRIMARY KEY (id);


--
-- Name: pk_remotelink; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.remotelink
    ADD CONSTRAINT pk_remotelink PRIMARY KEY (id);


--
-- Name: pk_replicatedindexoperation; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.replicatedindexoperation
    ADD CONSTRAINT pk_replicatedindexoperation PRIMARY KEY (id);


--
-- Name: pk_resolution; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.resolution
    ADD CONSTRAINT pk_resolution PRIMARY KEY (id);


--
-- Name: pk_rundetails; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.rundetails
    ADD CONSTRAINT pk_rundetails PRIMARY KEY (id);


--
-- Name: pk_schemeissuesecurities; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.schemeissuesecurities
    ADD CONSTRAINT pk_schemeissuesecurities PRIMARY KEY (id);


--
-- Name: pk_schemeissuesecuritylevels; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.schemeissuesecuritylevels
    ADD CONSTRAINT pk_schemeissuesecuritylevels PRIMARY KEY (id);


--
-- Name: pk_schemepermissions; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.schemepermissions
    ADD CONSTRAINT pk_schemepermissions PRIMARY KEY (id);


--
-- Name: pk_searchrequest; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.searchrequest
    ADD CONSTRAINT pk_searchrequest PRIMARY KEY (id);


--
-- Name: pk_securityproperty; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.securityproperty
    ADD CONSTRAINT pk_securityproperty PRIMARY KEY (property_key);


--
-- Name: pk_sequence_value_item; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.sequence_value_item
    ADD CONSTRAINT pk_sequence_value_item PRIMARY KEY (seq_name);


--
-- Name: pk_serviceconfig; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.serviceconfig
    ADD CONSTRAINT pk_serviceconfig PRIMARY KEY (id);


--
-- Name: pk_sharepermissions; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.sharepermissions
    ADD CONSTRAINT pk_sharepermissions PRIMARY KEY (id);


--
-- Name: pk_tempattachmentsmonitor; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.tempattachmentsmonitor
    ADD CONSTRAINT pk_tempattachmentsmonitor PRIMARY KEY (temporary_attachment_id);


--
-- Name: pk_trackback_ping; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.trackback_ping
    ADD CONSTRAINT pk_trackback_ping PRIMARY KEY (id);


--
-- Name: pk_trustedapp; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.trustedapp
    ADD CONSTRAINT pk_trustedapp PRIMARY KEY (id);


--
-- Name: pk_upgradehistory; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.upgradehistory
    ADD CONSTRAINT pk_upgradehistory PRIMARY KEY (upgradeclass);


--
-- Name: pk_upgradetaskhistory; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.upgradetaskhistory
    ADD CONSTRAINT pk_upgradetaskhistory PRIMARY KEY (id);


--
-- Name: pk_upgradetaskhistoryauditlog; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.upgradetaskhistoryauditlog
    ADD CONSTRAINT pk_upgradetaskhistoryauditlog PRIMARY KEY (id);


--
-- Name: pk_upgradeversionhistory; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.upgradeversionhistory
    ADD CONSTRAINT pk_upgradeversionhistory PRIMARY KEY (targetbuild);


--
-- Name: pk_userassociation; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.userassociation
    ADD CONSTRAINT pk_userassociation PRIMARY KEY (source_name, sink_node_id, sink_node_entity, association_type);


--
-- Name: pk_userbase; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.userbase
    ADD CONSTRAINT pk_userbase PRIMARY KEY (id);


--
-- Name: pk_userhistoryitem; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.userhistoryitem
    ADD CONSTRAINT pk_userhistoryitem PRIMARY KEY (id);


--
-- Name: pk_userpickerfilter; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.userpickerfilter
    ADD CONSTRAINT pk_userpickerfilter PRIMARY KEY (id);


--
-- Name: pk_userpickerfiltergroup; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.userpickerfiltergroup
    ADD CONSTRAINT pk_userpickerfiltergroup PRIMARY KEY (id);


--
-- Name: pk_userpickerfilterrole; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.userpickerfilterrole
    ADD CONSTRAINT pk_userpickerfilterrole PRIMARY KEY (id);


--
-- Name: pk_versioncontrol; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.versioncontrol
    ADD CONSTRAINT pk_versioncontrol PRIMARY KEY (id);


--
-- Name: pk_votehistory; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.votehistory
    ADD CONSTRAINT pk_votehistory PRIMARY KEY (id);


--
-- Name: pk_workflowscheme; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.workflowscheme
    ADD CONSTRAINT pk_workflowscheme PRIMARY KEY (id);


--
-- Name: pk_workflowschemeentity; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.workflowschemeentity
    ADD CONSTRAINT pk_workflowschemeentity PRIMARY KEY (id);


--
-- Name: pk_worklog; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.worklog
    ADD CONSTRAINT pk_worklog PRIMARY KEY (id);


--
-- Name: pk_worklog_version; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public.worklog_version
    ADD CONSTRAINT pk_worklog_version PRIMARY KEY (worklog_id);


--
-- Name: u_ao_4789dd_disable1943052426; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_4789DD_DISABLED_CHECKS"
    ADD CONSTRAINT u_ao_4789dd_disable1943052426 UNIQUE ("HEALTH_CHECK_KEY");


--
-- Name: u_ao_4789dd_health_432053140; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_4789DD_HEALTH_CHECK_WATCHER"
    ADD CONSTRAINT u_ao_4789dd_health_432053140 UNIQUE ("USER_KEY");


--
-- Name: u_ao_4789dd_shortened_key_key; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_4789DD_SHORTENED_KEY"
    ADD CONSTRAINT u_ao_4789dd_shortened_key_key UNIQUE ("KEY");


--
-- Name: u_ao_4789dd_task_mo1827547914; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_4789DD_TASK_MONITOR"
    ADD CONSTRAINT u_ao_4789dd_task_mo1827547914 UNIQUE ("TASK_ID");


--
-- Name: u_ao_589059_counters_key; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_COUNTERS"
    ADD CONSTRAINT u_ao_589059_counters_key UNIQUE ("KEY");


--
-- Name: u_ao_589059_rule_label_name; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_LABEL"
    ADD CONSTRAINT u_ao_589059_rule_label_name UNIQUE ("NAME");


--
-- Name: u_ao_589059_rule_secret_key; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_SECRET"
    ADD CONSTRAINT u_ao_589059_rule_secret_key UNIQUE ("KEY");


--
-- Name: u_ao_589059_rule_st1765358947; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_STATE_LATEST"
    ADD CONSTRAINT u_ao_589059_rule_st1765358947 UNIQUE ("RULE_ID");


--
-- Name: u_ao_589059_rule_stat_audit_id; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_STAT"
    ADD CONSTRAINT u_ao_589059_rule_stat_audit_id UNIQUE ("AUDIT_ID");


--
-- Name: u_ao_6ff49d_email_t1213608830; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_EMAIL_TRST_DMN"
    ADD CONSTRAINT u_ao_6ff49d_email_t1213608830 UNIQUE ("DOMAIN_NAME");


--
-- Name: u_ao_6ff49d_plan_en548125492; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_PLAN_ENTITY"
    ADD CONSTRAINT u_ao_6ff49d_plan_en548125492 UNIQUE ("PLAN_NAME");


--
-- Name: u_ao_6ff49d_virtual1687929482; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_VIRTUAL_ATTACHMENT"
    ADD CONSTRAINT u_ao_6ff49d_virtual1687929482 UNIQUE ("VIRTUAL_ATTACHMENT_ID");


--
-- Name: u_ao_723324_client_config_name; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_723324_CLIENT_CONFIG"
    ADD CONSTRAINT u_ao_723324_client_config_name UNIQUE ("NAME");


--
-- Name: u_ao_82b313_ability1384204123; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_82B313_ABILITY"
    ADD CONSTRAINT u_ao_82b313_ability1384204123 UNIQUE ("COMBINED_KEY");


--
-- Name: u_ao_82b313_init_key; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_82B313_INIT"
    ADD CONSTRAINT u_ao_82b313_init_key UNIQUE ("KEY");


--
-- Name: u_ao_8752f1_data_pi710125765; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_8752F1_DATA_PIPELINE_CONFIG"
    ADD CONSTRAINT u_ao_8752f1_data_pi710125765 UNIQUE ("KEY");


--
-- Name: u_ao_a415df_aosolut752937716; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOSOLUTION_STORE"
    ADD CONSTRAINT u_ao_a415df_aosolut752937716 UNIQUE ("AOPLAN_ID");


--
-- Name: u_ao_d9132d_dep_iss229485530; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_DEP_ISSUE_LINK_TYPES"
    ADD CONSTRAINT u_ao_d9132d_dep_iss229485530 UNIQUE ("LINK_ID");


--
-- Name: u_ao_d9132d_genericreport_hash; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_GENERICREPORT"
    ADD CONSTRAINT u_ao_d9132d_genericreport_hash UNIQUE ("HASH");


--
-- Name: u_ao_d9132d_init_key; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_INIT"
    ADD CONSTRAINT u_ao_d9132d_init_key UNIQUE ("KEY");


--
-- Name: u_ao_d9132d_plan_cu1349022185; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PLAN_CUSTOM_FIELD"
    ADD CONSTRAINT u_ao_d9132d_plan_cu1349022185 UNIQUE ("C_KEY");


--
-- Name: u_ao_d9132d_plan_us1786388454; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PLAN_USER_PROPERTY"
    ADD CONSTRAINT u_ao_d9132d_plan_us1786388454 UNIQUE ("C_KEY");


--
-- Name: u_ao_d9132d_planned558105112; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PLANNED_CAPACITY"
    ADD CONSTRAINT u_ao_d9132d_planned558105112 UNIQUE ("C_KEY");


--
-- Name: u_ao_d9132d_planskill_c_key; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PLANSKILL"
    ADD CONSTRAINT u_ao_d9132d_planskill_c_key UNIQUE ("C_KEY");


--
-- Name: u_ao_d9132d_plantheme_c_key; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PLANTHEME"
    ADD CONSTRAINT u_ao_d9132d_plantheme_c_key UNIQUE ("C_KEY");


--
-- Name: u_ao_d9132d_planversion_c_key; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PLANVERSION"
    ADD CONSTRAINT u_ao_d9132d_planversion_c_key UNIQUE ("C_KEY");


--
-- Name: u_ao_d9132d_program1281657978; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PROGRAM_CUSTOM_FIELD"
    ADD CONSTRAINT u_ao_d9132d_program1281657978 UNIQUE ("C_KEY");


--
-- Name: u_ao_d9132d_rank_item_unique; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_RANK_ITEM"
    ADD CONSTRAINT u_ao_d9132d_rank_item_unique UNIQUE ("UNIQUE");


--
-- Name: u_ao_d9132d_saved_view2_c_key; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SAVED_VIEW2"
    ADD CONSTRAINT u_ao_d9132d_saved_view2_c_key UNIQUE ("C_KEY");


--
-- Name: u_ao_d9132d_scen_cu98345031; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCEN_CUSTOM_FIELD"
    ADD CONSTRAINT u_ao_d9132d_scen_cu98345031 UNIQUE ("C_KEY");


--
-- Name: u_ao_d9132d_scenari1025062113; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_TEAM"
    ADD CONSTRAINT u_ao_d9132d_scenari1025062113 UNIQUE ("C_KEY");


--
-- Name: u_ao_d9132d_scenari106138549; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_SKILL"
    ADD CONSTRAINT u_ao_d9132d_scenari106138549 UNIQUE ("C_KEY");


--
-- Name: u_ao_d9132d_scenari1142118530; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_ISSUES"
    ADD CONSTRAINT u_ao_d9132d_scenari1142118530 UNIQUE ("C_KEY");


--
-- Name: u_ao_d9132d_scenari1228886055; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_PERSON"
    ADD CONSTRAINT u_ao_d9132d_scenari1228886055 UNIQUE ("C_KEY");


--
-- Name: u_ao_d9132d_scenari1370120444; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_VERSION"
    ADD CONSTRAINT u_ao_d9132d_scenari1370120444 UNIQUE ("C_KEY");


--
-- Name: u_ao_d9132d_scenari1516406944; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_ABILITY"
    ADD CONSTRAINT u_ao_d9132d_scenari1516406944 UNIQUE ("U_AB");


--
-- Name: u_ao_d9132d_scenari1658830125; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_THEME"
    ADD CONSTRAINT u_ao_d9132d_scenari1658830125 UNIQUE ("C_KEY");


--
-- Name: u_ao_d9132d_scenari1732287022; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_RESOURCE"
    ADD CONSTRAINT u_ao_d9132d_scenari1732287022 UNIQUE ("C_KEY");


--
-- Name: u_ao_d9132d_scenari1942697760; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_PLAN_CAP"
    ADD CONSTRAINT u_ao_d9132d_scenari1942697760 UNIQUE ("C_KEY");


--
-- Name: u_ao_d9132d_scenari2129424734; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_STAGE"
    ADD CONSTRAINT u_ao_d9132d_scenari2129424734 UNIQUE ("C_KEY");


--
-- Name: u_ao_d9132d_scenari219411406; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_ABILITY"
    ADD CONSTRAINT u_ao_d9132d_scenari219411406 UNIQUE ("C_KEY");


--
-- Name: u_ao_d9132d_scenari577680729; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_CHANGES"
    ADD CONSTRAINT u_ao_d9132d_scenari577680729 UNIQUE ("C_KEY");


--
-- Name: u_ao_d9132d_scenari887167849; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_ISSUE_LINKS"
    ADD CONSTRAINT u_ao_d9132d_scenari887167849 UNIQUE ("C_KEY");


--
-- Name: u_ao_d9132d_scenari913320196; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_XPVERSION"
    ADD CONSTRAINT u_ao_d9132d_scenari913320196 UNIQUE ("C_KEY");


--
-- Name: u_ao_d9132d_shared_report_hash; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SHARED_REPORT"
    ADD CONSTRAINT u_ao_d9132d_shared_report_hash UNIQUE ("HASH");


--
-- Name: u_ao_d9132d_solutio277170766; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SOLUTION"
    ADD CONSTRAINT u_ao_d9132d_solutio277170766 UNIQUE ("UNIQUE_GUARD");


--
-- Name: u_ao_d9132d_version472426003; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_VERSION_ENRICHMENT"
    ADD CONSTRAINT u_ao_d9132d_version472426003 UNIQUE ("ENV_ID");


--
-- Name: u_ao_ed669c_idp_con1454004950; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_ED669C_IDP_CONFIG"
    ADD CONSTRAINT u_ao_ed669c_idp_con1454004950 UNIQUE ("BUTTON_TEXT");


--
-- Name: u_ao_ed669c_idp_config_issuer; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_ED669C_IDP_CONFIG"
    ADD CONSTRAINT u_ao_ed669c_idp_config_issuer UNIQUE ("ISSUER");


--
-- Name: u_ao_ed669c_idp_config_name; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_ED669C_IDP_CONFIG"
    ADD CONSTRAINT u_ao_ed669c_idp_config_name UNIQUE ("NAME");


--
-- Name: u_ao_ed669c_seen_as1055534769; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_ED669C_SEEN_ASSERTIONS"
    ADD CONSTRAINT u_ao_ed669c_seen_as1055534769 UNIQUE ("ASSERTION_ID");


--
-- Name: u_ao_fe1bc5_client_1625323162; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_FE1BC5_CLIENT"
    ADD CONSTRAINT u_ao_fe1bc5_client_1625323162 UNIQUE ("CLIENT_SECRET");


--
-- Name: u_ao_fe1bc5_client_client_id; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_FE1BC5_CLIENT"
    ADD CONSTRAINT u_ao_fe1bc5_client_client_id UNIQUE ("CLIENT_ID");


--
-- Name: u_ao_fe1bc5_client_name; Type: CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_FE1BC5_CLIENT"
    ADD CONSTRAINT u_ao_fe1bc5_client_name UNIQUE ("NAME");


--
-- Name: action_author_created; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX action_author_created ON public.jiraaction USING btree (author, created);


--
-- Name: action_issue; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX action_issue ON public.jiraaction USING btree (issueid);


--
-- Name: attach_issue; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX attach_issue ON public.fileattachment USING btree (issueid);


--
-- Name: avatar_filename_index; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX avatar_filename_index ON public.avatar USING btree (filename, avatartype, systemavatar);


--
-- Name: avatar_index; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX avatar_index ON public.avatar USING btree (avatartype, owner);


--
-- Name: cf_cfoption; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX cf_cfoption ON public.customfieldoption USING btree (customfield);


--
-- Name: cf_userpickerfiltergroup; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX cf_userpickerfiltergroup ON public.userpickerfiltergroup USING btree (userpickerfilter);


--
-- Name: cf_userpickerfilterrole; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX cf_userpickerfilterrole ON public.userpickerfilterrole USING btree (userpickerfilter);


--
-- Name: cfvalue_issue; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX cfvalue_issue ON public.customfieldvalue USING btree (issue, customfield);


--
-- Name: chggroup_author_created; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX chggroup_author_created ON public.changegroup USING btree (author, created);


--
-- Name: chggroup_issue_id; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX chggroup_issue_id ON public.changegroup USING btree (issueid, id);


--
-- Name: chgitem_group_field; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX chgitem_group_field ON public.changeitem USING btree (groupid, field);


--
-- Name: cl_searchrequest; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX cl_searchrequest ON public.columnlayout USING btree (searchrequest);


--
-- Name: cl_username; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX cl_username ON public.columnlayout USING btree (username);


--
-- Name: cluster_lock_name_idx; Type: INDEX; Schema: public; Owner: jira
--

CREATE UNIQUE INDEX cluster_lock_name_idx ON public.clusterlockstatus USING btree (lock_name);


--
-- Name: clusteredjob_jobid_idx; Type: INDEX; Schema: public; Owner: jira
--

CREATE UNIQUE INDEX clusteredjob_jobid_idx ON public.clusteredjob USING btree (job_id);


--
-- Name: clusteredjob_jrk_idx; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX clusteredjob_jrk_idx ON public.clusteredjob USING btree (job_runner_key);


--
-- Name: clusteredjob_nextrun_idx; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX clusteredjob_nextrun_idx ON public.clusteredjob USING btree (next_run);


--
-- Name: comment_pin_comment_id; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX comment_pin_comment_id ON public.comment_pin USING btree (comment_id);


--
-- Name: comment_pin_issue_id; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX comment_pin_issue_id ON public.comment_pin USING btree (issue_id);


--
-- Name: comment_reaction_comment_id; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX comment_reaction_comment_id ON public.comment_reaction USING btree (comment_id);


--
-- Name: confcontext; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX confcontext ON public.configurationcontext USING btree (projectcategory, project, customfield);


--
-- Name: confcontextfieldconfigscheme; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX confcontextfieldconfigscheme ON public.configurationcontext USING btree (fieldconfigscheme);


--
-- Name: confcontextkey; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX confcontextkey ON public.configurationcontext USING btree (customfield);


--
-- Name: confcontextprojectkey; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX confcontextprojectkey ON public.configurationcontext USING btree (project, customfield);


--
-- Name: cv_deleted_update_time_idx; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX cv_deleted_update_time_idx ON public.comment_version USING btree (deleted, update_time);


--
-- Name: cv_parent_id; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX cv_parent_id ON public.comment_version USING btree (parent_issue_id);


--
-- Name: cv_update_time; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX cv_update_time ON public.comment_version USING btree (update_time);


--
-- Name: deadletter_lastseen; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX deadletter_lastseen ON public.deadletter USING btree (last_seen);


--
-- Name: deadletter_msg_server_folder; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX deadletter_msg_server_folder ON public.deadletter USING btree (message_id, mail_server_id, folder_name);


--
-- Name: draft_workflow_scheme; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX draft_workflow_scheme ON public.draftworkflowschemeentity USING btree (scheme);


--
-- Name: draft_workflow_scheme_parent; Type: INDEX; Schema: public; Owner: jira
--

CREATE UNIQUE INDEX draft_workflow_scheme_parent ON public.draftworkflowscheme USING btree (workflow_scheme_id);


--
-- Name: entityproperty_id_name_key; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX entityproperty_id_name_key ON public.entity_property USING btree (entity_id, entity_name, property_key);


--
-- Name: entityproperty_key_name; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX entityproperty_key_name ON public.entity_property USING btree (property_key, entity_name);


--
-- Name: entitytranslation_locale; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX entitytranslation_locale ON public.entity_translation USING btree (locale);


--
-- Name: entpropindexdoc_module; Type: INDEX; Schema: public; Owner: jira
--

CREATE UNIQUE INDEX entpropindexdoc_module ON public.entity_property_index_document USING btree (plugin_key, module_key);


--
-- Name: ext_entity_name; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX ext_entity_name ON public.external_entities USING btree (name);


--
-- Name: favourite_index; Type: INDEX; Schema: public; Owner: jira
--

CREATE UNIQUE INDEX favourite_index ON public.favouriteassociations USING btree (username, entitytype, entityid);


--
-- Name: fc_fieldid; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX fc_fieldid ON public.fieldconfiguration USING btree (fieldid);


--
-- Name: fcs_fieldid; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX fcs_fieldid ON public.fieldconfigscheme USING btree (fieldid);


--
-- Name: fcs_issuetype; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX fcs_issuetype ON public.fieldconfigschemeissuetype USING btree (issuetype);


--
-- Name: fcs_scheme; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX fcs_scheme ON public.fieldconfigschemeissuetype USING btree (fieldconfigscheme);


--
-- Name: feature_id_userkey; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX feature_id_userkey ON public.feature USING btree (id, user_key);


--
-- Name: fieldid_fieldconf; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX fieldid_fieldconf ON public.optionconfiguration USING btree (fieldid, fieldconfig);


--
-- Name: fieldid_optionid; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX fieldid_optionid ON public.optionconfiguration USING btree (fieldid, optionid);


--
-- Name: fieldlayout_layout; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX fieldlayout_layout ON public.fieldlayoutschemeentity USING btree (fieldlayout);


--
-- Name: fieldlayout_scheme; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX fieldlayout_scheme ON public.fieldlayoutschemeentity USING btree (scheme);


--
-- Name: fieldscitem_tab; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX fieldscitem_tab ON public.fieldscreenlayoutitem USING btree (fieldscreentab);


--
-- Name: fieldscreen_field; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX fieldscreen_field ON public.fieldscreenlayoutitem USING btree (fieldidentifier);


--
-- Name: fieldscreen_scheme; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX fieldscreen_scheme ON public.issuetypescreenschemeentity USING btree (fieldscreenscheme);


--
-- Name: fieldscreen_tab; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX fieldscreen_tab ON public.fieldscreentab USING btree (fieldscreen);


--
-- Name: fl_scheme_assoc; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX fl_scheme_assoc ON public.fieldlayoutschemeassociation USING btree (project, issuetype);


--
-- Name: historystep_entryid; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX historystep_entryid ON public.os_historystep USING btree (entry_id);


--
-- Name: idx_all_project_ids; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_all_project_ids ON public.project_key USING btree (project_id);


--
-- Name: idx_all_project_keys; Type: INDEX; Schema: public; Owner: jira
--

CREATE UNIQUE INDEX idx_all_project_keys ON public.project_key USING btree (project_key);


--
-- Name: idx_audit_item_log_id2; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_audit_item_log_id2 ON public.audit_item USING btree (log_id);


--
-- Name: idx_audit_log_created; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_audit_log_created ON public.audit_log USING btree (created);


--
-- Name: idx_board_board_ids; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_board_board_ids ON public.boardproject USING btree (board_id);


--
-- Name: idx_board_project_ids; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_board_project_ids ON public.boardproject USING btree (project_id);


--
-- Name: idx_changed_value_log_id; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_changed_value_log_id ON public.audit_changed_value USING btree (log_id);


--
-- Name: idx_cli_fieldidentifier; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_cli_fieldidentifier ON public.columnlayoutitem USING btree (fieldidentifier);


--
-- Name: idx_component_name; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_component_name ON public.component USING btree (cname);


--
-- Name: idx_component_project; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_component_project ON public.component USING btree (project);


--
-- Name: idx_directory_active; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_directory_active ON public.cwd_directory USING btree (active);


--
-- Name: idx_directory_impl; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_directory_impl ON public.cwd_directory USING btree (lower_impl_class);


--
-- Name: idx_directory_type; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_directory_type ON public.cwd_directory USING btree (directory_type);


--
-- Name: idx_display_name; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_display_name ON public.cwd_user USING btree (lower_display_name);


--
-- Name: idx_email_address; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_email_address ON public.cwd_user USING btree (lower_email_address);


--
-- Name: idx_first_name; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_first_name ON public.cwd_user USING btree (lower_first_name);


--
-- Name: idx_fli_fieldidentifier; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_fli_fieldidentifier ON public.fieldlayoutitem USING btree (fieldidentifier);


--
-- Name: idx_fli_fieldlayout; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_fli_fieldlayout ON public.fieldlayoutitem USING btree (fieldlayout);


--
-- Name: idx_group_active; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_group_active ON public.cwd_group USING btree (lower_group_name, active);


--
-- Name: idx_group_attr_dir_name_lval; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_group_attr_dir_name_lval ON public.cwd_group_attributes USING btree (directory_id, attribute_name, lower_attribute_value);


--
-- Name: idx_group_dir_id; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_group_dir_id ON public.cwd_group USING btree (directory_id);


--
-- Name: idx_last_name; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_last_name ON public.cwd_user USING btree (lower_last_name);


--
-- Name: idx_mem_dir_child; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_mem_dir_child ON public.cwd_membership USING btree (lower_child_name, membership_type, directory_id);


--
-- Name: idx_mem_dir_parent; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_mem_dir_parent ON public.cwd_membership USING btree (lower_parent_name, membership_type, directory_id);


--
-- Name: idx_mem_type_child_name; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_mem_type_child_name ON public.cwd_membership USING btree (membership_type, lower_parent_name, lower_child_name);


--
-- Name: idx_old_issue_key; Type: INDEX; Schema: public; Owner: jira
--

CREATE UNIQUE INDEX idx_old_issue_key ON public.moved_issue_key USING btree (old_issue_key);


--
-- Name: idx_parent_name; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_parent_name ON public.jiraworkflowstatuses USING btree (parentname);


--
-- Name: idx_project_category_name; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_project_category_name ON public.projectcategory USING btree (cname);


--
-- Name: idx_project_key; Type: INDEX; Schema: public; Owner: jira
--

CREATE UNIQUE INDEX idx_project_key ON public.project USING btree (pkey);


--
-- Name: idx_qrtz_ft_inst_job_req_rcvry; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_qrtz_ft_inst_job_req_rcvry ON public.jquartz_fired_triggers USING btree (sched_name, instance_name, requests_recovery);


--
-- Name: idx_qrtz_ft_j_g; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_qrtz_ft_j_g ON public.jquartz_fired_triggers USING btree (sched_name, job_name, job_group);


--
-- Name: idx_qrtz_ft_jg; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_qrtz_ft_jg ON public.jquartz_fired_triggers USING btree (sched_name, job_group);


--
-- Name: idx_qrtz_ft_t_g; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_qrtz_ft_t_g ON public.jquartz_fired_triggers USING btree (sched_name, trigger_name, trigger_group);


--
-- Name: idx_qrtz_ft_tg; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_qrtz_ft_tg ON public.jquartz_fired_triggers USING btree (sched_name, trigger_group);


--
-- Name: idx_qrtz_ft_trig_inst_name; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_qrtz_ft_trig_inst_name ON public.jquartz_fired_triggers USING btree (sched_name, instance_name);


--
-- Name: idx_qrtz_j_g; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_qrtz_j_g ON public.jquartz_triggers USING btree (sched_name, trigger_group);


--
-- Name: idx_qrtz_j_grp; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_qrtz_j_grp ON public.jquartz_job_details USING btree (sched_name, job_group);


--
-- Name: idx_qrtz_j_req_recovery; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_qrtz_j_req_recovery ON public.jquartz_job_details USING btree (sched_name, requests_recovery);


--
-- Name: idx_qrtz_j_state; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_qrtz_j_state ON public.jquartz_triggers USING btree (sched_name, trigger_state);


--
-- Name: idx_qrtz_t_c; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_qrtz_t_c ON public.jquartz_triggers USING btree (sched_name, calendar_name);


--
-- Name: idx_qrtz_t_j; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_qrtz_t_j ON public.jquartz_triggers USING btree (sched_name, job_name, job_group);


--
-- Name: idx_qrtz_t_jg; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_qrtz_t_jg ON public.jquartz_triggers USING btree (sched_name, job_group);


--
-- Name: idx_qrtz_t_n_g_state; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_qrtz_t_n_g_state ON public.jquartz_triggers USING btree (sched_name, trigger_group, trigger_state);


--
-- Name: idx_qrtz_t_n_state; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_qrtz_t_n_state ON public.jquartz_triggers USING btree (sched_name, trigger_name, trigger_group, trigger_state);


--
-- Name: idx_qrtz_t_next_fire_time; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_qrtz_t_next_fire_time ON public.jquartz_triggers USING btree (sched_name, next_fire_time);


--
-- Name: idx_qrtz_t_nft_misfire; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_qrtz_t_nft_misfire ON public.jquartz_triggers USING btree (sched_name, misfire_instr, next_fire_time);


--
-- Name: idx_qrtz_t_nft_st; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_qrtz_t_nft_st ON public.jquartz_triggers USING btree (sched_name, trigger_state, next_fire_time);


--
-- Name: idx_qrtz_t_nft_st_misfire; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_qrtz_t_nft_st_misfire ON public.jquartz_triggers USING btree (sched_name, misfire_instr, next_fire_time, trigger_state);


--
-- Name: idx_qrtz_t_nft_st_misfire_grp; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_qrtz_t_nft_st_misfire_grp ON public.jquartz_triggers USING btree (sched_name, misfire_instr, next_fire_time, trigger_group, trigger_state);


--
-- Name: idx_reindex_component_req_id; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_reindex_component_req_id ON public.reindex_component USING btree (request_id);


--
-- Name: idx_sync_status_dir; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_sync_status_dir ON public.cwd_synchronisation_status USING btree (directory_id);


--
-- Name: idx_sync_status_end; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_sync_status_end ON public.cwd_synchronisation_status USING btree (sync_end);


--
-- Name: idx_sync_status_node; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_sync_status_node ON public.cwd_synchronisation_status USING btree (node_id);


--
-- Name: idx_tam_by_created_time; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_tam_by_created_time ON public.tempattachmentsmonitor USING btree (created_time);


--
-- Name: idx_tam_by_form_token; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_tam_by_form_token ON public.tempattachmentsmonitor USING btree (form_token);


--
-- Name: idx_user_attr_dir_name_lval; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_user_attr_dir_name_lval ON public.cwd_user_attributes USING btree (directory_id, attribute_name, lower_attribute_value);


--
-- Name: idx_version_project; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_version_project ON public.projectversion USING btree (project);


--
-- Name: idx_version_sequence; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX idx_version_sequence ON public.projectversion USING btree (sequence);


--
-- Name: index_ao_0a5972_not187736835; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_0a5972_not187736835 ON public."AO_0A5972_NOTIFICATION_SETTING" USING btree ("USER_KEY");


--
-- Name: index_ao_0a5972_pus2127422409; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_0a5972_pus2127422409 ON public."AO_0A5972_PUSH_REGISTRATION" USING btree ("USER_KEY");


--
-- Name: index_ao_21f425_mes1965715920; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_21f425_mes1965715920 ON public."AO_21F425_MESSAGE_MAPPING_AO" USING btree ("MESSAGE_ID");


--
-- Name: index_ao_21f425_mes223897723; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_21f425_mes223897723 ON public."AO_21F425_MESSAGE_MAPPING_AO" USING btree ("USER_HASH");


--
-- Name: index_ao_21f425_use1458667739; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_21f425_use1458667739 ON public."AO_21F425_USER_PROPERTY_AO" USING btree ("USER");


--
-- Name: index_ao_38321b_cus1828044926; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_38321b_cus1828044926 ON public."AO_38321B_CUSTOM_CONTENT_LINK" USING btree ("CONTENT_KEY");


--
-- Name: index_ao_4789dd_tas42846517; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_4789dd_tas42846517 ON public."AO_4789DD_TASK_MONITOR" USING btree ("TASK_MONITOR_KIND");


--
-- Name: index_ao_550953_sho1122300379; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_550953_sho1122300379 ON public."AO_550953_SHORTCUT" USING btree ("PROJECT_ID", "SEQUENCE");


--
-- Name: index_ao_563aee_act1642652291; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_563aee_act1642652291 ON public."AO_563AEE_ACTIVITY_ENTITY" USING btree ("OBJECT_ID");


--
-- Name: index_ao_563aee_act1978295567; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_563aee_act1978295567 ON public."AO_563AEE_ACTIVITY_ENTITY" USING btree ("TARGET_ID");


--
-- Name: index_ao_563aee_act972488439; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_563aee_act972488439 ON public."AO_563AEE_ACTIVITY_ENTITY" USING btree ("ICON_ID");


--
-- Name: index_ao_563aee_act995325379; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_563aee_act995325379 ON public."AO_563AEE_ACTIVITY_ENTITY" USING btree ("ACTOR_ID");


--
-- Name: index_ao_563aee_obj696886343; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_563aee_obj696886343 ON public."AO_563AEE_OBJECT_ENTITY" USING btree ("IMAGE_ID");


--
-- Name: index_ao_563aee_tar521440921; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_563aee_tar521440921 ON public."AO_563AEE_TARGET_ENTITY" USING btree ("IMAGE_ID");


--
-- Name: index_ao_575bf5_dev567785983; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_575bf5_dev567785983 ON public."AO_575BF5_DEV_SUMMARY" USING btree ("ISSUE_ID");


--
-- Name: index_ao_575bf5_dev996442447; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_575bf5_dev996442447 ON public."AO_575BF5_DEV_SUMMARY" USING btree ("PROVIDER_SOURCE_ID");


--
-- Name: index_ao_575bf5_pro1117502689; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_575bf5_pro1117502689 ON public."AO_575BF5_PROVIDER_ISSUE" USING btree ("STALE_AFTER");


--
-- Name: index_ao_575bf5_pro1348521624; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_575bf5_pro1348521624 ON public."AO_575BF5_PROVIDER_ISSUE" USING btree ("PROVIDER_SOURCE_ID");


--
-- Name: index_ao_575bf5_pro1681808571; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_575bf5_pro1681808571 ON public."AO_575BF5_PROCESSED_COMMITS" USING btree ("COMMIT_HASH");


--
-- Name: index_ao_575bf5_pro741170824; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_575bf5_pro741170824 ON public."AO_575BF5_PROVIDER_ISSUE" USING btree ("ISSUE_ID");


--
-- Name: index_ao_575bf5_pro78019725; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_575bf5_pro78019725 ON public."AO_575BF5_PROCESSED_COMMITS" USING btree ("METADATA_HASH");


--
-- Name: index_ao_575bf5_pro996609822; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_575bf5_pro996609822 ON public."AO_575BF5_PROVIDER_SEQ_NO" USING btree ("PROVIDER_SOURCE_ID");


--
-- Name: index_ao_589059_aud1176827490; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_aud1176827490 ON public."AO_589059_AUDIT_ITEM" USING btree ("OBJECT_ITEM_ID", "CREATED");


--
-- Name: index_ao_589059_aud1292482400; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_aud1292482400 ON public."AO_589059_AUDIT_ITEM_COMP_CGE" USING btree ("AUDIT_ITEM_ID");


--
-- Name: index_ao_589059_aud1629596461; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_aud1629596461 ON public."AO_589059_AUDIT_ITEM_ASC_ITEM" USING btree ("AUDIT_ITEM_COMPONENT_CHANGE_ID");


--
-- Name: index_ao_589059_aud1883031342; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_aud1883031342 ON public."AO_589059_AUDIT_ITEM_PROJECT" USING btree ("PROJECT_ID");


--
-- Name: index_ao_589059_aud2042936618; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_aud2042936618 ON public."AO_589059_AUDIT_ITEM" USING btree ("CLIENT_KEY");


--
-- Name: index_ao_589059_aud2062299775; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_aud2062299775 ON public."AO_589059_AUDIT_ITEM" USING btree ("CLIENT_KEY", "CREATED");


--
-- Name: index_ao_589059_aud2066411868; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_aud2066411868 ON public."AO_589059_AUDIT_ITEM" USING btree ("END_TIME");


--
-- Name: index_ao_589059_aud2135433486; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_aud2135433486 ON public."AO_589059_AUDIT_ITEM_PROJECT" USING btree ("AUDIT_ITEM_ID");


--
-- Name: index_ao_589059_aud384377344; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_aud384377344 ON public."AO_589059_AUDIT_ITEM_COMP_CGE" USING btree ("COMPONENT_ID");


--
-- Name: index_ao_589059_aud391371433; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_aud391371433 ON public."AO_589059_AUDIT_ITEM" USING btree ("CATEGORY");


--
-- Name: index_ao_589059_aud395641888; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_aud395641888 ON public."AO_589059_AUDIT_ITEM_CGE_ITEM" USING btree ("AUDIT_ITEM_ID");


--
-- Name: index_ao_589059_aud423881867; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_aud423881867 ON public."AO_589059_AUDIT_ITEM" USING btree ("START_TIME");


--
-- Name: index_ao_589059_aud457721394; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_aud457721394 ON public."AO_589059_AUDIT_ITEM" USING btree ("OBJECT_ITEM_ID");


--
-- Name: index_ao_589059_aud623018019; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_aud623018019 ON public."AO_589059_AUDIT_ITEM" USING btree ("CREATED");


--
-- Name: index_ao_589059_aud70918330; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_aud70918330 ON public."AO_589059_AUDIT_ITEM_ASC_ITEM" USING btree ("ASSOC_ITEM_ID");


--
-- Name: index_ao_589059_aud764320720; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_aud764320720 ON public."AO_589059_AUDIT_ITEM_ASC_ITEM" USING btree ("AUDIT_ITEM_ID");


--
-- Name: index_ao_589059_aud934243613; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_aud934243613 ON public."AO_589059_AUDIT_ITEM_CGE_ITEM" USING btree ("AUDIT_ITEM_COMPONENT_CHANGE_ID");


--
-- Name: index_ao_589059_aut1159509220; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_aut1159509220 ON public."AO_589059_AUTOMATION_QUEUE" USING btree ("CLAIMANT");


--
-- Name: index_ao_589059_aut1286934885; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_aut1286934885 ON public."AO_589059_AUTOMATION_QUEUE" USING btree ("RULE_ID");


--
-- Name: index_ao_589059_aut1676976054; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_aut1676976054 ON public."AO_589059_AUTOMATION_QUEUE" USING btree ("AUDIT_ITEM_ID");


--
-- Name: index_ao_589059_aut1890155369; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_aut1890155369 ON public."AO_589059_AUTOMATION_QUEUE" USING btree ("CLAIM_TIME");


--
-- Name: index_ao_589059_aut417129021; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_aut417129021 ON public."AO_589059_AUTOMATION_QUEUE" USING btree ("PRIORITY", "ID");


--
-- Name: index_ao_589059_aut423739781; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_aut423739781 ON public."AO_589059_AUTOMATION_QUEUE" USING btree ("EXECUTION_UUID");


--
-- Name: index_ao_589059_aut554879388; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_aut554879388 ON public."AO_589059_AUTOMATION_QUEUE" USING btree ("CLIENT_KEY");


--
-- Name: index_ao_589059_aut688974243; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_aut688974243 ON public."AO_589059_AUTOMATION_QUEUE" USING btree ("PRIORITY");


--
-- Name: index_ao_589059_rul1049231853; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_rul1049231853 ON public."AO_589059_RULE_STAT_ROLLUP_MIN" USING btree ("RULE_ID");


--
-- Name: index_ao_589059_rul1183203383; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_rul1183203383 ON public."AO_589059_RULE_STAT_ROLLUP_DAY" USING btree ("RULE_ID");


--
-- Name: index_ao_589059_rul1206101986; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_rul1206101986 ON public."AO_589059_RULE_CONFIG" USING btree ("CLIENT_KEY", "PROJECT_ID");


--
-- Name: index_ao_589059_rul1226966328; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_rul1226966328 ON public."AO_589059_RULE_CFG_COMPONENT" USING btree ("RULE_CONFIG_ID");


--
-- Name: index_ao_589059_rul1346808745; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_rul1346808745 ON public."AO_589059_RULE_STAT_ROLLUP_HR" USING btree ("RULE_ID");


--
-- Name: index_ao_589059_rul1420464715; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_rul1420464715 ON public."AO_589059_RULE_TO_LABEL" USING btree ("RULE_ID");


--
-- Name: index_ao_589059_rul1515611263; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_rul1515611263 ON public."AO_589059_RULE_STAT" USING btree ("CREATED");


--
-- Name: index_ao_589059_rul1594893718; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_rul1594893718 ON public."AO_589059_RULE_CFG_COMPONENT" USING btree ("PARENT_CFG_COMPONENT_ID");


--
-- Name: index_ao_589059_rul1606288677; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_rul1606288677 ON public."AO_589059_RULE_STAT_ROLLUP_DAY" USING btree ("CATEGORY");


--
-- Name: index_ao_589059_rul1654880512; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_rul1654880512 ON public."AO_589059_RULE_TAG" USING btree ("RULE_CONFIG_ID");


--
-- Name: index_ao_589059_rul1748138543; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_rul1748138543 ON public."AO_589059_RULE_STAT_ROLLUP_MIN" USING btree ("CATEGORY");


--
-- Name: index_ao_589059_rul1773045508; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_rul1773045508 ON public."AO_589059_RULE_TAG" USING btree ("TAG_TYPE");


--
-- Name: index_ao_589059_rul1847717514; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_rul1847717514 ON public."AO_589059_RULE_CFG_PROJ_ASSOC" USING btree ("PROJECT_ID");


--
-- Name: index_ao_589059_rul1911879693; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_rul1911879693 ON public."AO_589059_RULE_STAT_ROLLUP_HR" USING btree ("CATEGORY");


--
-- Name: index_ao_589059_rul1912897271; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_rul1912897271 ON public."AO_589059_RULE_TAG" USING btree ("TAG_TYPE", "TAG_VALUE");


--
-- Name: index_ao_589059_rul1917850885; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_rul1917850885 ON public."AO_589059_RULE_STAT" USING btree ("RULE_ID", "EVENT_HASH");


--
-- Name: index_ao_589059_rul1958114349; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_rul1958114349 ON public."AO_589059_RULE_TO_SECRET" USING btree ("RULE_ID");


--
-- Name: index_ao_589059_rul2042676290; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_rul2042676290 ON public."AO_589059_RULE_CONFIG" USING btree ("CLIENT_KEY");


--
-- Name: index_ao_589059_rul2044434144; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_rul2044434144 ON public."AO_589059_RULE_CFG_PROJ_ASSOC" USING btree ("RULE_CONFIG_ID");


--
-- Name: index_ao_589059_rul347208969; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_rul347208969 ON public."AO_589059_RULE_CFG_COMPONENT" USING btree ("CONDITION_PARENT_ID");


--
-- Name: index_ao_589059_rul487188655; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_rul487188655 ON public."AO_589059_RULE_TO_LABEL" USING btree ("LABEL_ID");


--
-- Name: index_ao_589059_rul519678603; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_rul519678603 ON public."AO_589059_RULE_TO_SECRET" USING btree ("KEY");


--
-- Name: index_ao_589059_rul528064690; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_rul528064690 ON public."AO_589059_RULE_SCHEDULE" USING btree ("CLIENT_KEY");


--
-- Name: index_ao_589059_rul529127319; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_rul529127319 ON public."AO_589059_RULE_STAT_ROLLUP_MIN" USING btree ("CREATED");


--
-- Name: index_ao_589059_rul643368983; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_rul643368983 ON public."AO_589059_RULE_SCHEDULE" USING btree ("RULE_CONFIG_ID");


--
-- Name: index_ao_589059_rul663098849; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_rul663098849 ON public."AO_589059_RULE_STAT_ROLLUP_DAY" USING btree ("CREATED");


--
-- Name: index_ao_589059_rul677772867; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_rul677772867 ON public."AO_589059_RULE_TO_LABEL" USING btree ("RULE_ID", "LABEL_ID");


--
-- Name: index_ao_589059_rul74196096; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_rul74196096 ON public."AO_589059_RULE_STAT" USING btree ("RULE_ID", "CREATED");


--
-- Name: index_ao_589059_rul753680877; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_rul753680877 ON public."AO_589059_RULE_SCHEDULE" USING btree ("NEXT_EXECUTION");


--
-- Name: index_ao_589059_rul826704211; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_rul826704211 ON public."AO_589059_RULE_STAT_ROLLUP_HR" USING btree ("CREATED");


--
-- Name: index_ao_589059_rul995506729; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_rul995506729 ON public."AO_589059_RULE_STAT" USING btree ("RULE_ID");


--
-- Name: index_ao_589059_sec1229437249; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_sec1229437249 ON public."AO_589059_SECRET_PROJ_ASSOC" USING btree ("RULE_SECRET_ID");


--
-- Name: index_ao_589059_sec1906899546; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_589059_sec1906899546 ON public."AO_589059_SECRET_PROJ_ASSOC" USING btree ("PROJECT_ID");


--
-- Name: index_ao_60db71_aud137736645; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_60db71_aud137736645 ON public."AO_60DB71_AUDITENTRY" USING btree ("ENTITY_CLASS");


--
-- Name: index_ao_60db71_aud1756477597; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_60db71_aud1756477597 ON public."AO_60DB71_AUDITENTRY" USING btree ("CATEGORY");


--
-- Name: index_ao_60db71_aud604788536; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_60db71_aud604788536 ON public."AO_60DB71_AUDITENTRY" USING btree ("ENTITY_ID");


--
-- Name: index_ao_60db71_boa2110227660; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_60db71_boa2110227660 ON public."AO_60DB71_BOARDADMINS" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_car149237770; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_60db71_car149237770 ON public."AO_60DB71_CARDLAYOUT" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_car2031978979; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_60db71_car2031978979 ON public."AO_60DB71_CARDCOLOR" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_col1856623434; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_60db71_col1856623434 ON public."AO_60DB71_COLUMNSTATUS" USING btree ("COLUMN_ID");


--
-- Name: index_ao_60db71_col2098611346; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_60db71_col2098611346 ON public."AO_60DB71_COLUMN" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_det878495474; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_60db71_det878495474 ON public."AO_60DB71_DETAILVIEWFIELD" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_est1680565966; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_60db71_est1680565966 ON public."AO_60DB71_ESTIMATESTATISTIC" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_iss1616896230; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_60db71_iss1616896230 ON public."AO_60DB71_ISSUERANKING" USING btree ("ISSUE_ID");


--
-- Name: index_ao_60db71_iss1786461035; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_60db71_iss1786461035 ON public."AO_60DB71_ISSUERANKING" USING btree ("CUSTOM_FIELD_ID");


--
-- Name: index_ao_60db71_lex1569533973; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_60db71_lex1569533973 ON public."AO_60DB71_LEXORANK" USING btree ("FIELD_ID", "RANK");


--
-- Name: index_ao_60db71_lex1632828616; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_60db71_lex1632828616 ON public."AO_60DB71_LEXORANK" USING btree ("LOCK_HASH");


--
-- Name: index_ao_60db71_lex1694305086; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_60db71_lex1694305086 ON public."AO_60DB71_LEXORANK" USING btree ("FIELD_ID", "BUCKET", "RANK");


--
-- Name: index_ao_60db71_lex604083109; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_60db71_lex604083109 ON public."AO_60DB71_LEXORANK" USING btree ("ISSUE_ID");


--
-- Name: index_ao_60db71_non1145824037; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_60db71_non1145824037 ON public."AO_60DB71_NONWORKINGDAY" USING btree ("WORKING_DAYS_ID");


--
-- Name: index_ao_60db71_qui432573905; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_60db71_qui432573905 ON public."AO_60DB71_QUICKFILTER" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_spr1457658269; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_60db71_spr1457658269 ON public."AO_60DB71_SPRINT" USING btree ("SEQUENCE");


--
-- Name: index_ao_60db71_spr1794552746; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_60db71_spr1794552746 ON public."AO_60DB71_SPRINT" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_sta1907922871; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_60db71_sta1907922871 ON public."AO_60DB71_STATSFIELD" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_sub730851836; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_60db71_sub730851836 ON public."AO_60DB71_SUBQUERY" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_swi1429284592; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_60db71_swi1429284592 ON public."AO_60DB71_SWIMLANE" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_tra1711190333; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_60db71_tra1711190333 ON public."AO_60DB71_TRACKINGSTATISTIC" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_wor1205491794; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_60db71_wor1205491794 ON public."AO_60DB71_WORKINGDAYS" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_6ff49d_acc1420346349; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_6ff49d_acc1420346349 ON public."AO_6FF49D_ACCESS_LOG_PRC_CTRL" USING btree ("INST_ANALYSIS_CTRL_ID");


--
-- Name: index_ao_6ff49d_acc2011544206; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_6ff49d_acc2011544206 ON public."AO_6FF49D_ACCESS_LOG_PRC_ITEM" USING btree ("ACCESS_LOG_PROC_CTRL_ID");


--
-- Name: index_ao_6ff49d_act667427914; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_6ff49d_act667427914 ON public."AO_6FF49D_ACTUAL_MIG_COUNTS" USING btree ("EXECUTION_ID");


--
-- Name: index_ao_6ff49d_bro2110057263; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_6ff49d_bro2110057263 ON public."AO_6FF49D_BROWSER_METRICS" USING btree ("USER_KEY");


--
-- Name: index_ao_6ff49d_con1578118804; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_6ff49d_con1578118804 ON public."AO_6FF49D_CONFIG_ITEMS" USING btree ("EXECUTION_ID");


--
-- Name: index_ao_6ff49d_cor675623879; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_6ff49d_cor675623879 ON public."AO_6FF49D_CORRECTED_EMAIL" USING btree ("USER_KEY");


--
-- Name: index_ao_6ff49d_dai1638691034; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_6ff49d_dai1638691034 ON public."AO_6FF49D_DAILY_USAGE_METRICS" USING btree ("METRICS_DATE");


--
-- Name: index_ao_6ff49d_dai308825677; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_6ff49d_dai308825677 ON public."AO_6FF49D_DAILY_USAGE_METRICS" USING btree ("INST_ANALYSIS_CTRL_ID");


--
-- Name: index_ao_6ff49d_exp627564276; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_6ff49d_exp627564276 ON public."AO_6FF49D_EXPECTED_MIG_COUNTS" USING btree ("EXECUTION_ID");


--
-- Name: index_ao_6ff49d_exp62870883; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_6ff49d_exp62870883 ON public."AO_6FF49D_EXPELLED_USER" USING btree ("EXECUTION_ID");


--
-- Name: index_ao_6ff49d_gr_557041360; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_6ff49d_gr_557041360 ON public."AO_6FF49D_GR_RESPONSE_GROUP" USING btree ("NODE_ID");


--
-- Name: index_ao_6ff49d_gr_828911201; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_6ff49d_gr_828911201 ON public."AO_6FF49D_GR_RESPONSE_GROUP" USING btree ("JOB_ID");


--
-- Name: index_ao_6ff49d_gua1627320046; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_6ff49d_gua1627320046 ON public."AO_6FF49D_GUARDRAILS_RESPONSE" USING btree ("JOB_ID");


--
-- Name: index_ao_6ff49d_gua445339371; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_6ff49d_gua445339371 ON public."AO_6FF49D_GUARDRAILS_RESPONSE" USING btree ("JOB_ID", "GUARDRAILS_RESPONSE_TYPE");


--
-- Name: index_ao_6ff49d_inc1414714150; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_6ff49d_inc1414714150 ON public."AO_6FF49D_INCORRECT_EMAIL" USING btree ("EXECUTION_ID", "USER_NAME");


--
-- Name: index_ao_6ff49d_ins1879292872; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_6ff49d_ins1879292872 ON public."AO_6FF49D_INST_ANALYSIS_CTRL" USING btree ("ANALYSIS_TYPE");


--
-- Name: index_ao_6ff49d_lin1302176454; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_6ff49d_lin1302176454 ON public."AO_6FF49D_LINKED_MEDIA" USING btree ("SERVER_ID", "TYPE", "MEDIA_CLIENT_ID");


--
-- Name: index_ao_6ff49d_mig2002424036; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_6ff49d_mig2002424036 ON public."AO_6FF49D_MIGRATED_AVATAR" USING btree ("SERVER_AVATAR_ID", "MEDIA_CLIENT_ID");


--
-- Name: index_ao_6ff49d_mig29005345; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_6ff49d_mig29005345 ON public."AO_6FF49D_MIGRATED_FILE" USING btree ("FILE_SERVER_ID", "MEDIA_CLIENT_ID");


--
-- Name: index_ao_6ff49d_mig951953130; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_6ff49d_mig951953130 ON public."AO_6FF49D_MIG_REPORT_STATUS" USING btree ("EXECUTION_ID");


--
-- Name: index_ao_6ff49d_pub1442917746; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_6ff49d_pub1442917746 ON public."AO_6FF49D_PUBLIC_PLAN_MAPPING" USING btree ("PLAN_ID");


--
-- Name: index_ao_6ff49d_pub1974815569; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_6ff49d_pub1974815569 ON public."AO_6FF49D_PUBLIC_PLAN_MAPPING" USING btree ("MIGRATION_ID");


--
-- Name: index_ao_6ff49d_uns1093607806; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_6ff49d_uns1093607806 ON public."AO_6FF49D_UNSUPPORTED_ENTITY" USING btree ("EXECUTION_ID");


--
-- Name: index_ao_6ff49d_use1862771714; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_6ff49d_use1862771714 ON public."AO_6FF49D_USERS_GROUPS_EXTRACT" USING btree ("EXECUTION_ID");


--
-- Name: index_ao_6ff49d_use237280829; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_6ff49d_use237280829 ON public."AO_6FF49D_USERBASE_SCAN" USING btree ("STARTED_AT");


--
-- Name: index_ao_6ff49d_use441401682; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_6ff49d_use441401682 ON public."AO_6FF49D_USER_EMAIL_EVENT_LOG" USING btree ("CLOUD_ID", "EMAIL");


--
-- Name: index_ao_733371_eve1266474620; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_733371_eve1266474620 ON public."AO_733371_EVENT_RECIPIENT" USING btree ("CONSUMER_NAME");


--
-- Name: index_ao_733371_eve1423945899; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_733371_eve1423945899 ON public."AO_733371_EVENT_PARAMETER" USING btree ("NAME");


--
-- Name: index_ao_733371_eve1645451632; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_733371_eve1645451632 ON public."AO_733371_EVENT_RECIPIENT" USING btree ("EVENT_ID");


--
-- Name: index_ao_733371_eve525098581; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_733371_eve525098581 ON public."AO_733371_EVENT_RECIPIENT" USING btree ("SEND_DATE");


--
-- Name: index_ao_733371_eve673683319; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_733371_eve673683319 ON public."AO_733371_EVENT" USING btree ("EVENT_BUNDLE_ID");


--
-- Name: index_ao_733371_eve678699426; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_733371_eve678699426 ON public."AO_733371_EVENT_RECIPIENT" USING btree ("STATUS");


--
-- Name: index_ao_733371_eve704112384; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_733371_eve704112384 ON public."AO_733371_EVENT_PARAMETER" USING btree ("EVENT_ID");


--
-- Name: index_ao_733371_eve902883849; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_733371_eve902883849 ON public."AO_733371_EVENT" USING btree ("EVENT_TYPE");


--
-- Name: index_ao_733371_event_action; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_733371_event_action ON public."AO_733371_EVENT" USING btree ("ACTION");


--
-- Name: index_ao_733371_event_created; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_733371_event_created ON public."AO_733371_EVENT" USING btree ("CREATED");


--
-- Name: index_ao_733371_event_user_key; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_733371_event_user_key ON public."AO_733371_EVENT" USING btree ("USER_KEY");


--
-- Name: index_ao_81f455_per1449732247; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_81f455_per1449732247 ON public."AO_81F455_PERSONAL_TOKEN" USING btree ("TOKEN_ID", "EXPIRING_AT");


--
-- Name: index_ao_82b313_abi1023429172; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_82b313_abi1023429172 ON public."AO_82B313_ABILITY" USING btree ("SKILL_ID");


--
-- Name: index_ao_82b313_abi1495113378; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_82b313_abi1495113378 ON public."AO_82B313_ABILITY" USING btree ("PERSON_ID");


--
-- Name: index_ao_82b313_abs847540213; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_82b313_abs847540213 ON public."AO_82B313_ABSENCE" USING btree ("PERSON_ID");


--
-- Name: index_ao_82b313_ava1174130538; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_82b313_ava1174130538 ON public."AO_82B313_AVAILABILITY" USING btree ("RESOURCE_ID");


--
-- Name: index_ao_82b313_per1958357978; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_82b313_per1958357978 ON public."AO_82B313_PERSON" USING btree ("JIRA_USER_ID");


--
-- Name: index_ao_82b313_res425524126; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_82b313_res425524126 ON public."AO_82B313_RESOURCE" USING btree ("PERSON_ID");


--
-- Name: index_ao_82b313_res832797798; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_82b313_res832797798 ON public."AO_82B313_RESOURCE" USING btree ("TEAM_ID");


--
-- Name: index_ao_8752f1_dat1803576496; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_8752f1_dat1803576496 ON public."AO_8752F1_DATA_PIPELINE_JOB" USING btree ("STATUS");


--
-- Name: index_ao_a415df_aoa123789499; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aoa123789499 ON public."AO_A415DF_AOABSENCE" USING btree ("AOPERSON_ID");


--
-- Name: index_ao_a415df_aoa274205782; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aoa274205782 ON public."AO_A415DF_AOAVAILABILITY" USING btree ("AORESOURCE_ID");


--
-- Name: index_ao_a415df_aoa576235854; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aoa576235854 ON public."AO_A415DF_AOABILITY" USING btree ("AOPERSON_ID");


--
-- Name: index_ao_a415df_aod1576645787; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aod1576645787 ON public."AO_A415DF_AODEPENDENCY" USING btree ("DEPENDENT");


--
-- Name: index_ao_a415df_aod780424464; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aod780424464 ON public."AO_A415DF_AODEPENDENCY" USING btree ("DEPENDEE");


--
-- Name: index_ao_a415df_aoe1359587886; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aoe1359587886 ON public."AO_A415DF_AOESTIMATE" USING btree ("AOWORK_ITEM_ID");


--
-- Name: index_ao_a415df_aoe449475677; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aoe449475677 ON public."AO_A415DF_AOEXTENSION_LINK" USING btree ("AOEXTENDABLE_ID");


--
-- Name: index_ao_a415df_aon1597382101; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aon1597382101 ON public."AO_A415DF_AONON_WORKING_DAYS" USING btree ("AOPLAN_ID");


--
-- Name: index_ao_a415df_aop1188979497; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aop1188979497 ON public."AO_A415DF_AOPERSON" USING btree ("AOPLAN_ID");


--
-- Name: index_ao_a415df_aop1246856669; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aop1246856669 ON public."AO_A415DF_AOPRESENCE" USING btree ("AOPERSON_ID");


--
-- Name: index_ao_a415df_aop485454964; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aop485454964 ON public."AO_A415DF_AOPLAN_CONFIGURATION" USING btree ("AOPLAN_ID");


--
-- Name: index_ao_a415df_aop577302103; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aop577302103 ON public."AO_A415DF_AOPERMISSION" USING btree ("TARGET_ID");


--
-- Name: index_ao_a415df_aor1533730578; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aor1533730578 ON public."AO_A415DF_AORESOURCE" USING btree ("AOTEAM_ID");


--
-- Name: index_ao_a415df_aor287939766; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aor287939766 ON public."AO_A415DF_AORESOURCE" USING btree ("AOPERSON_ID");


--
-- Name: index_ao_a415df_aor34455044; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aor34455044 ON public."AO_A415DF_AORELEASE" USING btree ("AOSTREAM_ID");


--
-- Name: index_ao_a415df_aor548036520; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aor548036520 ON public."AO_A415DF_AOREPLANNING" USING btree ("WORK_ITEM_ID");


--
-- Name: index_ao_a415df_aor752754629; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aor752754629 ON public."AO_A415DF_AORELEASE" USING btree ("AOPLAN_ID");


--
-- Name: index_ao_a415df_aos1271634950; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aos1271634950 ON public."AO_A415DF_AOSPRINT" USING btree ("AOTEAM_ID");


--
-- Name: index_ao_a415df_aos495640191; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aos495640191 ON public."AO_A415DF_AOSTREAM_TO_TEAM" USING btree ("AOSTREAM_ID");


--
-- Name: index_ao_a415df_aos562466878; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aos562466878 ON public."AO_A415DF_AOSTREAM_TO_TEAM" USING btree ("AOTEAM_ID");


--
-- Name: index_ao_a415df_aos598285716; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aos598285716 ON public."AO_A415DF_AOSTREAM" USING btree ("AOPLAN_ID");


--
-- Name: index_ao_a415df_aos617973864; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aos617973864 ON public."AO_A415DF_AOSKILL" USING btree ("AOSTAGE_ID");


--
-- Name: index_ao_a415df_aos901500530; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aos901500530 ON public."AO_A415DF_AOSTAGE" USING btree ("AOPLAN_ID");


--
-- Name: index_ao_a415df_aot1876296753; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aot1876296753 ON public."AO_A415DF_AOTEAM" USING btree ("AOPLAN_ID");


--
-- Name: index_ao_a415df_aot513294467; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aot513294467 ON public."AO_A415DF_AOTHEME" USING btree ("AOPLAN_ID");


--
-- Name: index_ao_a415df_aow1045989527; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aow1045989527 ON public."AO_A415DF_AOWORK_ITEM_TO_RES" USING btree ("AORESOURCE_ID");


--
-- Name: index_ao_a415df_aow1085872694; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aow1085872694 ON public."AO_A415DF_AOWORK_ITEM" USING btree ("ORDER_RANGE_IDENTIFIER");


--
-- Name: index_ao_a415df_aow1276121741; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aow1276121741 ON public."AO_A415DF_AOWORK_ITEM" USING btree ("AOTHEME_ID");


--
-- Name: index_ao_a415df_aow1337278188; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aow1337278188 ON public."AO_A415DF_AOWORK_ITEM" USING btree ("AOPARENT_ID");


--
-- Name: index_ao_a415df_aow1728248629; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aow1728248629 ON public."AO_A415DF_AOWORK_ITEM" USING btree ("AOPLAN_ID");


--
-- Name: index_ao_a415df_aow1977806428; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aow1977806428 ON public."AO_A415DF_AOWORK_ITEM" USING btree ("AOSPRINT_ID");


--
-- Name: index_ao_a415df_aow2028612028; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aow2028612028 ON public."AO_A415DF_AOWORK_ITEM_TO_RES" USING btree ("AOWORK_ITEM_ID");


--
-- Name: index_ao_a415df_aow221278351; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aow221278351 ON public."AO_A415DF_AOWORK_ITEM" USING btree ("AORELEASE_ID");


--
-- Name: index_ao_a415df_aow571736702; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aow571736702 ON public."AO_A415DF_AOWORK_ITEM" USING btree ("AOSTREAM_ID");


--
-- Name: index_ao_a415df_aow782862209; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_a415df_aow782862209 ON public."AO_A415DF_AOWORK_ITEM" USING btree ("AOTEAM_ID");


--
-- Name: index_ao_ac3877_rl_1696242418; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_ac3877_rl_1696242418 ON public."AO_AC3877_RL_USER_COUNTER" USING btree ("INTERVAL_START");


--
-- Name: index_ao_ac3877_rl_2023752663; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_ac3877_rl_2023752663 ON public."AO_AC3877_RL_USER_COUNTER" USING btree ("USER_ID");


--
-- Name: index_ao_c77861_aud1143993171; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_c77861_aud1143993171 ON public."AO_C77861_AUDIT_CATEGORY_CACHE" USING btree ("CATEGORY");


--
-- Name: index_ao_c77861_aud148201205; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_c77861_aud148201205 ON public."AO_C77861_AUDIT_ENTITY" USING btree ("CATEGORY");


--
-- Name: index_ao_c77861_aud1486016429; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_c77861_aud1486016429 ON public."AO_C77861_AUDIT_ACTION_CACHE" USING btree ("ACTION");


--
-- Name: index_ao_c77861_aud1490488814; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_c77861_aud1490488814 ON public."AO_C77861_AUDIT_ENTITY" USING btree ("USER_ID", "ENTITY_TIMESTAMP");


--
-- Name: index_ao_c77861_aud1896469708; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_c77861_aud1896469708 ON public."AO_C77861_AUDIT_ACTION_CACHE" USING btree ("ACTION_T_KEY");


--
-- Name: index_ao_c77861_aud2071685161; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_c77861_aud2071685161 ON public."AO_C77861_AUDIT_ENTITY" USING btree ("ENTITY_TIMESTAMP", "ID");


--
-- Name: index_ao_c77861_aud237541374; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_c77861_aud237541374 ON public."AO_C77861_AUDIT_ENTITY" USING btree ("PRIMARY_RESOURCE_ID", "PRIMARY_RESOURCE_TYPE", "ENTITY_TIMESTAMP");


--
-- Name: index_ao_c77861_aud265617021; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_c77861_aud265617021 ON public."AO_C77861_AUDIT_ENTITY" USING btree ("ACTION");


--
-- Name: index_ao_c77861_aud470300084; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_c77861_aud470300084 ON public."AO_C77861_AUDIT_ENTITY" USING btree ("SECONDARY_RESOURCE_ID", "SECONDARY_RESOURCE_TYPE", "ENTITY_TIMESTAMP");


--
-- Name: index_ao_c77861_aud477310041; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_c77861_aud477310041 ON public."AO_C77861_AUDIT_ENTITY" USING btree ("RESOURCE_ID_3", "RESOURCE_TYPE_3", "ENTITY_TIMESTAMP");


--
-- Name: index_ao_c77861_aud617238068; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_c77861_aud617238068 ON public."AO_C77861_AUDIT_CATEGORY_CACHE" USING btree ("CATEGORY_T_KEY");


--
-- Name: index_ao_c77861_aud737336300; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_c77861_aud737336300 ON public."AO_C77861_AUDIT_ENTITY" USING btree ("RESOURCE_ID_4", "RESOURCE_TYPE_4", "ENTITY_TIMESTAMP");


--
-- Name: index_ao_c77861_aud76822836; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_c77861_aud76822836 ON public."AO_C77861_AUDIT_DENY_LISTED" USING btree ("ACTION");


--
-- Name: index_ao_c77861_aud96775159; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_c77861_aud96775159 ON public."AO_C77861_AUDIT_ENTITY" USING btree ("RESOURCE_ID_5", "RESOURCE_TYPE_5", "ENTITY_TIMESTAMP");


--
-- Name: index_ao_d9132d_ass1129480654; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_ass1129480654 ON public."AO_D9132D_ASSIGNMENT_EXT" USING btree ("SCENARIO");


--
-- Name: index_ao_d9132d_ass119573669; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_ass119573669 ON public."AO_D9132D_ASSIGNMENT_EXT" USING btree ("ISSUE");


--
-- Name: index_ao_d9132d_ass1284224961; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_ass1284224961 ON public."AO_D9132D_ASSIGNMENT" USING btree ("SOLUTION_ID");


--
-- Name: index_ao_d9132d_ass1311928735; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_ass1311928735 ON public."AO_D9132D_ASSIGNMENT_EXT" USING btree ("INTERVAL_END");


--
-- Name: index_ao_d9132d_ass1462760816; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_ass1462760816 ON public."AO_D9132D_ASSIGNMENT" USING btree ("SCENARIO");


--
-- Name: index_ao_d9132d_ass1564004940; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_ass1564004940 ON public."AO_D9132D_ASSIGNMENT_EXT" USING btree ("RESOURCE");


--
-- Name: index_ao_d9132d_ass1795660125; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_ass1795660125 ON public."AO_D9132D_ASSIGNMENT_EXT" USING btree ("SOLUTION_ID");


--
-- Name: index_ao_d9132d_ass1821457992; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_ass1821457992 ON public."AO_D9132D_ASSIGNMENT" USING btree ("INTERVAL_START");


--
-- Name: index_ao_d9132d_ass1897231097; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_ass1897231097 ON public."AO_D9132D_ASSIGNMENT" USING btree ("ISSUE");


--
-- Name: index_ao_d9132d_ass1897285102; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_ass1897285102 ON public."AO_D9132D_ASSIGNMENT" USING btree ("RESOURCE");


--
-- Name: index_ao_d9132d_ass1943761882; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_ass1943761882 ON public."AO_D9132D_ASSIGNMENT_EXT" USING btree ("INTERVAL_START");


--
-- Name: index_ao_d9132d_ass1995881407; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_ass1995881407 ON public."AO_D9132D_ASSIGNMENT" USING btree ("INTERVAL_END");


--
-- Name: index_ao_d9132d_ass199949577; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_ass199949577 ON public."AO_D9132D_ASSIGNMENT" USING btree ("PLAN");


--
-- Name: index_ao_d9132d_ass200062013; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_ass200062013 ON public."AO_D9132D_ASSIGNMENT" USING btree ("TEAM");


--
-- Name: index_ao_d9132d_ass411986023; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_ass411986023 ON public."AO_D9132D_ASSIGNMENT_EXT" USING btree ("PLAN");


--
-- Name: index_ao_d9132d_ass412098459; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_ass412098459 ON public."AO_D9132D_ASSIGNMENT_EXT" USING btree ("TEAM");


--
-- Name: index_ao_d9132d_ass423812856; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_ass423812856 ON public."AO_D9132D_ASSIGNMENT" USING btree ("VERSION");


--
-- Name: index_ao_d9132d_ass695316774; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_ass695316774 ON public."AO_D9132D_ASSIGNMENT_EXT" USING btree ("VERSION");


--
-- Name: index_ao_d9132d_dis1745341529; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_dis1745341529 ON public."AO_D9132D_DISTRIBUTION" USING btree ("SCENARIO_ISSUE_ID");


--
-- Name: index_ao_d9132d_dis1856860582; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_dis1856860582 ON public."AO_D9132D_DISTRIBUTION" USING btree ("ORIGINAL");


--
-- Name: index_ao_d9132d_dis912936150; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_dis912936150 ON public."AO_D9132D_DISTRIBUTION" USING btree ("SKILL_ITEM_KEY");


--
-- Name: index_ao_d9132d_exc1318844228; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_exc1318844228 ON public."AO_D9132D_EXCLUDED_STATUSCATS" USING btree ("PLAN_ID");


--
-- Name: index_ao_d9132d_exc1861854128; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_exc1861854128 ON public."AO_D9132D_EXCLUDED_VERSIONS" USING btree ("PLAN_ID");


--
-- Name: index_ao_d9132d_exc1996009570; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_exc1996009570 ON public."AO_D9132D_EXCLUDED_ISSUE_TYPES" USING btree ("PLAN_ID");


--
-- Name: index_ao_d9132d_exc944124117; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_exc944124117 ON public."AO_D9132D_EXCLUDED_STATUSES" USING btree ("PLAN_ID");


--
-- Name: index_ao_d9132d_gen1507656000; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_gen1507656000 ON public."AO_D9132D_GENERICREPORT" USING btree ("TYPE");


--
-- Name: index_ao_d9132d_gen2106787078; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_gen2106787078 ON public."AO_D9132D_GENERICREPORT" USING btree ("TYPE_ID");


--
-- Name: index_ao_d9132d_gen2126269983; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_gen2126269983 ON public."AO_D9132D_GENERICREPORT" USING btree ("PARAMS_HASH");


--
-- Name: index_ao_d9132d_iss1919689979; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_iss1919689979 ON public."AO_D9132D_ISSUE_SOURCE" USING btree ("PLAN_ID");


--
-- Name: index_ao_d9132d_non561724511; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_non561724511 ON public."AO_D9132D_NONWORKINGDAYS" USING btree ("PLAN_ID");


--
-- Name: index_ao_d9132d_per1164836380; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_per1164836380 ON public."AO_D9132D_PERMISSIONS" USING btree ("PLAN_ID");


--
-- Name: index_ao_d9132d_per984241123; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_per984241123 ON public."AO_D9132D_PERMISSIONS" USING btree ("PROGRAM_ID");


--
-- Name: index_ao_d9132d_pla1111913698; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_pla1111913698 ON public."AO_D9132D_PLAN_CUSTOM_FIELD" USING btree ("PLAN_ID");


--
-- Name: index_ao_d9132d_pla1139540794; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_pla1139540794 ON public."AO_D9132D_PLAN" USING btree ("PROGRAM_ID");


--
-- Name: index_ao_d9132d_pla1271131621; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_pla1271131621 ON public."AO_D9132D_PLAN_USER_PROPERTY" USING btree ("KEY");


--
-- Name: index_ao_d9132d_pla1533131136; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_pla1533131136 ON public."AO_D9132D_PLAN_US_PR_MAPPING" USING btree ("PLAN_ID");


--
-- Name: index_ao_d9132d_pla1554207320; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_pla1554207320 ON public."AO_D9132D_PLANSKILL" USING btree ("PLAN_ID");


--
-- Name: index_ao_d9132d_pla1629704229; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_pla1629704229 ON public."AO_D9132D_PLAN_USER_PROPERTY" USING btree ("USER_KEY");


--
-- Name: index_ao_d9132d_pla1879899550; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_pla1879899550 ON public."AO_D9132D_PLAN_US_PR_MAPPING" USING btree ("USER_ID");


--
-- Name: index_ao_d9132d_pla2036165122; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_pla2036165122 ON public."AO_D9132D_PLANTHEME" USING btree ("THEME_ID");


--
-- Name: index_ao_d9132d_pla2082025806; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_pla2082025806 ON public."AO_D9132D_PLANTEAM" USING btree ("ISSUE_SOURCE_ID");


--
-- Name: index_ao_d9132d_pla2100750794; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_pla2100750794 ON public."AO_D9132D_PLANTEAM" USING btree ("PLAN_ID");


--
-- Name: index_ao_d9132d_pla228745504; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_pla228745504 ON public."AO_D9132D_PLANTHEME" USING btree ("PLAN_ID");


--
-- Name: index_ao_d9132d_pla49449113; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_pla49449113 ON public."AO_D9132D_PLANNED_CAPACITY" USING btree ("PLAN_ID");


--
-- Name: index_ao_d9132d_pla495183907; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_pla495183907 ON public."AO_D9132D_PLAN" USING btree ("PORTFOLIO_PLAN_VERSION");


--
-- Name: index_ao_d9132d_pla571292041; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_pla571292041 ON public."AO_D9132D_PLAN_USER_PROPERTY" USING btree ("PLAN_ID");


--
-- Name: index_ao_d9132d_pla62020034; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_pla62020034 ON public."AO_D9132D_PLANVERSION" USING btree ("XPROJECT_VERSION_ID");


--
-- Name: index_ao_d9132d_pla641747585; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_pla641747585 ON public."AO_D9132D_PLAN_CUSTOM_FIELD" USING btree ("CUSTOM_FIELD_ID");


--
-- Name: index_ao_d9132d_pla958319633; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_pla958319633 ON public."AO_D9132D_PLANVERSION" USING btree ("PLAN_ID");


--
-- Name: index_ao_d9132d_pro1755419420; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_pro1755419420 ON public."AO_D9132D_PROGRAM_CUSTOM_FIELD" USING btree ("PROGRAM_ID");


--
-- Name: index_ao_d9132d_pro2018280216; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_pro2018280216 ON public."AO_D9132D_PROGRAM_CUSTOM_FIELD" USING btree ("CUSTOM_FIELD_ID");


--
-- Name: index_ao_d9132d_ran1612448239; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_ran1612448239 ON public."AO_D9132D_RANK_ITEM" USING btree ("DOMAIN");


--
-- Name: index_ao_d9132d_ran1797004856; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_ran1797004856 ON public."AO_D9132D_RANK_ITEM" USING btree ("RANGE_ID");


--
-- Name: index_ao_d9132d_rank_item_key; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_rank_item_key ON public."AO_D9132D_RANK_ITEM" USING btree ("KEY");


--
-- Name: index_ao_d9132d_sav1047490627; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sav1047490627 ON public."AO_D9132D_SAVED_VIEW" USING btree ("SUBJECT_TYPE");


--
-- Name: index_ao_d9132d_sav1667348088; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sav1667348088 ON public."AO_D9132D_SAVED_VIEW" USING btree ("VERSION");


--
-- Name: index_ao_d9132d_sav17192516; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sav17192516 ON public."AO_D9132D_SAVED_VIEW2" USING btree ("VERSION");


--
-- Name: index_ao_d9132d_sav573156770; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sav573156770 ON public."AO_D9132D_SAVED_VIEW" USING btree ("SUBJECT_ID");


--
-- Name: index_ao_d9132d_sav905105399; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sav905105399 ON public."AO_D9132D_SAVED_VIEW2" USING btree ("SUBJECT_TYPE");


--
-- Name: index_ao_d9132d_sav984181334; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sav984181334 ON public."AO_D9132D_SAVED_VIEW2" USING btree ("SUBJECT_ID");


--
-- Name: index_ao_d9132d_sce100282944; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce100282944 ON public."AO_D9132D_SCENARIO_ISSUE_LINKS" USING btree ("SCENARIO_TYPE");


--
-- Name: index_ao_d9132d_sce1006164830; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1006164830 ON public."AO_D9132D_SCENARIO_CHANGES" USING btree ("T_TYPE");


--
-- Name: index_ao_d9132d_sce1010364482; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1010364482 ON public."AO_D9132D_SCENARIO_ISSUE_LABEL" USING btree ("SCENARIO_ISSUE_ID");


--
-- Name: index_ao_d9132d_sce1017308037; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1017308037 ON public."AO_D9132D_SCENARIO_ISSUES" USING btree ("ITEM_KEY");


--
-- Name: index_ao_d9132d_sce1039993579; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1039993579 ON public."AO_D9132D_SCENARIO_STAGE" USING btree ("SCENARIO_TYPE");


--
-- Name: index_ao_d9132d_sce1068391127; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1068391127 ON public."AO_D9132D_SCENARIO_ISSUES" USING btree ("BASELINE_END");


--
-- Name: index_ao_d9132d_sce1086205799; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1086205799 ON public."AO_D9132D_SCENARIO_ISSUES" USING btree ("THEME_ID");


--
-- Name: index_ao_d9132d_sce1119979099; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1119979099 ON public."AO_D9132D_SCENARIO_ABILITY" USING btree ("ITEM_KEY");


--
-- Name: index_ao_d9132d_sce1120228753; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1120228753 ON public."AO_D9132D_SCENARIO_STAGE" USING btree ("ITEM_KEY");


--
-- Name: index_ao_d9132d_sce113715567; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce113715567 ON public."AO_D9132D_SCENARIO_XPVERSION" USING btree ("ITEM_KEY");


--
-- Name: index_ao_d9132d_sce114962861; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce114962861 ON public."AO_D9132D_SCENARIO_ABILITY" USING btree ("SKILL_ITEM_KEY");


--
-- Name: index_ao_d9132d_sce1165940267; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1165940267 ON public."AO_D9132D_SCENARIO_ABILITY" USING btree ("PERSON_ITEM_KEY");


--
-- Name: index_ao_d9132d_sce1223631444; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1223631444 ON public."AO_D9132D_SCENARIO" USING btree ("PLAN_ID");


--
-- Name: index_ao_d9132d_sce1224456962; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1224456962 ON public."AO_D9132D_SCENARIO_SKILL" USING btree ("SCENARIO_TYPE");


--
-- Name: index_ao_d9132d_sce1227110052; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1227110052 ON public."AO_D9132D_SCENARIO_PLAN_CAP" USING btree ("SCENARIO_ID");


--
-- Name: index_ao_d9132d_sce1234837664; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1234837664 ON public."AO_D9132D_SCENARIO_ISSUES" USING btree ("CREATED");


--
-- Name: index_ao_d9132d_sce1271866466; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1271866466 ON public."AO_D9132D_SCENARIO_SKILL" USING btree ("ITEM_KEY");


--
-- Name: index_ao_d9132d_sce1281362417; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1281362417 ON public."AO_D9132D_SCEN_CUSTOM_FIELD" USING btree ("SCENARIO_ISSUE_ID");


--
-- Name: index_ao_d9132d_sce1310871043; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1310871043 ON public."AO_D9132D_SCENARIO_PERSON" USING btree ("SCENARIO_ID");


--
-- Name: index_ao_d9132d_sce1321303140; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1321303140 ON public."AO_D9132D_SCENARIO_PERSON" USING btree ("SCENARIO_TYPE");


--
-- Name: index_ao_d9132d_sce1333210566; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1333210566 ON public."AO_D9132D_SCENARIO_ISSUE_LINKS" USING btree ("TARGET");


--
-- Name: index_ao_d9132d_sce1348810556; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1348810556 ON public."AO_D9132D_SCENARIO_ISSUE_LINKS" USING btree ("SOURCE");


--
-- Name: index_ao_d9132d_sce13552520; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce13552520 ON public."AO_D9132D_SCENARIO_ABILITY" USING btree ("SCENARIO_ID");


--
-- Name: index_ao_d9132d_sce1383869301; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1383869301 ON public."AO_D9132D_SCEN_TEAM_EX_SPRINT" USING btree ("SCENARIO_TEAM_ID");


--
-- Name: index_ao_d9132d_sce1386125014; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1386125014 ON public."AO_D9132D_SCENARIO_ISSUES" USING btree ("VERSION_ID");


--
-- Name: index_ao_d9132d_sce138718377; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce138718377 ON public."AO_D9132D_SCENARIO_ABILITY" USING btree ("SCENARIO_TYPE");


--
-- Name: index_ao_d9132d_sce1400547264; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1400547264 ON public."AO_D9132D_SCENARIO_ISSUES" USING btree ("STATUS_ID");


--
-- Name: index_ao_d9132d_sce1478246132; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1478246132 ON public."AO_D9132D_SCENARIO_STAGE" USING btree ("SCENARIO_ID");


--
-- Name: index_ao_d9132d_sce1508270445; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1508270445 ON public."AO_D9132D_SCENARIO_ISSUE_CMPNT" USING btree ("COMPONENT_ID");


--
-- Name: index_ao_d9132d_sce1518982583; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1518982583 ON public."AO_D9132D_SCENARIO_VERSION" USING btree ("ITEM_KEY");


--
-- Name: index_ao_d9132d_sce1536927951; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1536927951 ON public."AO_D9132D_SCENARIO_ISSUES" USING btree ("ORIG_STPTS_ESTIMATE");


--
-- Name: index_ao_d9132d_sce1543172557; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1543172557 ON public."AO_D9132D_SCENARIO_XPVERSION" USING btree ("SCENARIO_TYPE");


--
-- Name: index_ao_d9132d_sce1545959687; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1545959687 ON public."AO_D9132D_SCENARIO_PLAN_CAP" USING btree ("ITEM_KEY");


--
-- Name: index_ao_d9132d_sce1554987896; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1554987896 ON public."AO_D9132D_SCENARIO_ISSUES" USING btree ("PARENT_ID");


--
-- Name: index_ao_d9132d_sce1569966108; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1569966108 ON public."AO_D9132D_SCENARIO_TEAM" USING btree ("SCENARIO_TYPE");


--
-- Name: index_ao_d9132d_sce1576988708; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1576988708 ON public."AO_D9132D_SCENARIO_ISSUES" USING btree ("ORIG_TIME_ESTIMATE");


--
-- Name: index_ao_d9132d_sce1609369417; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1609369417 ON public."AO_D9132D_SCENARIO_ISSUES" USING btree ("PROJECT_ID");


--
-- Name: index_ao_d9132d_sce1625521782; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1625521782 ON public."AO_D9132D_SCENARIO_THEME" USING btree ("SCENARIO_TYPE");


--
-- Name: index_ao_d9132d_sce168803159; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce168803159 ON public."AO_D9132D_SCENARIO_RESOURCE" USING btree ("PERSON_ITEM_KEY");


--
-- Name: index_ao_d9132d_sce1697093730; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1697093730 ON public."AO_D9132D_SCENARIO_ISSUE_RES" USING btree ("RESOURCE_ITEM_KEY");


--
-- Name: index_ao_d9132d_sce175198003; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce175198003 ON public."AO_D9132D_SCENARIO_AVLBLTY" USING btree ("SCENARIO_RESOURCE_ID");


--
-- Name: index_ao_d9132d_sce1822753703; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1822753703 ON public."AO_D9132D_SCEN_TEAM_EX_SPRINT" USING btree ("SPRINT_ID");


--
-- Name: index_ao_d9132d_sce1834903770; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1834903770 ON public."AO_D9132D_SCENARIO_THEME" USING btree ("ITEM_KEY");


--
-- Name: index_ao_d9132d_sce1862894973; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1862894973 ON public."AO_D9132D_SCENARIO_PLAN_CAP" USING btree ("SCENARIO_TYPE");


--
-- Name: index_ao_d9132d_sce1883185710; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce1883185710 ON public."AO_D9132D_SCENARIO_ISSUE_RES" USING btree ("SCENARIO_ISSUE_ID");


--
-- Name: index_ao_d9132d_sce2005427167; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce2005427167 ON public."AO_D9132D_SCENARIO_SKILL" USING btree ("SCENARIO_ID");


--
-- Name: index_ao_d9132d_sce2082437338; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce2082437338 ON public."AO_D9132D_SCENARIO_VERSION" USING btree ("SCENARIO_ID");


--
-- Name: index_ao_d9132d_sce2099451160; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce2099451160 ON public."AO_D9132D_SCENARIO_ISSUES" USING btree ("SPRINT_ID");


--
-- Name: index_ao_d9132d_sce210160351; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce210160351 ON public."AO_D9132D_SCENARIO_ISSUE_LINKS" USING btree ("SCENARIO_ID");


--
-- Name: index_ao_d9132d_sce224459199; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce224459199 ON public."AO_D9132D_SCENARIO_ISSUES" USING btree ("SCENARIO_TYPE");


--
-- Name: index_ao_d9132d_sce232829573; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce232829573 ON public."AO_D9132D_SCENARIO_VERSION" USING btree ("SCENARIO_TYPE");


--
-- Name: index_ao_d9132d_sce266710943; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce266710943 ON public."AO_D9132D_SCENARIO_ISSUES" USING btree ("DUE_DATE");


--
-- Name: index_ao_d9132d_sce29849183; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce29849183 ON public."AO_D9132D_SCENARIO_RESOURCE" USING btree ("TEAM_ITEM_KEY");


--
-- Name: index_ao_d9132d_sce304701852; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce304701852 ON public."AO_D9132D_SCENARIO_ISSUE_LINKS" USING btree ("ITEM_KEY");


--
-- Name: index_ao_d9132d_sce307133478; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce307133478 ON public."AO_D9132D_SCENARIO_ISSUE_LABEL" USING btree ("LABEL");


--
-- Name: index_ao_d9132d_sce318880623; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce318880623 ON public."AO_D9132D_SCENARIO_CHANGES" USING btree ("SCENARIO_ID");


--
-- Name: index_ao_d9132d_sce338333120; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce338333120 ON public."AO_D9132D_SCENARIO_PERSON" USING btree ("ITEM_KEY");


--
-- Name: index_ao_d9132d_sce355910425; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce355910425 ON public."AO_D9132D_SCENARIO_RESOURCE" USING btree ("ITEM_KEY");


--
-- Name: index_ao_d9132d_sce408394583; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce408394583 ON public."AO_D9132D_SCENARIO_THEME" USING btree ("SCENARIO_ID");


--
-- Name: index_ao_d9132d_sce410924660; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce410924660 ON public."AO_D9132D_SCENARIO_TEAM" USING btree ("ISSUE_SOURCE_ID");


--
-- Name: index_ao_d9132d_sce434778360; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce434778360 ON public."AO_D9132D_SCENARIO_TEAM" USING btree ("ITEM_KEY");


--
-- Name: index_ao_d9132d_sce445060274; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce445060274 ON public."AO_D9132D_SCENARIO_ISSUES" USING btree ("PRIORITY_ID");


--
-- Name: index_ao_d9132d_sce502118059; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce502118059 ON public."AO_D9132D_SCENARIO_RESOURCE" USING btree ("SCENARIO_TYPE");


--
-- Name: index_ao_d9132d_sce555437119; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce555437119 ON public."AO_D9132D_SCEN_CSTM_FLD_MVAL" USING btree ("SCENARIO_ISSUE_CUSTOM_FIELD_ID");


--
-- Name: index_ao_d9132d_sce643340770; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce643340770 ON public."AO_D9132D_SCENARIO_ISSUES" USING btree ("SCENARIO_ID");


--
-- Name: index_ao_d9132d_sce646807048; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce646807048 ON public."AO_D9132D_SCENARIO_ISSUES" USING btree ("TYPE_ID");


--
-- Name: index_ao_d9132d_sce728652710; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce728652710 ON public."AO_D9132D_SCENARIO_ISSUES" USING btree ("BSLN_EARLIEST_START");


--
-- Name: index_ao_d9132d_sce789931767; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce789931767 ON public."AO_D9132D_SCEN_CUSTOM_FIELD" USING btree ("PLAN_CUSTOM_FIELD_ID");


--
-- Name: index_ao_d9132d_sce824201434; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce824201434 ON public."AO_D9132D_SCENARIO_ISSUE_CMPNT" USING btree ("SCENARIO_ISSUE_ID");


--
-- Name: index_ao_d9132d_sce838588485; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce838588485 ON public."AO_D9132D_SCENARIO_TEAM" USING btree ("SCENARIO_ID");


--
-- Name: index_ao_d9132d_sce949090414; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce949090414 ON public."AO_D9132D_SCENARIO_XPVERSION" USING btree ("SCENARIO_ID");


--
-- Name: index_ao_d9132d_sce970354186; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sce970354186 ON public."AO_D9132D_SCENARIO_RESOURCE" USING btree ("SCENARIO_ID");


--
-- Name: index_ao_d9132d_sha2017392082; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sha2017392082 ON public."AO_D9132D_SHARED_REPORT" USING btree ("PLAN_ID");


--
-- Name: index_ao_d9132d_sol1674134468; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_sol1674134468 ON public."AO_D9132D_SOLUTION" USING btree ("SCENARIO");


--
-- Name: index_ao_d9132d_solution_plan; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_solution_plan ON public."AO_D9132D_SOLUTION" USING btree ("PLAN");


--
-- Name: index_ao_d9132d_solution_state; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_solution_state ON public."AO_D9132D_SOLUTION" USING btree ("STATE");


--
-- Name: index_ao_d9132d_stage_plan_id; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_stage_plan_id ON public."AO_D9132D_STAGE" USING btree ("PLAN_ID");


--
-- Name: index_ao_d9132d_tea1091808585; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_tea1091808585 ON public."AO_D9132D_TEAM_EX_SPRINT" USING btree ("SPRINT_ID");


--
-- Name: index_ao_d9132d_tea2014565003; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_tea2014565003 ON public."AO_D9132D_TEAM_EX_SPRINT" USING btree ("PLANTEAM_ID");


--
-- Name: index_ao_d9132d_tea614189680; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_tea614189680 ON public."AO_D9132D_TEAM_EX_SPRINT" USING btree ("PLAN_TEAM_ID");


--
-- Name: index_ao_d9132d_theme_shared; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_theme_shared ON public."AO_D9132D_THEME" USING btree ("SHARED");


--
-- Name: index_ao_d9132d_x_p689485877; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_d9132d_x_p689485877 ON public."AO_D9132D_X_PROJECT_VERSION" USING btree ("PLAN_ID");


--
-- Name: index_ao_e8b6cc_bra1368852151; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_bra1368852151 ON public."AO_E8B6CC_BRANCH_HEAD_MAPPING" USING btree ("REPOSITORY_ID");


--
-- Name: index_ao_e8b6cc_bra405461593; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_bra405461593 ON public."AO_E8B6CC_BRANCH" USING btree ("REPOSITORY_ID");


--
-- Name: index_ao_e8b6cc_cha1086340152; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_cha1086340152 ON public."AO_E8B6CC_CHANGESET_MAPPING" USING btree ("SMARTCOMMIT_AVAILABLE");


--
-- Name: index_ao_e8b6cc_cha1483243924; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_cha1483243924 ON public."AO_E8B6CC_CHANGESET_MAPPING" USING btree ("NODE");


--
-- Name: index_ao_e8b6cc_cha509722037; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_cha509722037 ON public."AO_E8B6CC_CHANGESET_MAPPING" USING btree ("RAW_NODE");


--
-- Name: index_ao_e8b6cc_cha897886051; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_cha897886051 ON public."AO_E8B6CC_CHANGESET_MAPPING" USING btree ("AUTHOR");


--
-- Name: index_ao_e8b6cc_com1308336834; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_com1308336834 ON public."AO_E8B6CC_COMMIT" USING btree ("DOMAIN_ID");


--
-- Name: index_ao_e8b6cc_commit_node; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_commit_node ON public."AO_E8B6CC_COMMIT" USING btree ("NODE");


--
-- Name: index_ao_e8b6cc_git1120895454; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_git1120895454 ON public."AO_E8B6CC_GIT_HUB_EVENT" USING btree ("GIT_HUB_ID");


--
-- Name: index_ao_e8b6cc_git1804640320; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_git1804640320 ON public."AO_E8B6CC_GIT_HUB_EVENT" USING btree ("REPOSITORY_ID");


--
-- Name: index_ao_e8b6cc_iss1229805759; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_iss1229805759 ON public."AO_E8B6CC_ISSUE_TO_CHANGESET" USING btree ("CHANGESET_ID");


--
-- Name: index_ao_e8b6cc_iss1325927291; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_iss1325927291 ON public."AO_E8B6CC_ISSUE_TO_BRANCH" USING btree ("BRANCH_ID");


--
-- Name: index_ao_e8b6cc_iss353204826; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_iss353204826 ON public."AO_E8B6CC_ISSUE_TO_BRANCH" USING btree ("ISSUE_KEY");


--
-- Name: index_ao_e8b6cc_iss417950110; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_iss417950110 ON public."AO_E8B6CC_ISSUE_TO_CHANGESET" USING btree ("ISSUE_KEY");


--
-- Name: index_ao_e8b6cc_iss648895902; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_iss648895902 ON public."AO_E8B6CC_ISSUE_TO_CHANGESET" USING btree ("PROJECT_KEY");


--
-- Name: index_ao_e8b6cc_mes1247039512; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_mes1247039512 ON public."AO_E8B6CC_MESSAGE" USING btree ("ADDRESS");


--
-- Name: index_ao_e8b6cc_mes1391090780; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_mes1391090780 ON public."AO_E8B6CC_MESSAGE_TAG" USING btree ("MESSAGE_ID");


--
-- Name: index_ao_e8b6cc_mes1648007831; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_mes1648007831 ON public."AO_E8B6CC_MESSAGE_TAG" USING btree ("TAG");


--
-- Name: index_ao_e8b6cc_mes344532677; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_mes344532677 ON public."AO_E8B6CC_MESSAGE_QUEUE_ITEM" USING btree ("MESSAGE_ID");


--
-- Name: index_ao_e8b6cc_mes59146529; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_mes59146529 ON public."AO_E8B6CC_MESSAGE_QUEUE_ITEM" USING btree ("STATE");


--
-- Name: index_ao_e8b6cc_mes60959905; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_mes60959905 ON public."AO_E8B6CC_MESSAGE_QUEUE_ITEM" USING btree ("QUEUE");


--
-- Name: index_ao_e8b6cc_org1513110290; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_org1513110290 ON public."AO_E8B6CC_ORGANIZATION_MAPPING" USING btree ("DVCS_TYPE");


--
-- Name: index_ao_e8b6cc_org1899590324; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_org1899590324 ON public."AO_E8B6CC_ORG_TO_PROJECT" USING btree ("ORGANIZATION_ID");


--
-- Name: index_ao_e8b6cc_pr_1045528152; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_pr_1045528152 ON public."AO_E8B6CC_PR_TO_COMMIT" USING btree ("REQUEST_ID");


--
-- Name: index_ao_e8b6cc_pr_1105917040; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_pr_1105917040 ON public."AO_E8B6CC_PR_PARTICIPANT" USING btree ("PULL_REQUEST_ID");


--
-- Name: index_ao_e8b6cc_pr_1458633226; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_pr_1458633226 ON public."AO_E8B6CC_PR_TO_COMMIT" USING btree ("COMMIT_ID");


--
-- Name: index_ao_e8b6cc_pr_1639282617; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_pr_1639282617 ON public."AO_E8B6CC_PR_ISSUE_KEY" USING btree ("DOMAIN_ID");


--
-- Name: index_ao_e8b6cc_pr_2106805302; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_pr_2106805302 ON public."AO_E8B6CC_PR_ISSUE_KEY" USING btree ("ISSUE_KEY");


--
-- Name: index_ao_e8b6cc_pr_281193494; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_pr_281193494 ON public."AO_E8B6CC_PR_ISSUE_KEY" USING btree ("PULL_REQUEST_ID");


--
-- Name: index_ao_e8b6cc_pr_685151049; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_pr_685151049 ON public."AO_E8B6CC_PR_TO_COMMIT" USING btree ("DOMAIN_ID");


--
-- Name: index_ao_e8b6cc_pr_758084799; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_pr_758084799 ON public."AO_E8B6CC_PR_PARTICIPANT" USING btree ("DOMAIN_ID");


--
-- Name: index_ao_e8b6cc_pul1230717024; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_pul1230717024 ON public."AO_E8B6CC_PULL_REQUEST" USING btree ("DOMAIN_ID");


--
-- Name: index_ao_e8b6cc_pul1448445182; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_pul1448445182 ON public."AO_E8B6CC_PULL_REQUEST" USING btree ("TO_REPOSITORY_ID");


--
-- Name: index_ao_e8b6cc_pul602811170; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_pul602811170 ON public."AO_E8B6CC_PULL_REQUEST" USING btree ("REMOTE_ID");


--
-- Name: index_ao_e8b6cc_rep1082901832; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_rep1082901832 ON public."AO_E8B6CC_REPO_TO_CHANGESET" USING btree ("REPOSITORY_ID");


--
-- Name: index_ao_e8b6cc_rep1928770529; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_rep1928770529 ON public."AO_E8B6CC_REPO_TO_PROJECT" USING btree ("REPOSITORY_ID");


--
-- Name: index_ao_e8b6cc_rep702725269; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_rep702725269 ON public."AO_E8B6CC_REPOSITORY_MAPPING" USING btree ("ORGANIZATION_ID");


--
-- Name: index_ao_e8b6cc_rep922992576; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_rep922992576 ON public."AO_E8B6CC_REPO_TO_CHANGESET" USING btree ("CHANGESET_ID");


--
-- Name: index_ao_e8b6cc_rep93578901; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_rep93578901 ON public."AO_E8B6CC_REPOSITORY_MAPPING" USING btree ("LINKED");


--
-- Name: index_ao_e8b6cc_syn203792807; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_syn203792807 ON public."AO_E8B6CC_SYNC_AUDIT_LOG" USING btree ("REPO_ID");


--
-- Name: index_ao_e8b6cc_syn493078035; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_e8b6cc_syn493078035 ON public."AO_E8B6CC_SYNC_EVENT" USING btree ("REPO_ID");


--
-- Name: index_ao_ed669c_see20117222; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX index_ao_ed669c_see20117222 ON public."AO_ED669C_SEEN_ASSERTIONS" USING btree ("EXPIRY_TIMESTAMP");


--
-- Name: issue_archived; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX issue_archived ON public.jiraissue USING btree (archived);


--
-- Name: issue_assignee; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX issue_assignee ON public.jiraissue USING btree (assignee);


--
-- Name: issue_created; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX issue_created ON public.jiraissue USING btree (created);


--
-- Name: issue_duedate; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX issue_duedate ON public.jiraissue USING btree (duedate);


--
-- Name: issue_proj_num; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX issue_proj_num ON public.jiraissue USING btree (issuenum, project);


--
-- Name: issue_proj_status; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX issue_proj_status ON public.jiraissue USING btree (project, issuestatus);


--
-- Name: issue_reporter; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX issue_reporter ON public.jiraissue USING btree (reporter);


--
-- Name: issue_resolutiondate; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX issue_resolutiondate ON public.jiraissue USING btree (resolutiondate);


--
-- Name: issue_updated; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX issue_updated ON public.jiraissue USING btree (updated);


--
-- Name: issue_votes; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX issue_votes ON public.jiraissue USING btree (votes);


--
-- Name: issue_watches; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX issue_watches ON public.jiraissue USING btree (watches);


--
-- Name: issue_workflow; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX issue_workflow ON public.jiraissue USING btree (workflow_id);


--
-- Name: issuelink_dest; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX issuelink_dest ON public.issuelink USING btree (destination);


--
-- Name: issuelink_src; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX issuelink_src ON public.issuelink USING btree (source);


--
-- Name: issuelink_type; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX issuelink_type ON public.issuelink USING btree (linktype);


--
-- Name: iv_deleted_update_time_idx; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX iv_deleted_update_time_idx ON public.issue_version USING btree (deleted, update_time);


--
-- Name: iv_parent_id; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX iv_parent_id ON public.issue_version USING btree (parent_issue_id);


--
-- Name: iv_update_time; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX iv_update_time ON public.issue_version USING btree (update_time);


--
-- Name: label_fieldissue; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX label_fieldissue ON public.label USING btree (issue, fieldid);


--
-- Name: label_fieldissuelabel; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX label_fieldissuelabel ON public.label USING btree (issue, fieldid, label);


--
-- Name: label_issue; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX label_issue ON public.label USING btree (issue);


--
-- Name: label_label; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX label_label ON public.label USING btree (label);


--
-- Name: licenseroledefault_index; Type: INDEX; Schema: public; Owner: jira
--

CREATE UNIQUE INDEX licenseroledefault_index ON public.licenserolesdefault USING btree (license_role_name);


--
-- Name: licenserolegroup_index; Type: INDEX; Schema: public; Owner: jira
--

CREATE UNIQUE INDEX licenserolegroup_index ON public.licenserolesgroup USING btree (license_role_name, group_id);


--
-- Name: linktypename; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX linktypename ON public.issuelinktype USING btree (linkname);


--
-- Name: linktypestyle; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX linktypestyle ON public.issuelinktype USING btree (pstyle);


--
-- Name: managedconfigitem_id_type_idx; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX managedconfigitem_id_type_idx ON public.managedconfigurationitem USING btree (item_id, item_type);


--
-- Name: mshipbase_group; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX mshipbase_group ON public.membershipbase USING btree (group_name);


--
-- Name: mshipbase_user; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX mshipbase_user ON public.membershipbase USING btree (user_name);


--
-- Name: node_id_idx; Type: INDEX; Schema: public; Owner: jira
--

CREATE UNIQUE INDEX node_id_idx ON public.nodeindexcounter USING btree (node_id, sending_node_id);


--
-- Name: node_operation_idx; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX node_operation_idx ON public.replicatedindexoperation USING btree (node_id, affected_index, operation, index_time);


--
-- Name: node_sink; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX node_sink ON public.nodeassociation USING btree (sink_node_id, sink_node_entity);


--
-- Name: node_source; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX node_source ON public.nodeassociation USING btree (source_node_id, source_node_entity);


--
-- Name: notif_messageid; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX notif_messageid ON public.notificationinstance USING btree (messageid);


--
-- Name: notif_source; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX notif_source ON public.notificationinstance USING btree (source);


--
-- Name: ntfctn_scheme; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX ntfctn_scheme ON public.notification USING btree (scheme);


--
-- Name: oauth_consumer_index; Type: INDEX; Schema: public; Owner: jira
--

CREATE UNIQUE INDEX oauth_consumer_index ON public.oauthconsumer USING btree (consumer_key);


--
-- Name: oauth_consumer_service_index; Type: INDEX; Schema: public; Owner: jira
--

CREATE UNIQUE INDEX oauth_consumer_service_index ON public.oauthconsumer USING btree (consumerservice);


--
-- Name: oauth_consumer_token_index; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX oauth_consumer_token_index ON public.oauthconsumertoken USING btree (token);


--
-- Name: oauth_consumer_token_key_index; Type: INDEX; Schema: public; Owner: jira
--

CREATE UNIQUE INDEX oauth_consumer_token_key_index ON public.oauthconsumertoken USING btree (token_key);


--
-- Name: oauth_sp_consumer_index; Type: INDEX; Schema: public; Owner: jira
--

CREATE UNIQUE INDEX oauth_sp_consumer_index ON public.oauthspconsumer USING btree (consumer_key);


--
-- Name: oauth_sp_consumer_key_index; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX oauth_sp_consumer_key_index ON public.oauthsptoken USING btree (consumer_key);


--
-- Name: oauth_sp_token_index; Type: INDEX; Schema: public; Owner: jira
--

CREATE UNIQUE INDEX oauth_sp_token_index ON public.oauthsptoken USING btree (token);


--
-- Name: ordernumber_idx; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX ordernumber_idx ON public.clusterupgradestate USING btree (order_number);


--
-- Name: osgroup_name; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX osgroup_name ON public.groupbase USING btree (groupname);


--
-- Name: osproperty_entid_name_propkey; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX osproperty_entid_name_propkey ON public.propertyentry USING btree (entity_id, entity_name, property_key);


--
-- Name: osproperty_propertykey; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX osproperty_propertykey ON public.propertyentry USING btree (property_key);


--
-- Name: osuser_name; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX osuser_name ON public.userbase USING btree (username);


--
-- Name: permission_key_idx; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX permission_key_idx ON public.schemepermissions USING btree (permission_key);


--
-- Name: ppage_username; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX ppage_username ON public.portalpage USING btree (username);


--
-- Name: prmssn_scheme; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX prmssn_scheme ON public.schemepermissions USING btree (scheme);


--
-- Name: prmssn_scheme_attr_idx; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX prmssn_scheme_attr_idx ON public.permissionschemeattribute USING btree (scheme);


--
-- Name: prmssn_scheme_attr_key_idx; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX prmssn_scheme_attr_key_idx ON public.permissionschemeattribute USING btree (scheme, attribute_key);


--
-- Name: remembermetoken_username_index; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX remembermetoken_username_index ON public.remembermetoken USING btree (username);


--
-- Name: remotelink_globalid; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX remotelink_globalid ON public.remotelink USING btree (globalid);


--
-- Name: remotelink_issueid; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX remotelink_issueid ON public.remotelink USING btree (issueid, globalid);


--
-- Name: role_pid_idx; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX role_pid_idx ON public.projectroleactor USING btree (pid);


--
-- Name: role_player_idx; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX role_player_idx ON public.projectroleactor USING btree (projectroleid, pid);


--
-- Name: rundetails_jobid_idx; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX rundetails_jobid_idx ON public.rundetails USING btree (job_id);


--
-- Name: rundetails_starttime_idx; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX rundetails_starttime_idx ON public.rundetails USING btree (start_time);


--
-- Name: screenitem_scheme; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX screenitem_scheme ON public.fieldscreenschemeitem USING btree (fieldscreenscheme);


--
-- Name: searchrequest_filternamelower; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX searchrequest_filternamelower ON public.searchrequest USING btree (filtername_lower);


--
-- Name: sec_scheme; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX sec_scheme ON public.schemeissuesecurities USING btree (scheme);


--
-- Name: sec_security; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX sec_security ON public.schemeissuesecurities USING btree (security);


--
-- Name: share_index; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX share_index ON public.sharepermissions USING btree (entityid, entitytype);


--
-- Name: source_destination_node_idx; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX source_destination_node_idx ON public.clustermessage USING btree (source_node, destination_node);


--
-- Name: sr_author; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX sr_author ON public.searchrequest USING btree (authorname);


--
-- Name: subscrpt_user; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX subscrpt_user ON public.filtersubscription USING btree (filter_i_d, username);


--
-- Name: subscrptn_group; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX subscrptn_group ON public.filtersubscription USING btree (filter_i_d, groupname);


--
-- Name: trustedapp_id; Type: INDEX; Schema: public; Owner: jira
--

CREATE UNIQUE INDEX trustedapp_id ON public.trustedapp USING btree (application_id);


--
-- Name: type_key; Type: INDEX; Schema: public; Owner: jira
--

CREATE UNIQUE INDEX type_key ON public.genericconfiguration USING btree (datatype, datakey);


--
-- Name: uh_type_user_entity; Type: INDEX; Schema: public; Owner: jira
--

CREATE UNIQUE INDEX uh_type_user_entity ON public.userhistoryitem USING btree (entitytype, username, entityid);


--
-- Name: uk_application_name; Type: INDEX; Schema: public; Owner: jira
--

CREATE UNIQUE INDEX uk_application_name ON public.cwd_application USING btree (lower_application_name);


--
-- Name: uk_directory_name; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX uk_directory_name ON public.cwd_directory USING btree (lower_directory_name);


--
-- Name: uk_entitytranslation; Type: INDEX; Schema: public; Owner: jira
--

CREATE UNIQUE INDEX uk_entitytranslation ON public.entity_translation USING btree (entity_name, entity_id, locale);


--
-- Name: uk_group_attr_name_lval; Type: INDEX; Schema: public; Owner: jira
--

CREATE UNIQUE INDEX uk_group_attr_name_lval ON public.cwd_group_attributes USING btree (group_id, attribute_name, lower_attribute_value);


--
-- Name: uk_group_name_dir_id; Type: INDEX; Schema: public; Owner: jira
--

CREATE UNIQUE INDEX uk_group_name_dir_id ON public.cwd_group USING btree (lower_group_name, directory_id);


--
-- Name: uk_lower_user_name; Type: INDEX; Schema: public; Owner: jira
--

CREATE UNIQUE INDEX uk_lower_user_name ON public.app_user USING btree (lower_user_name);


--
-- Name: uk_mem_dir_parent_child; Type: INDEX; Schema: public; Owner: jira
--

CREATE UNIQUE INDEX uk_mem_dir_parent_child ON public.cwd_membership USING btree (lower_parent_name, lower_child_name, membership_type, directory_id);


--
-- Name: uk_user_attr_name_lval; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX uk_user_attr_name_lval ON public.cwd_user_attributes USING btree (user_id, attribute_name);


--
-- Name: uk_user_externalid_dir_id; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX uk_user_externalid_dir_id ON public.cwd_user USING btree (external_id, directory_id);


--
-- Name: uk_user_key; Type: INDEX; Schema: public; Owner: jira
--

CREATE UNIQUE INDEX uk_user_key ON public.app_user USING btree (user_key);


--
-- Name: uk_user_name_dir_id; Type: INDEX; Schema: public; Owner: jira
--

CREATE UNIQUE INDEX uk_user_name_dir_id ON public.cwd_user USING btree (lower_user_name, directory_id);


--
-- Name: upf_customfield; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX upf_customfield ON public.userpickerfilter USING btree (customfield);


--
-- Name: upf_fieldconfigid; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX upf_fieldconfigid ON public.userpickerfilter USING btree (customfieldconfig);


--
-- Name: user_sink; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX user_sink ON public.userassociation USING btree (sink_node_id, sink_node_entity);


--
-- Name: user_source; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX user_source ON public.userassociation USING btree (source_name);


--
-- Name: userpref_portletconfiguration; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX userpref_portletconfiguration ON public.gadgetuserpreference USING btree (portletconfiguration);


--
-- Name: votehistory_issue_index; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX votehistory_issue_index ON public.votehistory USING btree (issueid);


--
-- Name: wf_entryid; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX wf_entryid ON public.os_currentstep USING btree (entry_id);


--
-- Name: workflow_scheme; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX workflow_scheme ON public.workflowschemeentity USING btree (scheme);


--
-- Name: worklog_author; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX worklog_author ON public.worklog USING btree (author);


--
-- Name: worklog_issue; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX worklog_issue ON public.worklog USING btree (issueid);


--
-- Name: wv_deleted_update_time_idx; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX wv_deleted_update_time_idx ON public.worklog_version USING btree (deleted, update_time);


--
-- Name: wv_parent_id; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX wv_parent_id ON public.worklog_version USING btree (parent_issue_id);


--
-- Name: wv_update_time; Type: INDEX; Schema: public; Owner: jira
--

CREATE INDEX wv_update_time ON public.worklog_version USING btree (update_time);


--
-- Name: fk_ao_563aee_activity_entity_actor_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_activity_entity_actor_id FOREIGN KEY ("ACTOR_ID") REFERENCES public."AO_563AEE_ACTOR_ENTITY"("ID");


--
-- Name: fk_ao_563aee_activity_entity_icon_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_activity_entity_icon_id FOREIGN KEY ("ICON_ID") REFERENCES public."AO_563AEE_MEDIA_LINK_ENTITY"("ID");


--
-- Name: fk_ao_563aee_activity_entity_object_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_activity_entity_object_id FOREIGN KEY ("OBJECT_ID") REFERENCES public."AO_563AEE_OBJECT_ENTITY"("ID");


--
-- Name: fk_ao_563aee_activity_entity_target_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_activity_entity_target_id FOREIGN KEY ("TARGET_ID") REFERENCES public."AO_563AEE_TARGET_ENTITY"("ID");


--
-- Name: fk_ao_563aee_object_entity_image_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_563AEE_OBJECT_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_object_entity_image_id FOREIGN KEY ("IMAGE_ID") REFERENCES public."AO_563AEE_MEDIA_LINK_ENTITY"("ID");


--
-- Name: fk_ao_563aee_target_entity_image_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_563AEE_TARGET_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_target_entity_image_id FOREIGN KEY ("IMAGE_ID") REFERENCES public."AO_563AEE_MEDIA_LINK_ENTITY"("ID");


--
-- Name: fk_ao_589059_audit_item_asc_item_audit_item_component_change_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_AUDIT_ITEM_ASC_ITEM"
    ADD CONSTRAINT fk_ao_589059_audit_item_asc_item_audit_item_component_change_id FOREIGN KEY ("AUDIT_ITEM_COMPONENT_CHANGE_ID") REFERENCES public."AO_589059_AUDIT_ITEM_COMP_CGE"("ID");


--
-- Name: fk_ao_589059_audit_item_asc_item_audit_item_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_AUDIT_ITEM_ASC_ITEM"
    ADD CONSTRAINT fk_ao_589059_audit_item_asc_item_audit_item_id FOREIGN KEY ("AUDIT_ITEM_ID") REFERENCES public."AO_589059_AUDIT_ITEM"("ID");


--
-- Name: fk_ao_589059_audit_item_cge_item_audit_item_component_change_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_AUDIT_ITEM_CGE_ITEM"
    ADD CONSTRAINT fk_ao_589059_audit_item_cge_item_audit_item_component_change_id FOREIGN KEY ("AUDIT_ITEM_COMPONENT_CHANGE_ID") REFERENCES public."AO_589059_AUDIT_ITEM_COMP_CGE"("ID");


--
-- Name: fk_ao_589059_audit_item_cge_item_audit_item_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_AUDIT_ITEM_CGE_ITEM"
    ADD CONSTRAINT fk_ao_589059_audit_item_cge_item_audit_item_id FOREIGN KEY ("AUDIT_ITEM_ID") REFERENCES public."AO_589059_AUDIT_ITEM"("ID");


--
-- Name: fk_ao_589059_audit_item_comp_cge_audit_item_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_AUDIT_ITEM_COMP_CGE"
    ADD CONSTRAINT fk_ao_589059_audit_item_comp_cge_audit_item_id FOREIGN KEY ("AUDIT_ITEM_ID") REFERENCES public."AO_589059_AUDIT_ITEM"("ID");


--
-- Name: fk_ao_589059_audit_item_project_audit_item_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_AUDIT_ITEM_PROJECT"
    ADD CONSTRAINT fk_ao_589059_audit_item_project_audit_item_id FOREIGN KEY ("AUDIT_ITEM_ID") REFERENCES public."AO_589059_AUDIT_ITEM"("ID");


--
-- Name: fk_ao_589059_automation_queue_audit_item_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_AUTOMATION_QUEUE"
    ADD CONSTRAINT fk_ao_589059_automation_queue_audit_item_id FOREIGN KEY ("AUDIT_ITEM_ID") REFERENCES public."AO_589059_AUDIT_ITEM"("ID");


--
-- Name: fk_ao_589059_rule_cfg_component_condition_parent_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_CFG_COMPONENT"
    ADD CONSTRAINT fk_ao_589059_rule_cfg_component_condition_parent_id FOREIGN KEY ("CONDITION_PARENT_ID") REFERENCES public."AO_589059_RULE_CFG_COMPONENT"("ID");


--
-- Name: fk_ao_589059_rule_cfg_component_parent_cfg_component_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_CFG_COMPONENT"
    ADD CONSTRAINT fk_ao_589059_rule_cfg_component_parent_cfg_component_id FOREIGN KEY ("PARENT_CFG_COMPONENT_ID") REFERENCES public."AO_589059_RULE_CFG_COMPONENT"("ID");


--
-- Name: fk_ao_589059_rule_cfg_component_rule_config_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_CFG_COMPONENT"
    ADD CONSTRAINT fk_ao_589059_rule_cfg_component_rule_config_id FOREIGN KEY ("RULE_CONFIG_ID") REFERENCES public."AO_589059_RULE_CONFIG"("ID");


--
-- Name: fk_ao_589059_rule_cfg_proj_assoc_rule_config_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_CFG_PROJ_ASSOC"
    ADD CONSTRAINT fk_ao_589059_rule_cfg_proj_assoc_rule_config_id FOREIGN KEY ("RULE_CONFIG_ID") REFERENCES public."AO_589059_RULE_CONFIG"("ID");


--
-- Name: fk_ao_589059_rule_schedule_rule_config_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_SCHEDULE"
    ADD CONSTRAINT fk_ao_589059_rule_schedule_rule_config_id FOREIGN KEY ("RULE_CONFIG_ID") REFERENCES public."AO_589059_RULE_CONFIG"("ID");


--
-- Name: fk_ao_589059_rule_tag_rule_config_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_TAG"
    ADD CONSTRAINT fk_ao_589059_rule_tag_rule_config_id FOREIGN KEY ("RULE_CONFIG_ID") REFERENCES public."AO_589059_RULE_CONFIG"("ID");


--
-- Name: fk_ao_589059_rule_to_label_label_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_TO_LABEL"
    ADD CONSTRAINT fk_ao_589059_rule_to_label_label_id FOREIGN KEY ("LABEL_ID") REFERENCES public."AO_589059_RULE_LABEL"("ID");


--
-- Name: fk_ao_589059_rule_to_label_rule_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_TO_LABEL"
    ADD CONSTRAINT fk_ao_589059_rule_to_label_rule_id FOREIGN KEY ("RULE_ID") REFERENCES public."AO_589059_RULE_CONFIG"("ID");


--
-- Name: fk_ao_589059_rule_to_secret_rule_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_RULE_TO_SECRET"
    ADD CONSTRAINT fk_ao_589059_rule_to_secret_rule_id FOREIGN KEY ("RULE_ID") REFERENCES public."AO_589059_RULE_CONFIG"("ID");


--
-- Name: fk_ao_589059_secret_proj_assoc_rule_secret_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_589059_SECRET_PROJ_ASSOC"
    ADD CONSTRAINT fk_ao_589059_secret_proj_assoc_rule_secret_id FOREIGN KEY ("RULE_SECRET_ID") REFERENCES public."AO_589059_RULE_SECRET"("ID");


--
-- Name: fk_ao_60db71_boardadmins_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_BOARDADMINS"
    ADD CONSTRAINT fk_ao_60db71_boardadmins_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES public."AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_60db71_cardcolor_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_CARDCOLOR"
    ADD CONSTRAINT fk_ao_60db71_cardcolor_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES public."AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_60db71_cardlayout_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_CARDLAYOUT"
    ADD CONSTRAINT fk_ao_60db71_cardlayout_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES public."AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_60db71_column_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_COLUMN"
    ADD CONSTRAINT fk_ao_60db71_column_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES public."AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_60db71_columnstatus_column_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_COLUMNSTATUS"
    ADD CONSTRAINT fk_ao_60db71_columnstatus_column_id FOREIGN KEY ("COLUMN_ID") REFERENCES public."AO_60DB71_COLUMN"("ID");


--
-- Name: fk_ao_60db71_detailviewfield_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_DETAILVIEWFIELD"
    ADD CONSTRAINT fk_ao_60db71_detailviewfield_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES public."AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_60db71_estimatestatistic_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_ESTIMATESTATISTIC"
    ADD CONSTRAINT fk_ao_60db71_estimatestatistic_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES public."AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_60db71_nonworkingday_working_days_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_NONWORKINGDAY"
    ADD CONSTRAINT fk_ao_60db71_nonworkingday_working_days_id FOREIGN KEY ("WORKING_DAYS_ID") REFERENCES public."AO_60DB71_WORKINGDAYS"("ID");


--
-- Name: fk_ao_60db71_quickfilter_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_QUICKFILTER"
    ADD CONSTRAINT fk_ao_60db71_quickfilter_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES public."AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_60db71_statsfield_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_STATSFIELD"
    ADD CONSTRAINT fk_ao_60db71_statsfield_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES public."AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_60db71_subquery_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_SUBQUERY"
    ADD CONSTRAINT fk_ao_60db71_subquery_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES public."AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_60db71_swimlane_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_SWIMLANE"
    ADD CONSTRAINT fk_ao_60db71_swimlane_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES public."AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_60db71_trackingstatistic_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_TRACKINGSTATISTIC"
    ADD CONSTRAINT fk_ao_60db71_trackingstatistic_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES public."AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_60db71_workingdays_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_60DB71_WORKINGDAYS"
    ADD CONSTRAINT fk_ao_60db71_workingdays_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES public."AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_6ff49d_access_log_prc_ctrl_inst_analysis_ctrl_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_ACCESS_LOG_PRC_CTRL"
    ADD CONSTRAINT fk_ao_6ff49d_access_log_prc_ctrl_inst_analysis_ctrl_id FOREIGN KEY ("INST_ANALYSIS_CTRL_ID") REFERENCES public."AO_6FF49D_INST_ANALYSIS_CTRL"("ID");


--
-- Name: fk_ao_6ff49d_access_log_prc_item_access_log_proc_ctrl_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_ACCESS_LOG_PRC_ITEM"
    ADD CONSTRAINT fk_ao_6ff49d_access_log_prc_item_access_log_proc_ctrl_id FOREIGN KEY ("ACCESS_LOG_PROC_CTRL_ID") REFERENCES public."AO_6FF49D_ACCESS_LOG_PRC_CTRL"("ID");


--
-- Name: fk_ao_6ff49d_daily_usage_metrics_inst_analysis_ctrl_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_6FF49D_DAILY_USAGE_METRICS"
    ADD CONSTRAINT fk_ao_6ff49d_daily_usage_metrics_inst_analysis_ctrl_id FOREIGN KEY ("INST_ANALYSIS_CTRL_ID") REFERENCES public."AO_6FF49D_INST_ANALYSIS_CTRL"("ID");


--
-- Name: fk_ao_733371_event_parameter_event_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_733371_EVENT_PARAMETER"
    ADD CONSTRAINT fk_ao_733371_event_parameter_event_id FOREIGN KEY ("EVENT_ID") REFERENCES public."AO_733371_EVENT"("ID");


--
-- Name: fk_ao_733371_event_recipient_event_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_733371_EVENT_RECIPIENT"
    ADD CONSTRAINT fk_ao_733371_event_recipient_event_id FOREIGN KEY ("EVENT_ID") REFERENCES public."AO_733371_EVENT"("ID");


--
-- Name: fk_ao_82b313_ability_person_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_82B313_ABILITY"
    ADD CONSTRAINT fk_ao_82b313_ability_person_id FOREIGN KEY ("PERSON_ID") REFERENCES public."AO_82B313_PERSON"("ID");


--
-- Name: fk_ao_82b313_ability_skill_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_82B313_ABILITY"
    ADD CONSTRAINT fk_ao_82b313_ability_skill_id FOREIGN KEY ("SKILL_ID") REFERENCES public."AO_82B313_SKILL"("ID");


--
-- Name: fk_ao_82b313_absence_person_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_82B313_ABSENCE"
    ADD CONSTRAINT fk_ao_82b313_absence_person_id FOREIGN KEY ("PERSON_ID") REFERENCES public."AO_82B313_PERSON"("ID");


--
-- Name: fk_ao_82b313_availability_resource_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_82B313_AVAILABILITY"
    ADD CONSTRAINT fk_ao_82b313_availability_resource_id FOREIGN KEY ("RESOURCE_ID") REFERENCES public."AO_82B313_RESOURCE"("ID");


--
-- Name: fk_ao_82b313_resource_person_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_82B313_RESOURCE"
    ADD CONSTRAINT fk_ao_82b313_resource_person_id FOREIGN KEY ("PERSON_ID") REFERENCES public."AO_82B313_PERSON"("ID");


--
-- Name: fk_ao_82b313_resource_team_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_82B313_RESOURCE"
    ADD CONSTRAINT fk_ao_82b313_resource_team_id FOREIGN KEY ("TEAM_ID") REFERENCES public."AO_82B313_TEAM"("ID");


--
-- Name: fk_ao_a415df_aoability_aoperson_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOABILITY"
    ADD CONSTRAINT fk_ao_a415df_aoability_aoperson_id FOREIGN KEY ("AOPERSON_ID") REFERENCES public."AO_A415DF_AOPERSON"("ID_OTHER");


--
-- Name: fk_ao_a415df_aoabsence_aoperson_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOABSENCE"
    ADD CONSTRAINT fk_ao_a415df_aoabsence_aoperson_id FOREIGN KEY ("AOPERSON_ID") REFERENCES public."AO_A415DF_AOPERSON"("ID_OTHER");


--
-- Name: fk_ao_a415df_aoavailability_aoresource_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOAVAILABILITY"
    ADD CONSTRAINT fk_ao_a415df_aoavailability_aoresource_id FOREIGN KEY ("AORESOURCE_ID") REFERENCES public."AO_A415DF_AORESOURCE"("ID_OTHER");


--
-- Name: fk_ao_a415df_aoestimate_aowork_item_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOESTIMATE"
    ADD CONSTRAINT fk_ao_a415df_aoestimate_aowork_item_id FOREIGN KEY ("AOWORK_ITEM_ID") REFERENCES public."AO_A415DF_AOWORK_ITEM"("ID_OTHER");


--
-- Name: fk_ao_a415df_aonon_working_days_aoplan_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AONON_WORKING_DAYS"
    ADD CONSTRAINT fk_ao_a415df_aonon_working_days_aoplan_id FOREIGN KEY ("AOPLAN_ID") REFERENCES public."AO_A415DF_AOPLAN"("ID_OTHER");


--
-- Name: fk_ao_a415df_aoperson_aoplan_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOPERSON"
    ADD CONSTRAINT fk_ao_a415df_aoperson_aoplan_id FOREIGN KEY ("AOPLAN_ID") REFERENCES public."AO_A415DF_AOPLAN"("ID_OTHER");


--
-- Name: fk_ao_a415df_aoplan_configuration_aoplan_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOPLAN_CONFIGURATION"
    ADD CONSTRAINT fk_ao_a415df_aoplan_configuration_aoplan_id FOREIGN KEY ("AOPLAN_ID") REFERENCES public."AO_A415DF_AOPLAN"("ID_OTHER");


--
-- Name: fk_ao_a415df_aopresence_aoperson_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOPRESENCE"
    ADD CONSTRAINT fk_ao_a415df_aopresence_aoperson_id FOREIGN KEY ("AOPERSON_ID") REFERENCES public."AO_A415DF_AOPERSON"("ID_OTHER");


--
-- Name: fk_ao_a415df_aorelease_aoplan_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AORELEASE"
    ADD CONSTRAINT fk_ao_a415df_aorelease_aoplan_id FOREIGN KEY ("AOPLAN_ID") REFERENCES public."AO_A415DF_AOPLAN"("ID_OTHER");


--
-- Name: fk_ao_a415df_aorelease_aostream_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AORELEASE"
    ADD CONSTRAINT fk_ao_a415df_aorelease_aostream_id FOREIGN KEY ("AOSTREAM_ID") REFERENCES public."AO_A415DF_AOSTREAM"("ID_OTHER");


--
-- Name: fk_ao_a415df_aoreplanning_work_item_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOREPLANNING"
    ADD CONSTRAINT fk_ao_a415df_aoreplanning_work_item_id FOREIGN KEY ("WORK_ITEM_ID") REFERENCES public."AO_A415DF_AOWORK_ITEM"("ID_OTHER");


--
-- Name: fk_ao_a415df_aoresource_aoperson_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AORESOURCE"
    ADD CONSTRAINT fk_ao_a415df_aoresource_aoperson_id FOREIGN KEY ("AOPERSON_ID") REFERENCES public."AO_A415DF_AOPERSON"("ID_OTHER");


--
-- Name: fk_ao_a415df_aoresource_aoteam_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AORESOURCE"
    ADD CONSTRAINT fk_ao_a415df_aoresource_aoteam_id FOREIGN KEY ("AOTEAM_ID") REFERENCES public."AO_A415DF_AOTEAM"("ID_OTHER");


--
-- Name: fk_ao_a415df_aoskill_aostage_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOSKILL"
    ADD CONSTRAINT fk_ao_a415df_aoskill_aostage_id FOREIGN KEY ("AOSTAGE_ID") REFERENCES public."AO_A415DF_AOSTAGE"("ID_OTHER");


--
-- Name: fk_ao_a415df_aosprint_aoteam_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOSPRINT"
    ADD CONSTRAINT fk_ao_a415df_aosprint_aoteam_id FOREIGN KEY ("AOTEAM_ID") REFERENCES public."AO_A415DF_AOTEAM"("ID_OTHER");


--
-- Name: fk_ao_a415df_aostage_aoplan_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOSTAGE"
    ADD CONSTRAINT fk_ao_a415df_aostage_aoplan_id FOREIGN KEY ("AOPLAN_ID") REFERENCES public."AO_A415DF_AOPLAN"("ID_OTHER");


--
-- Name: fk_ao_a415df_aostream_aoplan_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOSTREAM"
    ADD CONSTRAINT fk_ao_a415df_aostream_aoplan_id FOREIGN KEY ("AOPLAN_ID") REFERENCES public."AO_A415DF_AOPLAN"("ID_OTHER");


--
-- Name: fk_ao_a415df_aostream_to_team_aostream_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOSTREAM_TO_TEAM"
    ADD CONSTRAINT fk_ao_a415df_aostream_to_team_aostream_id FOREIGN KEY ("AOSTREAM_ID") REFERENCES public."AO_A415DF_AOSTREAM"("ID_OTHER");


--
-- Name: fk_ao_a415df_aostream_to_team_aoteam_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOSTREAM_TO_TEAM"
    ADD CONSTRAINT fk_ao_a415df_aostream_to_team_aoteam_id FOREIGN KEY ("AOTEAM_ID") REFERENCES public."AO_A415DF_AOTEAM"("ID_OTHER");


--
-- Name: fk_ao_a415df_aoteam_aoplan_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOTEAM"
    ADD CONSTRAINT fk_ao_a415df_aoteam_aoplan_id FOREIGN KEY ("AOPLAN_ID") REFERENCES public."AO_A415DF_AOPLAN"("ID_OTHER");


--
-- Name: fk_ao_a415df_aotheme_aoplan_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOTHEME"
    ADD CONSTRAINT fk_ao_a415df_aotheme_aoplan_id FOREIGN KEY ("AOPLAN_ID") REFERENCES public."AO_A415DF_AOPLAN"("ID_OTHER");


--
-- Name: fk_ao_a415df_aowork_item_aoparent_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOWORK_ITEM"
    ADD CONSTRAINT fk_ao_a415df_aowork_item_aoparent_id FOREIGN KEY ("AOPARENT_ID") REFERENCES public."AO_A415DF_AOWORK_ITEM"("ID_OTHER");


--
-- Name: fk_ao_a415df_aowork_item_aoplan_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOWORK_ITEM"
    ADD CONSTRAINT fk_ao_a415df_aowork_item_aoplan_id FOREIGN KEY ("AOPLAN_ID") REFERENCES public."AO_A415DF_AOPLAN"("ID_OTHER");


--
-- Name: fk_ao_a415df_aowork_item_aorelease_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOWORK_ITEM"
    ADD CONSTRAINT fk_ao_a415df_aowork_item_aorelease_id FOREIGN KEY ("AORELEASE_ID") REFERENCES public."AO_A415DF_AORELEASE"("ID_OTHER");


--
-- Name: fk_ao_a415df_aowork_item_aosprint_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOWORK_ITEM"
    ADD CONSTRAINT fk_ao_a415df_aowork_item_aosprint_id FOREIGN KEY ("AOSPRINT_ID") REFERENCES public."AO_A415DF_AOSPRINT"("ID_OTHER");


--
-- Name: fk_ao_a415df_aowork_item_aostream_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOWORK_ITEM"
    ADD CONSTRAINT fk_ao_a415df_aowork_item_aostream_id FOREIGN KEY ("AOSTREAM_ID") REFERENCES public."AO_A415DF_AOSTREAM"("ID_OTHER");


--
-- Name: fk_ao_a415df_aowork_item_aoteam_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOWORK_ITEM"
    ADD CONSTRAINT fk_ao_a415df_aowork_item_aoteam_id FOREIGN KEY ("AOTEAM_ID") REFERENCES public."AO_A415DF_AOTEAM"("ID_OTHER");


--
-- Name: fk_ao_a415df_aowork_item_aotheme_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOWORK_ITEM"
    ADD CONSTRAINT fk_ao_a415df_aowork_item_aotheme_id FOREIGN KEY ("AOTHEME_ID") REFERENCES public."AO_A415DF_AOTHEME"("ID_OTHER");


--
-- Name: fk_ao_a415df_aowork_item_to_res_aoresource_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOWORK_ITEM_TO_RES"
    ADD CONSTRAINT fk_ao_a415df_aowork_item_to_res_aoresource_id FOREIGN KEY ("AORESOURCE_ID") REFERENCES public."AO_A415DF_AORESOURCE"("ID_OTHER");


--
-- Name: fk_ao_a415df_aowork_item_to_res_aowork_item_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_A415DF_AOWORK_ITEM_TO_RES"
    ADD CONSTRAINT fk_ao_a415df_aowork_item_to_res_aowork_item_id FOREIGN KEY ("AOWORK_ITEM_ID") REFERENCES public."AO_A415DF_AOWORK_ITEM"("ID_OTHER");


--
-- Name: fk_ao_d9132d_assignment_ext_solution_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_ASSIGNMENT_EXT"
    ADD CONSTRAINT fk_ao_d9132d_assignment_ext_solution_id FOREIGN KEY ("SOLUTION_ID") REFERENCES public."AO_D9132D_SOLUTION"("ID");


--
-- Name: fk_ao_d9132d_assignment_solution_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_ASSIGNMENT"
    ADD CONSTRAINT fk_ao_d9132d_assignment_solution_id FOREIGN KEY ("SOLUTION_ID") REFERENCES public."AO_D9132D_SOLUTION"("ID");


--
-- Name: fk_ao_d9132d_distribution_scenario_issue_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_DISTRIBUTION"
    ADD CONSTRAINT fk_ao_d9132d_distribution_scenario_issue_id FOREIGN KEY ("SCENARIO_ISSUE_ID") REFERENCES public."AO_D9132D_SCENARIO_ISSUES"("ID");


--
-- Name: fk_ao_d9132d_excluded_issue_types_plan_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_EXCLUDED_ISSUE_TYPES"
    ADD CONSTRAINT fk_ao_d9132d_excluded_issue_types_plan_id FOREIGN KEY ("PLAN_ID") REFERENCES public."AO_D9132D_PLAN"("ID");


--
-- Name: fk_ao_d9132d_excluded_statuscats_plan_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_EXCLUDED_STATUSCATS"
    ADD CONSTRAINT fk_ao_d9132d_excluded_statuscats_plan_id FOREIGN KEY ("PLAN_ID") REFERENCES public."AO_D9132D_PLAN"("ID");


--
-- Name: fk_ao_d9132d_excluded_statuses_plan_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_EXCLUDED_STATUSES"
    ADD CONSTRAINT fk_ao_d9132d_excluded_statuses_plan_id FOREIGN KEY ("PLAN_ID") REFERENCES public."AO_D9132D_PLAN"("ID");


--
-- Name: fk_ao_d9132d_excluded_versions_plan_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_EXCLUDED_VERSIONS"
    ADD CONSTRAINT fk_ao_d9132d_excluded_versions_plan_id FOREIGN KEY ("PLAN_ID") REFERENCES public."AO_D9132D_PLAN"("ID");


--
-- Name: fk_ao_d9132d_issue_source_plan_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_ISSUE_SOURCE"
    ADD CONSTRAINT fk_ao_d9132d_issue_source_plan_id FOREIGN KEY ("PLAN_ID") REFERENCES public."AO_D9132D_PLAN"("ID");


--
-- Name: fk_ao_d9132d_nonworkingdays_plan_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_NONWORKINGDAYS"
    ADD CONSTRAINT fk_ao_d9132d_nonworkingdays_plan_id FOREIGN KEY ("PLAN_ID") REFERENCES public."AO_D9132D_PLAN"("ID");


--
-- Name: fk_ao_d9132d_permissions_plan_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PERMISSIONS"
    ADD CONSTRAINT fk_ao_d9132d_permissions_plan_id FOREIGN KEY ("PLAN_ID") REFERENCES public."AO_D9132D_PLAN"("ID");


--
-- Name: fk_ao_d9132d_permissions_program_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PERMISSIONS"
    ADD CONSTRAINT fk_ao_d9132d_permissions_program_id FOREIGN KEY ("PROGRAM_ID") REFERENCES public."AO_D9132D_PROGRAM"("ID");


--
-- Name: fk_ao_d9132d_plan_custom_field_plan_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PLAN_CUSTOM_FIELD"
    ADD CONSTRAINT fk_ao_d9132d_plan_custom_field_plan_id FOREIGN KEY ("PLAN_ID") REFERENCES public."AO_D9132D_PLAN"("ID");


--
-- Name: fk_ao_d9132d_plan_user_property_plan_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PLAN_USER_PROPERTY"
    ADD CONSTRAINT fk_ao_d9132d_plan_user_property_plan_id FOREIGN KEY ("PLAN_ID") REFERENCES public."AO_D9132D_PLAN"("ID");


--
-- Name: fk_ao_d9132d_planned_capacity_plan_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PLANNED_CAPACITY"
    ADD CONSTRAINT fk_ao_d9132d_planned_capacity_plan_id FOREIGN KEY ("PLAN_ID") REFERENCES public."AO_D9132D_PLAN"("ID");


--
-- Name: fk_ao_d9132d_planskill_plan_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PLANSKILL"
    ADD CONSTRAINT fk_ao_d9132d_planskill_plan_id FOREIGN KEY ("PLAN_ID") REFERENCES public."AO_D9132D_PLAN"("ID");


--
-- Name: fk_ao_d9132d_planteam_issue_source_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PLANTEAM"
    ADD CONSTRAINT fk_ao_d9132d_planteam_issue_source_id FOREIGN KEY ("ISSUE_SOURCE_ID") REFERENCES public."AO_D9132D_ISSUE_SOURCE"("ID");


--
-- Name: fk_ao_d9132d_planteam_plan_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PLANTEAM"
    ADD CONSTRAINT fk_ao_d9132d_planteam_plan_id FOREIGN KEY ("PLAN_ID") REFERENCES public."AO_D9132D_PLAN"("ID");


--
-- Name: fk_ao_d9132d_plantheme_plan_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PLANTHEME"
    ADD CONSTRAINT fk_ao_d9132d_plantheme_plan_id FOREIGN KEY ("PLAN_ID") REFERENCES public."AO_D9132D_PLAN"("ID");


--
-- Name: fk_ao_d9132d_plantheme_theme_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PLANTHEME"
    ADD CONSTRAINT fk_ao_d9132d_plantheme_theme_id FOREIGN KEY ("THEME_ID") REFERENCES public."AO_D9132D_THEME"("ID");


--
-- Name: fk_ao_d9132d_planversion_plan_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PLANVERSION"
    ADD CONSTRAINT fk_ao_d9132d_planversion_plan_id FOREIGN KEY ("PLAN_ID") REFERENCES public."AO_D9132D_PLAN"("ID");


--
-- Name: fk_ao_d9132d_planversion_xproject_version_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PLANVERSION"
    ADD CONSTRAINT fk_ao_d9132d_planversion_xproject_version_id FOREIGN KEY ("XPROJECT_VERSION_ID") REFERENCES public."AO_D9132D_X_PROJECT_VERSION"("ID");


--
-- Name: fk_ao_d9132d_program_custom_field_program_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_PROGRAM_CUSTOM_FIELD"
    ADD CONSTRAINT fk_ao_d9132d_program_custom_field_program_id FOREIGN KEY ("PROGRAM_ID") REFERENCES public."AO_D9132D_PROGRAM"("ID");


--
-- Name: fk_ao_d9132d_scen_cstm_fld_mval_scenario_issue_custom_field_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCEN_CSTM_FLD_MVAL"
    ADD CONSTRAINT fk_ao_d9132d_scen_cstm_fld_mval_scenario_issue_custom_field_id FOREIGN KEY ("SCENARIO_ISSUE_CUSTOM_FIELD_ID") REFERENCES public."AO_D9132D_SCEN_CUSTOM_FIELD"("ID");


--
-- Name: fk_ao_d9132d_scen_custom_field_plan_custom_field_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCEN_CUSTOM_FIELD"
    ADD CONSTRAINT fk_ao_d9132d_scen_custom_field_plan_custom_field_id FOREIGN KEY ("PLAN_CUSTOM_FIELD_ID") REFERENCES public."AO_D9132D_PLAN_CUSTOM_FIELD"("ID");


--
-- Name: fk_ao_d9132d_scen_custom_field_scenario_issue_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCEN_CUSTOM_FIELD"
    ADD CONSTRAINT fk_ao_d9132d_scen_custom_field_scenario_issue_id FOREIGN KEY ("SCENARIO_ISSUE_ID") REFERENCES public."AO_D9132D_SCENARIO_ISSUES"("ID");


--
-- Name: fk_ao_d9132d_scen_team_ex_sprint_scenario_team_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCEN_TEAM_EX_SPRINT"
    ADD CONSTRAINT fk_ao_d9132d_scen_team_ex_sprint_scenario_team_id FOREIGN KEY ("SCENARIO_TEAM_ID") REFERENCES public."AO_D9132D_SCENARIO_TEAM"("ID");


--
-- Name: fk_ao_d9132d_scenario_ability_scenario_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_ABILITY"
    ADD CONSTRAINT fk_ao_d9132d_scenario_ability_scenario_id FOREIGN KEY ("SCENARIO_ID") REFERENCES public."AO_D9132D_SCENARIO"("ID");


--
-- Name: fk_ao_d9132d_scenario_avlblty_scenario_resource_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_AVLBLTY"
    ADD CONSTRAINT fk_ao_d9132d_scenario_avlblty_scenario_resource_id FOREIGN KEY ("SCENARIO_RESOURCE_ID") REFERENCES public."AO_D9132D_SCENARIO_RESOURCE"("ID");


--
-- Name: fk_ao_d9132d_scenario_changes_scenario_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_CHANGES"
    ADD CONSTRAINT fk_ao_d9132d_scenario_changes_scenario_id FOREIGN KEY ("SCENARIO_ID") REFERENCES public."AO_D9132D_SCENARIO"("ID");


--
-- Name: fk_ao_d9132d_scenario_issue_cmpnt_scenario_issue_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_ISSUE_CMPNT"
    ADD CONSTRAINT fk_ao_d9132d_scenario_issue_cmpnt_scenario_issue_id FOREIGN KEY ("SCENARIO_ISSUE_ID") REFERENCES public."AO_D9132D_SCENARIO_ISSUES"("ID");


--
-- Name: fk_ao_d9132d_scenario_issue_label_scenario_issue_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_ISSUE_LABEL"
    ADD CONSTRAINT fk_ao_d9132d_scenario_issue_label_scenario_issue_id FOREIGN KEY ("SCENARIO_ISSUE_ID") REFERENCES public."AO_D9132D_SCENARIO_ISSUES"("ID");


--
-- Name: fk_ao_d9132d_scenario_issue_links_scenario_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_ISSUE_LINKS"
    ADD CONSTRAINT fk_ao_d9132d_scenario_issue_links_scenario_id FOREIGN KEY ("SCENARIO_ID") REFERENCES public."AO_D9132D_SCENARIO"("ID");


--
-- Name: fk_ao_d9132d_scenario_issue_res_scenario_issue_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_ISSUE_RES"
    ADD CONSTRAINT fk_ao_d9132d_scenario_issue_res_scenario_issue_id FOREIGN KEY ("SCENARIO_ISSUE_ID") REFERENCES public."AO_D9132D_SCENARIO_ISSUES"("ID");


--
-- Name: fk_ao_d9132d_scenario_issues_scenario_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_ISSUES"
    ADD CONSTRAINT fk_ao_d9132d_scenario_issues_scenario_id FOREIGN KEY ("SCENARIO_ID") REFERENCES public."AO_D9132D_SCENARIO"("ID");


--
-- Name: fk_ao_d9132d_scenario_person_scenario_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_PERSON"
    ADD CONSTRAINT fk_ao_d9132d_scenario_person_scenario_id FOREIGN KEY ("SCENARIO_ID") REFERENCES public."AO_D9132D_SCENARIO"("ID");


--
-- Name: fk_ao_d9132d_scenario_plan_cap_scenario_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_PLAN_CAP"
    ADD CONSTRAINT fk_ao_d9132d_scenario_plan_cap_scenario_id FOREIGN KEY ("SCENARIO_ID") REFERENCES public."AO_D9132D_SCENARIO"("ID");


--
-- Name: fk_ao_d9132d_scenario_plan_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO"
    ADD CONSTRAINT fk_ao_d9132d_scenario_plan_id FOREIGN KEY ("PLAN_ID") REFERENCES public."AO_D9132D_PLAN"("ID");


--
-- Name: fk_ao_d9132d_scenario_resource_scenario_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_RESOURCE"
    ADD CONSTRAINT fk_ao_d9132d_scenario_resource_scenario_id FOREIGN KEY ("SCENARIO_ID") REFERENCES public."AO_D9132D_SCENARIO"("ID");


--
-- Name: fk_ao_d9132d_scenario_skill_scenario_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_SKILL"
    ADD CONSTRAINT fk_ao_d9132d_scenario_skill_scenario_id FOREIGN KEY ("SCENARIO_ID") REFERENCES public."AO_D9132D_SCENARIO"("ID");


--
-- Name: fk_ao_d9132d_scenario_stage_scenario_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_STAGE"
    ADD CONSTRAINT fk_ao_d9132d_scenario_stage_scenario_id FOREIGN KEY ("SCENARIO_ID") REFERENCES public."AO_D9132D_SCENARIO"("ID");


--
-- Name: fk_ao_d9132d_scenario_team_issue_source_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_TEAM"
    ADD CONSTRAINT fk_ao_d9132d_scenario_team_issue_source_id FOREIGN KEY ("ISSUE_SOURCE_ID") REFERENCES public."AO_D9132D_ISSUE_SOURCE"("ID");


--
-- Name: fk_ao_d9132d_scenario_team_scenario_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_TEAM"
    ADD CONSTRAINT fk_ao_d9132d_scenario_team_scenario_id FOREIGN KEY ("SCENARIO_ID") REFERENCES public."AO_D9132D_SCENARIO"("ID");


--
-- Name: fk_ao_d9132d_scenario_theme_scenario_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_THEME"
    ADD CONSTRAINT fk_ao_d9132d_scenario_theme_scenario_id FOREIGN KEY ("SCENARIO_ID") REFERENCES public."AO_D9132D_SCENARIO"("ID");


--
-- Name: fk_ao_d9132d_scenario_version_scenario_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_VERSION"
    ADD CONSTRAINT fk_ao_d9132d_scenario_version_scenario_id FOREIGN KEY ("SCENARIO_ID") REFERENCES public."AO_D9132D_SCENARIO"("ID");


--
-- Name: fk_ao_d9132d_scenario_xpversion_scenario_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SCENARIO_XPVERSION"
    ADD CONSTRAINT fk_ao_d9132d_scenario_xpversion_scenario_id FOREIGN KEY ("SCENARIO_ID") REFERENCES public."AO_D9132D_SCENARIO"("ID");


--
-- Name: fk_ao_d9132d_shared_report_plan_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_SHARED_REPORT"
    ADD CONSTRAINT fk_ao_d9132d_shared_report_plan_id FOREIGN KEY ("PLAN_ID") REFERENCES public."AO_D9132D_PLAN"("ID");


--
-- Name: fk_ao_d9132d_stage_plan_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_STAGE"
    ADD CONSTRAINT fk_ao_d9132d_stage_plan_id FOREIGN KEY ("PLAN_ID") REFERENCES public."AO_D9132D_PLAN"("ID");


--
-- Name: fk_ao_d9132d_team_ex_sprint_plan_team_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_TEAM_EX_SPRINT"
    ADD CONSTRAINT fk_ao_d9132d_team_ex_sprint_plan_team_id FOREIGN KEY ("PLAN_TEAM_ID") REFERENCES public."AO_D9132D_PLANTEAM"("ID");


--
-- Name: fk_ao_d9132d_x_project_version_plan_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_D9132D_X_PROJECT_VERSION"
    ADD CONSTRAINT fk_ao_d9132d_x_project_version_plan_id FOREIGN KEY ("PLAN_ID") REFERENCES public."AO_D9132D_PLAN"("ID");


--
-- Name: fk_ao_e8b6cc_branch_repository_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_BRANCH"
    ADD CONSTRAINT fk_ao_e8b6cc_branch_repository_id FOREIGN KEY ("REPOSITORY_ID") REFERENCES public."AO_E8B6CC_REPOSITORY_MAPPING"("ID");


--
-- Name: fk_ao_e8b6cc_git_hub_event_repository_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_GIT_HUB_EVENT"
    ADD CONSTRAINT fk_ao_e8b6cc_git_hub_event_repository_id FOREIGN KEY ("REPOSITORY_ID") REFERENCES public."AO_E8B6CC_REPOSITORY_MAPPING"("ID");


--
-- Name: fk_ao_e8b6cc_issue_to_branch_branch_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_ISSUE_TO_BRANCH"
    ADD CONSTRAINT fk_ao_e8b6cc_issue_to_branch_branch_id FOREIGN KEY ("BRANCH_ID") REFERENCES public."AO_E8B6CC_BRANCH"("ID");


--
-- Name: fk_ao_e8b6cc_message_queue_item_message_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_MESSAGE_QUEUE_ITEM"
    ADD CONSTRAINT fk_ao_e8b6cc_message_queue_item_message_id FOREIGN KEY ("MESSAGE_ID") REFERENCES public."AO_E8B6CC_MESSAGE"("ID");


--
-- Name: fk_ao_e8b6cc_message_tag_message_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_MESSAGE_TAG"
    ADD CONSTRAINT fk_ao_e8b6cc_message_tag_message_id FOREIGN KEY ("MESSAGE_ID") REFERENCES public."AO_E8B6CC_MESSAGE"("ID");


--
-- Name: fk_ao_e8b6cc_org_to_project_organization_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_ORG_TO_PROJECT"
    ADD CONSTRAINT fk_ao_e8b6cc_org_to_project_organization_id FOREIGN KEY ("ORGANIZATION_ID") REFERENCES public."AO_E8B6CC_ORGANIZATION_MAPPING"("ID");


--
-- Name: fk_ao_e8b6cc_pr_participant_pull_request_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_PR_PARTICIPANT"
    ADD CONSTRAINT fk_ao_e8b6cc_pr_participant_pull_request_id FOREIGN KEY ("PULL_REQUEST_ID") REFERENCES public."AO_E8B6CC_PULL_REQUEST"("ID");


--
-- Name: fk_ao_e8b6cc_pr_to_commit_commit_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_PR_TO_COMMIT"
    ADD CONSTRAINT fk_ao_e8b6cc_pr_to_commit_commit_id FOREIGN KEY ("COMMIT_ID") REFERENCES public."AO_E8B6CC_COMMIT"("ID");


--
-- Name: fk_ao_e8b6cc_pr_to_commit_request_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_PR_TO_COMMIT"
    ADD CONSTRAINT fk_ao_e8b6cc_pr_to_commit_request_id FOREIGN KEY ("REQUEST_ID") REFERENCES public."AO_E8B6CC_PULL_REQUEST"("ID");


--
-- Name: fk_ao_e8b6cc_repo_to_project_repository_id; Type: FK CONSTRAINT; Schema: public; Owner: jira
--

ALTER TABLE ONLY public."AO_E8B6CC_REPO_TO_PROJECT"
    ADD CONSTRAINT fk_ao_e8b6cc_repo_to_project_repository_id FOREIGN KEY ("REPOSITORY_ID") REFERENCES public."AO_E8B6CC_REPOSITORY_MAPPING"("ID");


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: jira
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM jira;
GRANT ALL ON SCHEMA public TO jira;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

