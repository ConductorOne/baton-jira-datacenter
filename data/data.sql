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
-- Data for Name: AO_0A5972_NOTIFICATION_SETTING; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_0A5972_NOTIFICATION_SETTING" ("ID", "KEY", "TYPE", "USER_KEY", "VALUE") FROM stdin;
\.


--
-- Name: AO_0A5972_NOTIFICATION_SETTING_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_0A5972_NOTIFICATION_SETTING_ID_seq"', 1, false);


--
-- Data for Name: AO_0A5972_PUSH_REGISTRATION; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_0A5972_PUSH_REGISTRATION" ("BUILD", "ENDPOINT", "ID", "OS", "TOKEN", "USER_KEY") FROM stdin;
\.


--
-- Data for Name: AO_0AC321_RECOMMENDATION_AO; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_0AC321_RECOMMENDATION_AO" ("CATEGORY", "CUSTOM_FIELD_ID", "ID", "NAME", "PERFORMANCE_IMPACT", "PROJECT_IDS", "RESOLVED", "TYPE") FROM stdin;
\.


--
-- Data for Name: AO_21D670_WHITELIST_RULES; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_21D670_WHITELIST_RULES" ("ALLOWINBOUND", "AUTHENTICATIONREQUIRED", "EXPRESSION", "ID", "TYPE") FROM stdin;
f	f	http://www.atlassian.com/*	1	WILDCARD_EXPRESSION
f	f	http://www.atlassian.com/*	2	WILDCARD_EXPRESSION
\.


--
-- Name: AO_21D670_WHITELIST_RULES_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_21D670_WHITELIST_RULES_ID_seq"', 2, true);


--
-- Data for Name: AO_21F425_MESSAGE_AO; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_21F425_MESSAGE_AO" ("CONTENT", "ID") FROM stdin;
\.


--
-- Data for Name: AO_21F425_MESSAGE_MAPPING_AO; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_21F425_MESSAGE_MAPPING_AO" ("ID", "MESSAGE_ID", "USER_HASH") FROM stdin;
\.


--
-- Name: AO_21F425_MESSAGE_MAPPING_AO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_21F425_MESSAGE_MAPPING_AO_ID_seq"', 1, false);


--
-- Data for Name: AO_21F425_USER_PROPERTY_AO; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_21F425_USER_PROPERTY_AO" ("ID", "KEY", "USER", "VALUE") FROM stdin;
\.


--
-- Name: AO_21F425_USER_PROPERTY_AO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_21F425_USER_PROPERTY_AO_ID_seq"', 1, false);


--
-- Data for Name: AO_38321B_CUSTOM_CONTENT_LINK; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_38321B_CUSTOM_CONTENT_LINK" ("CONTENT_KEY", "ID", "LINK_LABEL", "LINK_URL", "SEQUENCE") FROM stdin;
\.


--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_38321B_CUSTOM_CONTENT_LINK_ID_seq"', 1, false);


--
-- Data for Name: AO_3B1893_LOOP_DETECTION; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_3B1893_LOOP_DETECTION" ("COUNTER", "EXPIRES_AT", "ID", "SENDER_EMAIL") FROM stdin;
\.


--
-- Name: AO_3B1893_LOOP_DETECTION_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_3B1893_LOOP_DETECTION_ID_seq"', 1, false);


--
-- Data for Name: AO_4789DD_DISABLED_CHECKS; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_4789DD_DISABLED_CHECKS" ("HEALTH_CHECK_KEY", "ID") FROM stdin;
\.


--
-- Name: AO_4789DD_DISABLED_CHECKS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_4789DD_DISABLED_CHECKS_ID_seq"', 1, false);


--
-- Data for Name: AO_4789DD_HEALTH_CHECK_STATUS; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_4789DD_HEALTH_CHECK_STATUS" ("APPLICATION_NAME", "COMPLETE_KEY", "DESCRIPTION", "FAILED_DATE", "FAILURE_REASON", "ID", "IS_HEALTHY", "IS_RESOLVED", "NODE_ID", "RESOLVED_DATE", "SEVERITY", "STATUS_NAME") FROM stdin;
JIRA	com.atlassian.troubleshooting.plugin-jira:supportedDatabaseHealthCheck	Checks if your Jira instance is using a supported database model and version. Using a supported database ensures Jira's data integrity and avoids unexpected behaviour when using Jira applications.	2024-07-02 22:39:25.522	PostgreSQL 9.5 is not supported. You should migrate to a supported database version.	1	f	f	\N	\N	WARNING	Supported database
\.


--
-- Name: AO_4789DD_HEALTH_CHECK_STATUS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_4789DD_HEALTH_CHECK_STATUS_ID_seq"', 1, true);


--
-- Data for Name: AO_4789DD_HEALTH_CHECK_WATCHER; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_4789DD_HEALTH_CHECK_WATCHER" ("ID", "USER_KEY") FROM stdin;
\.


--
-- Name: AO_4789DD_HEALTH_CHECK_WATCHER_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_4789DD_HEALTH_CHECK_WATCHER_ID_seq"', 1, false);


--
-- Data for Name: AO_4789DD_PROPERTIES; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_4789DD_PROPERTIES" ("ID", "PROPERTY_NAME", "PROPERTY_VALUE") FROM stdin;
1	last-run	1720027546209
\.


--
-- Name: AO_4789DD_PROPERTIES_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_4789DD_PROPERTIES_ID_seq"', 1, true);


--
-- Data for Name: AO_4789DD_READ_NOTIFICATIONS; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_4789DD_READ_NOTIFICATIONS" ("ID", "IS_SNOOZED", "NOTIFICATION_ID", "SNOOZE_COUNT", "SNOOZE_DATE", "USER_KEY") FROM stdin;
1	t	1	2	2024-07-02 23:19:32.001	JIRAUSER10000
\.


--
-- Name: AO_4789DD_READ_NOTIFICATIONS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_4789DD_READ_NOTIFICATIONS_ID_seq"', 1, true);


--
-- Data for Name: AO_4789DD_SHORTENED_KEY; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_4789DD_SHORTENED_KEY" ("ID", "KEY") FROM stdin;
\.


--
-- Name: AO_4789DD_SHORTENED_KEY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_4789DD_SHORTENED_KEY_ID_seq"', 1, false);


--
-- Data for Name: AO_4789DD_TASK_MONITOR; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_4789DD_TASK_MONITOR" ("CLUSTERED_TASK_ID", "CREATED_TIMESTAMP", "ID", "NODE_ID", "PROGRESS_MESSAGE", "PROGRESS_PERCENTAGE", "SERIALIZED_ERRORS", "SERIALIZED_WARNINGS", "TASK_ID", "TASK_MONITOR_KIND", "TASK_STATUS") FROM stdin;
\.


--
-- Name: AO_4789DD_TASK_MONITOR_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_4789DD_TASK_MONITOR_ID_seq"', 1, false);


--
-- Data for Name: AO_4AEACD_WEBHOOK_DAO; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_4AEACD_WEBHOOK_DAO" ("ENABLED", "ENCODED_EVENTS", "FILTER", "ID", "JQL", "LAST_UPDATED", "LAST_UPDATED_USER", "NAME", "REGISTRATION_METHOD", "URL", "PARAMETERS", "EXCLUDE_ISSUE_DETAILS") FROM stdin;
\.


--
-- Name: AO_4AEACD_WEBHOOK_DAO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_4AEACD_WEBHOOK_DAO_ID_seq"', 1, false);


--
-- Data for Name: AO_550953_SHORTCUT; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_550953_SHORTCUT" ("ID", "NAME", "PROJECT_ID", "SHORTCUT_URL", "URL", "ICON", "SEQUENCE") FROM stdin;
\.


--
-- Name: AO_550953_SHORTCUT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_550953_SHORTCUT_ID_seq"', 1, false);


--
-- Data for Name: AO_563AEE_ACTOR_ENTITY; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_563AEE_ACTOR_ENTITY" ("FULL_NAME", "ID", "PROFILE_PAGE_URI", "PROFILE_PICTURE_URI", "USERNAME") FROM stdin;
\.


--
-- Data for Name: AO_563AEE_MEDIA_LINK_ENTITY; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_563AEE_MEDIA_LINK_ENTITY" ("DURATION", "HEIGHT", "ID", "URL", "WIDTH") FROM stdin;
\.


--
-- Data for Name: AO_563AEE_OBJECT_ENTITY; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_563AEE_OBJECT_ENTITY" ("CONTENT", "DISPLAY_NAME", "ID", "IMAGE_ID", "OBJECT_ID", "OBJECT_TYPE", "SUMMARY", "URL") FROM stdin;
\.


--
-- Data for Name: AO_563AEE_TARGET_ENTITY; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_563AEE_TARGET_ENTITY" ("CONTENT", "DISPLAY_NAME", "ID", "IMAGE_ID", "OBJECT_ID", "OBJECT_TYPE", "SUMMARY", "URL") FROM stdin;
\.


--
-- Data for Name: AO_563AEE_ACTIVITY_ENTITY; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_563AEE_ACTIVITY_ENTITY" ("ACTIVITY_ID", "ACTOR_ID", "CONTENT", "GENERATOR_DISPLAY_NAME", "GENERATOR_ID", "ICON_ID", "ID", "ISSUE_KEY", "OBJECT_ID", "POSTER", "PROJECT_KEY", "PUBLISHED", "TARGET_ID", "TITLE", "URL", "USERNAME", "VERB") FROM stdin;
\.


--
-- Name: AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq"', 1, false);


--
-- Name: AO_563AEE_ACTOR_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_563AEE_ACTOR_ENTITY_ID_seq"', 1, false);


--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_563AEE_MEDIA_LINK_ENTITY_ID_seq"', 1, false);


--
-- Name: AO_563AEE_OBJECT_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_563AEE_OBJECT_ENTITY_ID_seq"', 1, false);


--
-- Name: AO_563AEE_TARGET_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_563AEE_TARGET_ENTITY_ID_seq"', 1, false);


--
-- Data for Name: AO_575BF5_DEV_SUMMARY; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_575BF5_DEV_SUMMARY" ("CREATED", "ID", "ISSUE_ID", "JSON", "PROVIDER_SOURCE_ID", "UPDATED") FROM stdin;
\.


--
-- Name: AO_575BF5_DEV_SUMMARY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_575BF5_DEV_SUMMARY_ID_seq"', 1, false);


--
-- Data for Name: AO_575BF5_PROCESSED_COMMITS; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_575BF5_PROCESSED_COMMITS" ("COMMIT_HASH", "ID", "METADATA_HASH") FROM stdin;
\.


--
-- Name: AO_575BF5_PROCESSED_COMMITS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_575BF5_PROCESSED_COMMITS_ID_seq"', 1, false);


--
-- Data for Name: AO_575BF5_PROVIDER_ISSUE; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_575BF5_PROVIDER_ISSUE" ("ID", "ISSUE_ID", "PROVIDER_SOURCE_ID", "STALE_AFTER") FROM stdin;
\.


--
-- Name: AO_575BF5_PROVIDER_ISSUE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_575BF5_PROVIDER_ISSUE_ID_seq"', 1, false);


--
-- Data for Name: AO_575BF5_PROVIDER_SEQ_NO; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_575BF5_PROVIDER_SEQ_NO" ("ID", "PROVIDER_SOURCE_ID", "SEQUENCE_NO") FROM stdin;
\.


--
-- Name: AO_575BF5_PROVIDER_SEQ_NO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_575BF5_PROVIDER_SEQ_NO_ID_seq"', 1, false);


--
-- Data for Name: AO_589059_AUDIT_ITEM; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_589059_AUDIT_ITEM" ("AUTHOR_KEY", "CATEGORY", "CLIENT_KEY", "CREATED", "DESCRIPTION", "DURATION", "END_TIME", "END_TO_END_DURATION", "EVENT_SOURCE", "ID", "OBJECT_ITEM_ID", "OBJECT_ITEM_NAME", "OBJECT_ITEM_PARENT_ID", "OBJECT_ITEM_PARENT_NAME", "OBJECT_ITEM_TYPE", "START_TIME", "SUMMARY") FROM stdin;
\.


--
-- Data for Name: AO_589059_AUDIT_ITEM_COMP_CGE; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_589059_AUDIT_ITEM_COMP_CGE" ("AUDIT_ITEM_ID", "COMPONENT", "COMPONENT_ID", "COMPONENT_NAME_KEY", "DURATION", "ID", "OPTIMISED_IDS", "START_TIME") FROM stdin;
\.


--
-- Data for Name: AO_589059_AUDIT_ITEM_ASC_ITEM; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_589059_AUDIT_ITEM_ASC_ITEM" ("ASSOC_ITEM_ID", "AUDIT_ITEM_COMPONENT_CHANGE_ID", "AUDIT_ITEM_ID", "ID", "NAME", "PARENT_ID", "PARENT_NAME", "TYPE_NAME") FROM stdin;
\.


--
-- Name: AO_589059_AUDIT_ITEM_ASC_ITEM_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_589059_AUDIT_ITEM_ASC_ITEM_ID_seq"', 1, false);


--
-- Data for Name: AO_589059_AUDIT_ITEM_CGE_ITEM; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_589059_AUDIT_ITEM_CGE_ITEM" ("AUDIT_ITEM_COMPONENT_CHANGE_ID", "AUDIT_ITEM_ID", "CHANGE_FROM", "CHANGE_TO", "FIELD_NAME", "ID", "MESSAGE") FROM stdin;
\.


--
-- Name: AO_589059_AUDIT_ITEM_CGE_ITEM_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_589059_AUDIT_ITEM_CGE_ITEM_ID_seq"', 1, false);


--
-- Name: AO_589059_AUDIT_ITEM_COMP_CGE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_589059_AUDIT_ITEM_COMP_CGE_ID_seq"', 1, false);


--
-- Name: AO_589059_AUDIT_ITEM_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_589059_AUDIT_ITEM_ID_seq"', 1, false);


--
-- Data for Name: AO_589059_AUDIT_ITEM_PROJECT; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_589059_AUDIT_ITEM_PROJECT" ("AUDIT_ITEM_ID", "ID", "PROJECT_ID") FROM stdin;
\.


--
-- Name: AO_589059_AUDIT_ITEM_PROJECT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_589059_AUDIT_ITEM_PROJECT_ID_seq"', 1, false);


--
-- Data for Name: AO_589059_AUTOMATION_QUEUE; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_589059_AUTOMATION_QUEUE" ("AUDIT_ITEM_ID", "CLAIMANT", "CLAIM_COUNT", "CLAIM_TIME", "CLIENT_KEY", "CREATED", "EXECUTION_UUID", "ID", "PAYLOAD", "PRIORITY", "RULE_ID", "ZIPPED_PAYLOAD") FROM stdin;
\.


--
-- Name: AO_589059_AUTOMATION_QUEUE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_589059_AUTOMATION_QUEUE_ID_seq"', 1, false);


--
-- Data for Name: AO_589059_COUNTERS; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_589059_COUNTERS" ("CLIENT_KEY", "COUNT", "ID", "KEY") FROM stdin;
\.


--
-- Name: AO_589059_COUNTERS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_589059_COUNTERS_ID_seq"', 1, false);


--
-- Data for Name: AO_589059_LEGACY_RULE_LINK; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_589059_LEGACY_RULE_LINK" ("ID", "LEGACY_ID", "NEW_ID") FROM stdin;
\.


--
-- Name: AO_589059_LEGACY_RULE_LINK_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_589059_LEGACY_RULE_LINK_ID_seq"', 1, false);


--
-- Data for Name: AO_589059_RULE_CONFIG; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_589059_RULE_CONFIG" ("ACTOR_KEY", "AUTHOR_KEY", "CAN_OTHER_RULE_TRIGGER", "CLIENT_KEY", "CREATED", "DESCRIPTION", "ID", "NAME", "NOTIFY_ON_ERROR", "PROJECT_ID", "PROJECT_TYPE_KEY", "STATE", "UPDATED") FROM stdin;
\.


--
-- Data for Name: AO_589059_RULE_CFG_COMPONENT; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_589059_RULE_CFG_COMPONENT" ("COMPONENT", "CONDITION_PARENT_ID", "ID", "PARENT_CFG_COMPONENT_ID", "RULE_CONFIG_ID", "SCHEMA_VERSION", "SEQUENCE", "TYPE", "VALUE") FROM stdin;
\.


--
-- Name: AO_589059_RULE_CFG_COMPONENT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_589059_RULE_CFG_COMPONENT_ID_seq"', 1, false);


--
-- Data for Name: AO_589059_RULE_CFG_PROJ_ASSOC; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_589059_RULE_CFG_PROJ_ASSOC" ("ID", "PROJECT_ID", "PROJECT_TYPE_KEY", "RULE_CONFIG_ID") FROM stdin;
\.


--
-- Name: AO_589059_RULE_CFG_PROJ_ASSOC_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_589059_RULE_CFG_PROJ_ASSOC_ID_seq"', 1, false);


--
-- Name: AO_589059_RULE_CONFIG_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_589059_RULE_CONFIG_ID_seq"', 1, false);


--
-- Data for Name: AO_589059_RULE_LABEL; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_589059_RULE_LABEL" ("COLOR", "ID", "NAME") FROM stdin;
\.


--
-- Name: AO_589059_RULE_LABEL_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_589059_RULE_LABEL_ID_seq"', 1, false);


--
-- Data for Name: AO_589059_RULE_SCHEDULE; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_589059_RULE_SCHEDULE" ("CLIENT_KEY", "ERROR_COUNT", "ID", "NEXT_EXECUTION", "PAYLOAD", "RULE_CONFIG_ID", "TYPE") FROM stdin;
\.


--
-- Name: AO_589059_RULE_SCHEDULE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_589059_RULE_SCHEDULE_ID_seq"', 1, false);


--
-- Data for Name: AO_589059_RULE_SECRET; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_589059_RULE_SECRET" ("ID", "KEY", "VALUE") FROM stdin;
\.


--
-- Name: AO_589059_RULE_SECRET_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_589059_RULE_SECRET_ID_seq"', 1, false);


--
-- Data for Name: AO_589059_RULE_STAT; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_589059_RULE_STAT" ("AUDIT_ID", "CATEGORY", "CREATED", "DURATION", "EVENT_HASH", "ID", "QUEUED_ITEM_COUNT", "RULE_ID") FROM stdin;
\.


--
-- Data for Name: AO_589059_RULE_STATE_LATEST; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_589059_RULE_STATE_LATEST" ("CURRENT_AUDIT_ID", "CURRENT_CATEGORY", "CURRENT_CREATED", "EXEC_COUNT", "ID", "PREVIOUS_AUDIT_ID", "PREVIOUS_CATEGORY", "PREVIOUS_CREATED", "RULE_ID") FROM stdin;
\.


--
-- Name: AO_589059_RULE_STATE_LATEST_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_589059_RULE_STATE_LATEST_ID_seq"', 1, false);


--
-- Name: AO_589059_RULE_STAT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_589059_RULE_STAT_ID_seq"', 1, false);


--
-- Data for Name: AO_589059_RULE_STAT_ROLLUP_DAY; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_589059_RULE_STAT_ROLLUP_DAY" ("CATEGORY", "CLIENT_KEY", "CREATED", "DURATION", "END_TO_END_DURATION", "EXECUTION_COUNT", "ID", "QUEUED_ITEM_COUNT", "RULE_ID") FROM stdin;
\.


--
-- Name: AO_589059_RULE_STAT_ROLLUP_DAY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_589059_RULE_STAT_ROLLUP_DAY_ID_seq"', 1, false);


--
-- Data for Name: AO_589059_RULE_STAT_ROLLUP_HR; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_589059_RULE_STAT_ROLLUP_HR" ("CATEGORY", "CLIENT_KEY", "CREATED", "DURATION", "END_TO_END_DURATION", "EXECUTION_COUNT", "ID", "QUEUED_ITEM_COUNT", "RULE_ID") FROM stdin;
\.


--
-- Name: AO_589059_RULE_STAT_ROLLUP_HR_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_589059_RULE_STAT_ROLLUP_HR_ID_seq"', 1, false);


--
-- Data for Name: AO_589059_RULE_STAT_ROLLUP_MIN; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_589059_RULE_STAT_ROLLUP_MIN" ("CATEGORY", "CLIENT_KEY", "CREATED", "DURATION", "END_TO_END_DURATION", "EXECUTION_COUNT", "ID", "QUEUED_ITEM_COUNT", "RULE_ID") FROM stdin;
\.


--
-- Name: AO_589059_RULE_STAT_ROLLUP_MIN_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_589059_RULE_STAT_ROLLUP_MIN_ID_seq"', 1, false);


--
-- Data for Name: AO_589059_RULE_TAG; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_589059_RULE_TAG" ("ID", "RULE_CONFIG_ID", "TAG_TYPE", "TAG_VALUE") FROM stdin;
\.


--
-- Name: AO_589059_RULE_TAG_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_589059_RULE_TAG_ID_seq"', 1, false);


--
-- Data for Name: AO_589059_RULE_TO_LABEL; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_589059_RULE_TO_LABEL" ("ID", "LABEL_ID", "RULE_ID") FROM stdin;
\.


--
-- Name: AO_589059_RULE_TO_LABEL_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_589059_RULE_TO_LABEL_ID_seq"', 1, false);


--
-- Data for Name: AO_589059_RULE_TO_SECRET; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_589059_RULE_TO_SECRET" ("ID", "KEY", "RULE_ID") FROM stdin;
\.


--
-- Name: AO_589059_RULE_TO_SECRET_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_589059_RULE_TO_SECRET_ID_seq"', 1, false);


--
-- Data for Name: AO_589059_SECRET_PROJ_ASSOC; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_589059_SECRET_PROJ_ASSOC" ("ID", "PROJECT_ID", "RULE_SECRET_ID") FROM stdin;
\.


--
-- Name: AO_589059_SECRET_PROJ_ASSOC_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_589059_SECRET_PROJ_ASSOC_ID_seq"', 1, false);


--
-- Data for Name: AO_60DB71_AUDITENTRY; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_60DB71_AUDITENTRY" ("CATEGORY", "DATA", "ENTITY_CLASS", "ENTITY_ID", "ID", "TIME", "USER") FROM stdin;
\.


--
-- Name: AO_60DB71_AUDITENTRY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_60DB71_AUDITENTRY_ID_seq"', 1, false);


--
-- Data for Name: AO_60DB71_RAPIDVIEW; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_60DB71_RAPIDVIEW" ("CARD_COLOR_STRATEGY", "ID", "KAN_PLAN_ENABLED", "NAME", "OLD_DONE_ISSUES_CUTOFF", "OWNER_USER_NAME", "REFINED_VELOCITY_ACTIVE", "SAVED_FILTER_ID", "SHOW_DAYS_IN_COLUMN", "SHOW_EPIC_AS_PANEL", "SPRINTS_ENABLED", "SWIMLANE_STRATEGY") FROM stdin;
none	1	\N	TEST board	-2w	JIRAUSER10000	t	10000	f	t	f	custom
\.


--
-- Data for Name: AO_60DB71_BOARDADMINS; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_60DB71_BOARDADMINS" ("ID", "KEY", "RAPID_VIEW_ID", "TYPE") FROM stdin;
3	JIRAUSER10000	1	USER
4	JIRAUSER10100	1	USER
\.


--
-- Name: AO_60DB71_BOARDADMINS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_60DB71_BOARDADMINS_ID_seq"', 4, true);


--
-- Data for Name: AO_60DB71_CARDCOLOR; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_60DB71_CARDCOLOR" ("COLOR", "ID", "POS", "RAPID_VIEW_ID", "STRATEGY", "VAL") FROM stdin;
\.


--
-- Name: AO_60DB71_CARDCOLOR_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_60DB71_CARDCOLOR_ID_seq"', 1, false);


--
-- Data for Name: AO_60DB71_CARDLAYOUT; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_60DB71_CARDLAYOUT" ("FIELD_ID", "ID", "MODE_NAME", "POS", "RAPID_VIEW_ID") FROM stdin;
\.


--
-- Name: AO_60DB71_CARDLAYOUT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_60DB71_CARDLAYOUT_ID_seq"', 1, false);


--
-- Data for Name: AO_60DB71_COLUMN; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_60DB71_COLUMN" ("ID", "MAXIM", "MINIM", "NAME", "POS", "RAPID_VIEW_ID") FROM stdin;
5	\N	\N	gh.kanplan.column@name=gh.workflow.preset.backlog	0	1
6	\N	\N	gh.workflow.preset.backlog	1	1
7	\N	\N	gh.workflow.preset.selectedfordevelopment	2	1
8	1	\N	gh.workflow.preset.inprogress	3	1
9	\N	\N	gh.workflow.preset.done	4	1
\.


--
-- Data for Name: AO_60DB71_COLUMNSTATUS; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_60DB71_COLUMNSTATUS" ("COLUMN_ID", "ID", "POS", "STATUS_ID") FROM stdin;
6	5	0	10000
7	6	0	10001
8	7	0	3
9	8	0	10002
\.


--
-- Name: AO_60DB71_COLUMNSTATUS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_60DB71_COLUMNSTATUS_ID_seq"', 8, true);


--
-- Name: AO_60DB71_COLUMN_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_60DB71_COLUMN_ID_seq"', 9, true);


--
-- Data for Name: AO_60DB71_DETAILVIEWFIELD; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_60DB71_DETAILVIEWFIELD" ("FIELD_ID", "ID", "POS", "RAPID_VIEW_ID") FROM stdin;
status	1	0	1
priority	2	1	1
components	3	2	1
labels	4	3	1
versions	5	4	1
fixVersions	6	5	1
issuelinks	7	6	1
reporter	8	7	1
assignee	9	8	1
created	10	9	1
updated	11	10	1
customfield_10101	12	11	1
\.


--
-- Name: AO_60DB71_DETAILVIEWFIELD_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_60DB71_DETAILVIEWFIELD_ID_seq"', 12, true);


--
-- Data for Name: AO_60DB71_ESTIMATESTATISTIC; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_60DB71_ESTIMATESTATISTIC" ("FIELD_ID", "ID", "RAPID_VIEW_ID", "TYPE_ID") FROM stdin;
\N	1	1	none
\.


--
-- Name: AO_60DB71_ESTIMATESTATISTIC_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_60DB71_ESTIMATESTATISTIC_ID_seq"', 1, true);


--
-- Data for Name: AO_60DB71_ISSUERANKING; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_60DB71_ISSUERANKING" ("CUSTOM_FIELD_ID", "ID", "ISSUE_ID", "NEXT_ID") FROM stdin;
\.


--
-- Data for Name: AO_60DB71_ISSUERANKINGLOG; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_60DB71_ISSUERANKINGLOG" ("CUSTOM_FIELD_ID", "ID", "ISSUE_ID", "LOG_TYPE", "NEW_NEXT_ID", "NEW_PREVIOUS_ID", "OLD_NEXT_ID", "OLD_PREVIOUS_ID", "SANITY_CHECKED") FROM stdin;
\.


--
-- Name: AO_60DB71_ISSUERANKINGLOG_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_60DB71_ISSUERANKINGLOG_ID_seq"', 1, false);


--
-- Name: AO_60DB71_ISSUERANKING_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_60DB71_ISSUERANKING_ID_seq"', 1, false);


--
-- Data for Name: AO_60DB71_LEXORANK; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_60DB71_LEXORANK" ("BUCKET", "FIELD_ID", "ID", "ISSUE_ID", "LOCK_HASH", "LOCK_TIME", "RANK", "TYPE") FROM stdin;
0	10100	7	-9223372036854775808	\N	\N	0|000000:	0
0	10100	9	10000	\N	\N	0|hzzzzz:	1
0	10100	10	10001	\N	\N	0|i00007:	1
0	10100	11	10002	\N	\N	0|i0000f:	1
0	10100	12	10003	\N	\N	0|i0000n:	1
0	10100	13	10004	\N	\N	0|i0000v:	1
0	10100	14	10005	\N	\N	0|i00013:	1
0	10100	15	10006	\N	\N	0|i0001b:	1
0	10100	16	10007	\N	\N	0|i0001j:	1
0	10100	17	10008	\N	\N	0|i0001r:	1
0	10100	18	10009	\N	\N	0|i0001z:	1
0	10100	19	10010	\N	\N	0|i00027:	1
0	10100	20	10011	\N	\N	0|i0002f:	1
0	10100	21	10012	\N	\N	0|i0002n:	1
0	10100	22	10013	\N	\N	0|i0002v:	1
0	10100	24	10015	\N	\N	0|i0003b:	1
0	10100	8	9223372036854775807	\N	\N	0|zzzzzz:	2
0	10100	23	10014	\N	\N	0|i00033:	1
\.


--
-- Data for Name: AO_60DB71_LEXORANKBALANCER; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_60DB71_LEXORANKBALANCER" ("DISABLE_RANK_OPERATIONS", "FIELD_ID", "ID", "REBALANCE_TIME") FROM stdin;
\.


--
-- Name: AO_60DB71_LEXORANKBALANCER_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_60DB71_LEXORANKBALANCER_ID_seq"', 1, false);


--
-- Name: AO_60DB71_LEXORANK_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_60DB71_LEXORANK_ID_seq"', 36, true);


--
-- Data for Name: AO_60DB71_WORKINGDAYS; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_60DB71_WORKINGDAYS" ("FRIDAY", "ID", "MONDAY", "RAPID_VIEW_ID", "SATURDAY", "SUNDAY", "THURSDAY", "TIMEZONE", "TUESDAY", "WEDNESDAY") FROM stdin;
t	1	t	1	f	f	t	defaultTimeZoneId	t	t
\.


--
-- Data for Name: AO_60DB71_NONWORKINGDAY; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_60DB71_NONWORKINGDAY" ("ID", "ISO8601_DATE", "WORKING_DAYS_ID") FROM stdin;
\.


--
-- Name: AO_60DB71_NONWORKINGDAY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_60DB71_NONWORKINGDAY_ID_seq"', 1, false);


--
-- Data for Name: AO_60DB71_QUICKFILTER; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_60DB71_QUICKFILTER" ("DESCRIPTION", "ID", "LONG_QUERY", "NAME", "POS", "QUERY", "RAPID_VIEW_ID") FROM stdin;
gh.rapid.quickfilters.only.my.issues.desc	1	assignee = currentUser()	gh.rapid.quickfilters.only.my.issues	0	\N	1
gh.rapid.quickfilters.recently.updated.desc	2	updatedDate >= -1d	gh.rapid.quickfilters.recently.updated	1	\N	1
\.


--
-- Name: AO_60DB71_QUICKFILTER_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_60DB71_QUICKFILTER_ID_seq"', 2, true);


--
-- Data for Name: AO_60DB71_RANKABLEOBJECT; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_60DB71_RANKABLEOBJECT" ("ID", "TYPE") FROM stdin;
\.


--
-- Name: AO_60DB71_RANKABLEOBJECT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_60DB71_RANKABLEOBJECT_ID_seq"', 1, false);


--
-- Name: AO_60DB71_RAPIDVIEW_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_60DB71_RAPIDVIEW_ID_seq"', 1, true);


--
-- Data for Name: AO_60DB71_SPRINT; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_60DB71_SPRINT" ("ACTIVATED_DATE", "AUTO_START_STOP", "CLOSED", "COMPLETE_DATE", "END_DATE", "GOAL", "ID", "INCOMPLETE_ISSUES_DESTINATION", "NAME", "RAPID_VIEW_ID", "SEQUENCE", "STARTED", "START_DATE", "SYNCED") FROM stdin;
\.


--
-- Name: AO_60DB71_SPRINT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_60DB71_SPRINT_ID_seq"', 1, false);


--
-- Data for Name: AO_60DB71_STATSFIELD; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_60DB71_STATSFIELD" ("ID", "RAPID_VIEW_ID", "TYPE_ID") FROM stdin;
1	1	issueCount
\.


--
-- Name: AO_60DB71_STATSFIELD_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_60DB71_STATSFIELD_ID_seq"', 1, true);


--
-- Data for Name: AO_60DB71_SUBQUERY; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_60DB71_SUBQUERY" ("ID", "LONG_QUERY", "QUERY", "RAPID_VIEW_ID", "SECTION") FROM stdin;
1	fixVersion in unreleasedVersions() OR fixVersion is EMPTY	\N	1	board.kanban.work
\.


--
-- Name: AO_60DB71_SUBQUERY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_60DB71_SUBQUERY_ID_seq"', 1, true);


--
-- Data for Name: AO_60DB71_SWIMLANE; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_60DB71_SWIMLANE" ("DEFAULT_LANE", "DESCRIPTION", "ID", "LONG_QUERY", "NAME", "POS", "QUERY", "RAPID_VIEW_ID") FROM stdin;
f	gh.rapid.swimlane.expedite.desc	1	priority = Highest	gh.rapid.swimlane.expedite.name	0	\N	1
t		2		gh.rapid.swimlane.default.name	1	\N	1
\.


--
-- Name: AO_60DB71_SWIMLANE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_60DB71_SWIMLANE_ID_seq"', 2, true);


--
-- Data for Name: AO_60DB71_TRACKINGSTATISTIC; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_60DB71_TRACKINGSTATISTIC" ("FIELD_ID", "ID", "RAPID_VIEW_ID", "TYPE_ID") FROM stdin;
\N	1	1	none
\.


--
-- Name: AO_60DB71_TRACKINGSTATISTIC_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_60DB71_TRACKINGSTATISTIC_ID_seq"', 1, true);


--
-- Data for Name: AO_60DB71_VERSION; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_60DB71_VERSION" ("ID", "START_DATE", "VERSION_ID") FROM stdin;
\.


--
-- Name: AO_60DB71_VERSION_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_60DB71_VERSION_ID_seq"', 1, false);


--
-- Name: AO_60DB71_WORKINGDAYS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_60DB71_WORKINGDAYS_ID_seq"', 1, true);


--
-- Data for Name: AO_6FF49D_INST_ANALYSIS_CTRL; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_INST_ANALYSIS_CTRL" ("ANALYSIS_TYPE", "END_TIMESTAMP", "ID", "START_TIMESTAMP") FROM stdin;
\.


--
-- Data for Name: AO_6FF49D_ACCESS_LOG_PRC_CTRL; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_ACCESS_LOG_PRC_CTRL" ("END_TIMESTAMP", "ID", "INST_ANALYSIS_CTRL_ID", "LAST_UPDATE_TIMESTAMP", "MESSAGE", "NODE", "RETRY_COUNT", "START_TIMESTAMP", "STATUS") FROM stdin;
\.


--
-- Name: AO_6FF49D_ACCESS_LOG_PRC_CTRL_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_6FF49D_ACCESS_LOG_PRC_CTRL_ID_seq"', 1, false);


--
-- Data for Name: AO_6FF49D_ACCESS_LOG_PRC_ITEM; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_ACCESS_LOG_PRC_ITEM" ("ACCESS_LOG_PROC_CTRL_ID", "END_TIMESTAMP", "FILE_NAME", "ID", "MESSAGE", "PROCESSING_DATE", "START_TIMESTAMP", "STATUS") FROM stdin;
\.


--
-- Name: AO_6FF49D_ACCESS_LOG_PRC_ITEM_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_6FF49D_ACCESS_LOG_PRC_ITEM_ID_seq"', 1, false);


--
-- Data for Name: AO_6FF49D_ACTUAL_MIG_COUNTS; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_ACTUAL_MIG_COUNTS" ("ENTITY_TYPE", "EXECUTION_ID", "FAIL_COUNT", "ID", "PROJECT_KEY", "SUCCESS_COUNT", "TOTAL_COUNT") FROM stdin;
\.


--
-- Name: AO_6FF49D_ACTUAL_MIG_COUNTS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_6FF49D_ACTUAL_MIG_COUNTS_ID_seq"', 1, false);


--
-- Data for Name: AO_6FF49D_ANALYTICS_EVENT; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_ANALYTICS_EVENT" ("EVENT", "EVENT_TIMESTAMP", "EVENT_TYPE", "ID") FROM stdin;
{"timestamp":1719962701099,"eventType":"OPERATIONAL","userId":"unknown","attributes":{"estimatedTime":40,"numberOfProjects":1,"numberOfInactiveUsers":0,"jiraSoftwareSen":"SEN-L20380445","depIssueLinkTypesCount":1,"LDAP":false,"arVersion":"9.12.4","clustered":false,"numberOfActiveUsers":1,"numberOfNodes":1,"issueLinkTypesCount":7,"version":"1.9.17","database":{"type":"PostgreSQL","version":"9.5.25"},"migration":true,"numberOfGroups":2,"totalAttachmentsSize":0,"numberOfIssues":16,"depIssueLinkTypesJoinIssueLinkTypesExecutionTime":0,"totalNumberOfAttachments":0},"cloudId":null,"subProduct":null,"source":null,"container":null,"object":null,"actionSubjectId":null,"actionSubject":"instanceAnalysis","action":"completed"}	1719962701099	OPERATIONAL	1
{"timestamp":1719962701173,"eventType":"OPERATIONAL","userId":"unknown","attributes":{"usersMigratedAsCompanyUsers":1,"jiraSoftwareSen":"SEN-L20380445","totalUserCount":1,"migration":true,"userClassificationAlgorithm":"LOWEST_LEVEL_DOMAIN_COMPONENT_MATCH","version":"1.9.17","usersMigratedAsCustomers":0},"cloudId":null,"subProduct":null,"source":null,"container":null,"object":null,"actionSubjectId":null,"actionSubject":"emailBelongsToCompany","action":"completed"}	1719962701173	OPERATIONAL	2
{"timestamp":1719962701173,"eventType":"OPERATIONAL","userId":"unknown","attributes":{"usersMigratedAsCompanyUsers":0,"jiraSoftwareSen":"SEN-L20380445","totalUserCount":1,"migration":true,"userClassificationAlgorithm":"DOMAIN_AND_SUBDOMAINS_MATCH","version":"1.9.17","usersMigratedAsCustomers":1},"cloudId":null,"subProduct":null,"source":null,"container":null,"object":null,"actionSubjectId":null,"actionSubject":"emailBelongsToCompany","action":"completed"}	1719962701173	OPERATIONAL	3
{"timestamp":1719962701155,"eventType":"OPERATIONAL","userId":"unknown","attributes":{"jiraSoftwareSen":"SEN-L20380445","migration":true,"version":"1.9.17","userClassificationMetrics":{"userClassifications":[{"category":"AAPartOfGroupWithAccessWithNoCustomerFlag","count":1},{"category":"AAPartOfGroupWithAccessWithCustomerFlag","count":0},{"category":"AAPartOfGroupWithNoAccessWithNoCustomerFlag","count":0},{"category":"AAPartOfGroupWithNoAccessWithCustomerFlag","count":0},{"category":"AANotPartOfGroupWithNoCustomerFlag","count":0},{"category":"AANotPartOfGroupWithCustomerFlag","count":0},{"category":"CAPartOfGroupWithAccessWithNoCustomerFlag","count":0},{"category":"CAPartOfGroupWithAccessWithCustomerFlag","count":0},{"category":"CAPartOfGroupWithNoAccessWithNoCustomerFlag","count":0},{"category":"CAPartOfGroupWithNoAccessWithCustomerFlag","count":0},{"category":"CANotPartOfGroupWithNoCustomerFlag","count":0},{"category":"CANotPartOfGroupWithCustomerFlag","count":0}],"isJsmInstalled":false,"isJswInstalled":true}},"cloudId":"","subProduct":null,"source":"JCMA","container":{"containerType":"migration","containerId":""},"object":null,"actionSubjectId":"userClassificationMetrics","actionSubject":"userClassificationMetrics","action":"logged"}	1719962701155	OPERATIONAL	4
{"timestamp":1720028066988,"eventType":"OPERATIONAL","userId":"unknown","attributes":{"estimatedTime":40,"numberOfProjects":1,"numberOfInactiveUsers":0,"jiraSoftwareSen":"SEN-L20380445","depIssueLinkTypesCount":1,"LDAP":false,"arVersion":"9.12.4","clustered":false,"numberOfActiveUsers":1,"numberOfNodes":1,"issueLinkTypesCount":7,"version":"1.9.17","database":{"type":"PostgreSQL","version":"9.5.25"},"migration":true,"numberOfGroups":2,"totalAttachmentsSize":0,"numberOfIssues":16,"depIssueLinkTypesJoinIssueLinkTypesExecutionTime":2,"totalNumberOfAttachments":0},"cloudId":null,"subProduct":null,"source":null,"container":null,"object":null,"actionSubjectId":null,"actionSubject":"instanceAnalysis","action":"completed"}	1720028066988	OPERATIONAL	5
{"timestamp":1720028067122,"eventType":"OPERATIONAL","userId":"unknown","attributes":{"usersMigratedAsCompanyUsers":1,"jiraSoftwareSen":"SEN-L20380445","totalUserCount":1,"migration":true,"userClassificationAlgorithm":"LOWEST_LEVEL_DOMAIN_COMPONENT_MATCH","version":"1.9.17","usersMigratedAsCustomers":0},"cloudId":null,"subProduct":null,"source":null,"container":null,"object":null,"actionSubjectId":null,"actionSubject":"emailBelongsToCompany","action":"completed"}	1720028067122	OPERATIONAL	6
{"timestamp":1720028067123,"eventType":"OPERATIONAL","userId":"unknown","attributes":{"usersMigratedAsCompanyUsers":0,"jiraSoftwareSen":"SEN-L20380445","totalUserCount":1,"migration":true,"userClassificationAlgorithm":"DOMAIN_AND_SUBDOMAINS_MATCH","version":"1.9.17","usersMigratedAsCustomers":1},"cloudId":null,"subProduct":null,"source":null,"container":null,"object":null,"actionSubjectId":null,"actionSubject":"emailBelongsToCompany","action":"completed"}	1720028067123	OPERATIONAL	7
{"timestamp":1720028067088,"eventType":"OPERATIONAL","userId":"unknown","attributes":{"jiraSoftwareSen":"SEN-L20380445","migration":true,"version":"1.9.17","userClassificationMetrics":{"userClassifications":[{"category":"AAPartOfGroupWithAccessWithNoCustomerFlag","count":1},{"category":"AAPartOfGroupWithAccessWithCustomerFlag","count":0},{"category":"AAPartOfGroupWithNoAccessWithNoCustomerFlag","count":0},{"category":"AAPartOfGroupWithNoAccessWithCustomerFlag","count":0},{"category":"AANotPartOfGroupWithNoCustomerFlag","count":0},{"category":"AANotPartOfGroupWithCustomerFlag","count":0},{"category":"CAPartOfGroupWithAccessWithNoCustomerFlag","count":0},{"category":"CAPartOfGroupWithAccessWithCustomerFlag","count":0},{"category":"CAPartOfGroupWithNoAccessWithNoCustomerFlag","count":0},{"category":"CAPartOfGroupWithNoAccessWithCustomerFlag","count":0},{"category":"CANotPartOfGroupWithNoCustomerFlag","count":0},{"category":"CANotPartOfGroupWithCustomerFlag","count":0}],"isJsmInstalled":false,"isJswInstalled":true}},"cloudId":"","subProduct":null,"source":"JCMA","container":{"containerType":"migration","containerId":""},"object":null,"actionSubjectId":"userClassificationMetrics","actionSubject":"userClassificationMetrics","action":"logged"}	1720028067088	OPERATIONAL	8
\.


--
-- Name: AO_6FF49D_ANALYTICS_EVENT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_6FF49D_ANALYTICS_EVENT_ID_seq"', 8, true);


--
-- Data for Name: AO_6FF49D_APP_ASSESSMENT_INFO; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_APP_ASSESSMENT_INFO" ("ACCESS_SCOPES", "ALTERNATIVE_APP_KEY", "APP_KEY", "CONSENT", "MIGRATION_NOTES", "MIGRATION_STATUS") FROM stdin;
\.


--
-- Data for Name: AO_6FF49D_BROWSER_METRICS; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_BROWSER_METRICS" ("CREATED_AT", "ID", "METRICS_JSON", "USER_KEY") FROM stdin;
\.


--
-- Name: AO_6FF49D_BROWSER_METRICS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_6FF49D_BROWSER_METRICS_ID_seq"', 1, false);


--
-- Data for Name: AO_6FF49D_CLOUD_SITE; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_CLOUD_SITE" ("CLOUD_EDITION", "CLOUD_ID", "CLOUD_TYPE", "CLOUD_URL", "CONTAINER_TOKEN", "PRODUCTS_JSON", "UPDATED_TIMESTAMP") FROM stdin;
\.


--
-- Data for Name: AO_6FF49D_CONFIG_ITEMS; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_CONFIG_ITEMS" ("CONFIG_ITEM_ID", "EXECUTION_ID", "ID", "NAME", "TYPE") FROM stdin;
\.


--
-- Name: AO_6FF49D_CONFIG_ITEMS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_6FF49D_CONFIG_ITEMS_ID_seq"', 1, false);


--
-- Data for Name: AO_6FF49D_CORRECTED_EMAIL; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_CORRECTED_EMAIL" ("CREATED_BY", "CREATED_TIMESTAMP", "ID", "NEW_EMAIL", "OLD_EMAIL", "TOMBSTONE", "TYPE", "UPDATED_BY", "UPDATED_TIMESTAMP", "USER_KEY", "USER_NAME") FROM stdin;
\.


--
-- Data for Name: AO_6FF49D_DAILY_USAGE_METRICS; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_DAILY_USAGE_METRICS" ("DAILY_ACTIVE_USERS", "ID", "INST_ANALYSIS_CTRL_ID", "METRICS_DATE", "NODES_PROCESSING_JSON", "PEAK_HOURLY_USERS_BY_DAY") FROM stdin;
\.


--
-- Name: AO_6FF49D_DAILY_USAGE_METRICS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_6FF49D_DAILY_USAGE_METRICS_ID_seq"', 1, false);


--
-- Data for Name: AO_6FF49D_EMAIL_TRST_DMN; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_EMAIL_TRST_DMN" ("DOMAIN_NAME", "ID", "RULE") FROM stdin;
\.


--
-- Data for Name: AO_6FF49D_EXPECTED_MIG_COUNTS; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_EXPECTED_MIG_COUNTS" ("ENTITY_TYPE", "ENTITY_TYPE_COUNT", "EXECUTION_ID", "ID", "PROJECT_KEY") FROM stdin;
\.


--
-- Name: AO_6FF49D_EXPECTED_MIG_COUNTS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_6FF49D_EXPECTED_MIG_COUNTS_ID_seq"', 1, false);


--
-- Data for Name: AO_6FF49D_EXPELLED_USER; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_EXPELLED_USER" ("CREATED_BY", "CREATED_TIMESTAMP", "EMAIL", "EXECUTION_ID", "ID", "PREFLIGHT_CHECK_TYPE", "UPDATED_BY", "UPDATED_TIMESTAMP", "USER_KEY") FROM stdin;
\.


--
-- Data for Name: AO_6FF49D_EXPORT_ERROR; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_EXPORT_ERROR" ("CLOUD_ID", "ERROR", "ERROR_TIMESTAMP", "ID", "MIGRATION_ID", "MIGRATION_SCOPE_ID", "SOURCE") FROM stdin;
\.


--
-- Name: AO_6FF49D_EXPORT_ERROR_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_6FF49D_EXPORT_ERROR_ID_seq"', 1, false);


--
-- Data for Name: AO_6FF49D_GR_RESPONSE_GROUP; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_GR_RESPONSE_GROUP" ("END_TIMESTAMP", "ID", "JOB_ID", "NODE_ID", "START_TIMESTAMP") FROM stdin;
\.


--
-- Name: AO_6FF49D_GR_RESPONSE_GROUP_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_6FF49D_GR_RESPONSE_GROUP_ID_seq"', 1, false);


--
-- Data for Name: AO_6FF49D_GUARDRAILS_RESPONSE; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_GUARDRAILS_RESPONSE" ("GUARDRAILS_RESPONSE", "GUARDRAILS_RESPONSE_TEXT", "GUARDRAILS_RESPONSE_TYPE", "ID", "JESAT_RESPONSE", "JOB_ID", "QUERY_ID", "QUERY_PRODUCT_TYPE", "QUERY_STATUS", "SUCCESS") FROM stdin;
\.


--
-- Name: AO_6FF49D_GUARDRAILS_RESPONSE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_6FF49D_GUARDRAILS_RESPONSE_ID_seq"', 1, false);


--
-- Data for Name: AO_6FF49D_INCORRECT_EMAIL; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_INCORRECT_EMAIL" ("CREATED_BY", "CREATED_TIMESTAMP", "DIRECTORY_ID", "DIRECTORY_NAME", "EMAIL_CORRECTION_DATA", "EXECUTION_ID", "ID", "LAST_AUTHENTICATED", "NEW_EMAIL", "OLD_EMAIL", "PREFLIGHT_CHECK_TYPE", "TYPE", "UPDATED_BY", "UPDATED_TIMESTAMP", "USER_KEY", "USER_NAME") FROM stdin;
\.


--
-- Name: AO_6FF49D_INST_ANALYSIS_CTRL_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_6FF49D_INST_ANALYSIS_CTRL_ID_seq"', 1, false);


--
-- Data for Name: AO_6FF49D_LINKED_MEDIA; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_LINKED_MEDIA" ("ID", "LINKED", "MEDIA_CLIENT_ID", "SERVER_ID", "SIZE", "TYPE") FROM stdin;
\.


--
-- Name: AO_6FF49D_LINKED_MEDIA_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_6FF49D_LINKED_MEDIA_ID_seq"', 1, false);


--
-- Data for Name: AO_6FF49D_MIGRATED_AVATAR; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_MIGRATED_AVATAR" ("FILE_MEDIA_ID", "ID", "MEDIA_CLIENT_ID", "MIGRATED", "SERVER_AVATAR_ID", "SIZE", "UPLOAD_ID") FROM stdin;
\.


--
-- Name: AO_6FF49D_MIGRATED_AVATAR_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_6FF49D_MIGRATED_AVATAR_ID_seq"', 1, false);


--
-- Data for Name: AO_6FF49D_MIGRATED_FILE; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_MIGRATED_FILE" ("FILE_MEDIA_ID", "FILE_SERVER_ID", "ID", "MEDIA_CLIENT_ID", "MIGRATED", "UPLOAD_ID") FROM stdin;
\.


--
-- Name: AO_6FF49D_MIGRATED_FILE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_6FF49D_MIGRATED_FILE_ID_seq"', 1, false);


--
-- Data for Name: AO_6FF49D_MIGRATION_ENTITY; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_MIGRATION_ENTITY" ("APP_OUTCOME_JSON", "CREATED_TIMESTAMP", "IN_PROGRESS_STATUS_JSON", "MIGRATION_ID", "OUTCOME_JSON", "PLAN_ID", "PROTOCOL_JSON", "STARTED_BY", "START_MIGRATION_CONTEXT_JSON", "UPDATED_TIMESTAMP", "USER_MIGRATION_END_TIME", "USER_MIGRATION_START_TIME") FROM stdin;
\.


--
-- Data for Name: AO_6FF49D_MIGRATION_INCREMENT; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_MIGRATION_INCREMENT" ("CLOUD_ID", "CUTOFF", "FINAL", "ID", "MIGRATION_ID", "PLAN_ID", "PROJECT_ID", "START_TIME", "STATUS") FROM stdin;
\.


--
-- Data for Name: AO_6FF49D_MIGRATION_SCOPE; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_MIGRATION_SCOPE" ("ACTIVATION_ID", "CLOUD_ID", "SCOPE_ID") FROM stdin;
\.


--
-- Data for Name: AO_6FF49D_MIG_REPORT_STATUS; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_MIG_REPORT_STATUS" ("EXECUTION_ID", "ID", "REPORT_TYPE", "STATUS", "UPDATED_AT") FROM stdin;
\.


--
-- Name: AO_6FF49D_MIG_REPORT_STATUS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_6FF49D_MIG_REPORT_STATUS_ID_seq"', 1, false);


--
-- Data for Name: AO_6FF49D_PLAN_ENTITY; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_PLAN_ENTITY" ("CREATED", "CREATED_TIMESTAMP", "ID", "JSON", "PLAN_NAME", "UPDATED", "UPDATED_TIMESTAMP") FROM stdin;
\.


--
-- Data for Name: AO_6FF49D_PREMIG_OUTCOME; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_PREMIG_OUTCOME" ("CHECK_ID", "CLOUD_ID", "ID", "LAST_EXECUTION_TIME", "PHASE_ID", "PREFLIGHT_CHECK_EXECUTION_ID") FROM stdin;
\.


--
-- Name: AO_6FF49D_PREMIG_OUTCOME_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_6FF49D_PREMIG_OUTCOME_ID_seq"', 1, false);


--
-- Data for Name: AO_6FF49D_PUBLIC_PLAN_MAPPING; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_PUBLIC_PLAN_MAPPING" ("JOB_ID", "MIGRATION_ID", "PLAN_ID") FROM stdin;
\.


--
-- Data for Name: AO_6FF49D_SKIP_PREFLT_RESULT; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_SKIP_PREFLT_RESULT" ("CHECK_ID", "EXECUTION_ID", "ID", "LAST_EXECUTION_TIME") FROM stdin;
\.


--
-- Name: AO_6FF49D_SKIP_PREFLT_RESULT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_6FF49D_SKIP_PREFLT_RESULT_ID_seq"', 1, false);


--
-- Data for Name: AO_6FF49D_TOMBSTONE_ACCOUNT; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_TOMBSTONE_ACCOUNT" ("AAID", "USER_KEY") FROM stdin;
\.


--
-- Data for Name: AO_6FF49D_UNSUPPORTED_ENTITY; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_UNSUPPORTED_ENTITY" ("EXECUTION_ID", "ID", "IMPACTED_ENTITY_ID", "IMPACTED_ENTITY_NAME", "PROBLEM_ENTITY_NAME", "PROBLEM_TYPE_AND_DETAILS", "PROJECT_KEY", "REFERENCED_BY") FROM stdin;
\.


--
-- Name: AO_6FF49D_UNSUPPORTED_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_6FF49D_UNSUPPORTED_ENTITY_ID_seq"', 1, false);


--
-- Data for Name: AO_6FF49D_USERBASE_SCAN; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_USERBASE_SCAN" ("CREATED_BY", "CREATED_TIMESTAMP", "DUPLICATED_CUSTOMERS_COUNT", "DUPLICATED_USERS_COUNT", "FINISHED_AT", "ID", "INVALID_CUSTOMERS_COUNT", "INVALID_USERS_COUNT", "STARTED_AT", "STATUS", "UPDATED_BY", "UPDATED_TIMESTAMP") FROM stdin;
\.


--
-- Data for Name: AO_6FF49D_USERS_GROUPS_EXTRACT; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_USERS_GROUPS_EXTRACT" ("EXECUTION_ID", "ID", "NAME", "PRESERVE_MEMBERSHIP", "REFERENCED_BY", "REFERENCED_BY_GROUPS", "TYPE", "USER_EMAIL", "USER_KEY", "VERSION") FROM stdin;
\.


--
-- Name: AO_6FF49D_USERS_GROUPS_EXTRACT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_6FF49D_USERS_GROUPS_EXTRACT_ID_seq"', 1, false);


--
-- Data for Name: AO_6FF49D_USER_EMAIL_EVENT_LOG; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_USER_EMAIL_EVENT_LOG" ("CLOUD_ID", "EMAIL", "EVENT_TIMESTAMP", "ID") FROM stdin;
\.


--
-- Name: AO_6FF49D_USER_EMAIL_EVENT_LOG_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_6FF49D_USER_EMAIL_EVENT_LOG_ID_seq"', 1, false);


--
-- Data for Name: AO_6FF49D_VIRTUAL_ATTACHMENT; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_6FF49D_VIRTUAL_ATTACHMENT" ("ID", "VIRTUAL_ATTACHMENT_ID") FROM stdin;
\.


--
-- Name: AO_6FF49D_VIRTUAL_ATTACHMENT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_6FF49D_VIRTUAL_ATTACHMENT_ID_seq"', 1, false);


--
-- Data for Name: AO_723324_CLIENT_CONFIG; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_723324_CLIENT_CONFIG" ("AUTHORIZATION_ENDPOINT", "CLIENT_ID", "CLIENT_SECRET", "DESCRIPTION", "ID", "NAME", "SCOPES", "TOKEN_ENDPOINT", "TYPE") FROM stdin;
\.


--
-- Data for Name: AO_723324_CLIENT_TOKEN; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_723324_CLIENT_TOKEN" ("ACCESS_TOKEN", "ACCESS_TOKEN_EXPIRATION", "CONFIG_ID", "ID", "LAST_REFRESHED", "LAST_STATUS_UPDATED", "REFRESH_COUNT", "REFRESH_TOKEN", "REFRESH_TOKEN_EXPIRATION", "STATUS") FROM stdin;
\.


--
-- Data for Name: AO_733371_EVENT; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_733371_EVENT" ("ACTION", "ACTION_ID", "CREATED", "EVENT_BUNDLE_ID", "EVENT_TYPE", "ID", "USER_KEY") FROM stdin;
\.


--
-- Name: AO_733371_EVENT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_733371_EVENT_ID_seq"', 1, false);


--
-- Data for Name: AO_733371_EVENT_PARAMETER; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_733371_EVENT_PARAMETER" ("EVENT_ID", "ID", "NAME", "VALUE") FROM stdin;
\.


--
-- Name: AO_733371_EVENT_PARAMETER_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_733371_EVENT_PARAMETER_ID_seq"', 1, false);


--
-- Data for Name: AO_733371_EVENT_RECIPIENT; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_733371_EVENT_RECIPIENT" ("CONSUMER_NAME", "CREATED", "EVENT_ID", "ID", "SEND_DATE", "STATUS", "UPDATED", "USER_KEY") FROM stdin;
\.


--
-- Name: AO_733371_EVENT_RECIPIENT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_733371_EVENT_RECIPIENT_ID_seq"', 1, false);


--
-- Data for Name: AO_81F455_PERSONAL_TOKEN; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_81F455_PERSONAL_TOKEN" ("CREATED_AT", "EXPIRING_AT", "HASHED_TOKEN", "ID", "LAST_ACCESSED_AT", "NAME", "NOTIFICATION_STATE", "TOKEN_ID", "USER_KEY") FROM stdin;
2024-07-02 23:19:52.079	9999-12-31 00:00:00	{PKCS5S2}SqqJDu9arOJdQI48uSyjKx0dRqPNCwO4lAKGAJSgcdFn3C0dcOIrSAEGsFP828MZ	2	2024-07-03 17:44:39.117857	ci token	NOT_SENT	742309342887	JIRAUSER10000
\.


--
-- Name: AO_81F455_PERSONAL_TOKEN_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_81F455_PERSONAL_TOKEN_ID_seq"', 2, true);


--
-- Data for Name: AO_82B313_PERSON; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_82B313_PERSON" ("AVATAR_URL", "END", "ID", "JIRA_USER_ID", "START", "TITLE") FROM stdin;
\.


--
-- Data for Name: AO_82B313_SKILL; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_82B313_SKILL" ("ID", "SHAREABLE", "TITLE") FROM stdin;
\.


--
-- Data for Name: AO_82B313_ABILITY; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_82B313_ABILITY" ("COMBINED_KEY", "ID", "PERSON_ID", "SKILL_ID") FROM stdin;
\.


--
-- Name: AO_82B313_ABILITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_82B313_ABILITY_ID_seq"', 1, false);


--
-- Data for Name: AO_82B313_ABSENCE; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_82B313_ABSENCE" ("END", "ID", "PERSON_ID", "START", "TITLE") FROM stdin;
\.


--
-- Name: AO_82B313_ABSENCE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_82B313_ABSENCE_ID_seq"', 1, false);


--
-- Data for Name: AO_82B313_TEAM; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_82B313_TEAM" ("AVATAR_URL", "ID", "SHAREABLE", "TITLE") FROM stdin;
\.


--
-- Data for Name: AO_82B313_RESOURCE; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_82B313_RESOURCE" ("ID", "JOIN_DATE", "LEAVE_DATE", "PERSON_ID", "TEAM_ID", "WEEKLY_HOURS") FROM stdin;
\.


--
-- Data for Name: AO_82B313_AVAILABILITY; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_82B313_AVAILABILITY" ("END", "ID", "RESOURCE_ID", "START", "TITLE", "WEEKLY_HOURS") FROM stdin;
\.


--
-- Name: AO_82B313_AVAILABILITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_82B313_AVAILABILITY_ID_seq"', 1, false);


--
-- Data for Name: AO_82B313_INIT; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_82B313_INIT" ("ID", "KEY") FROM stdin;
1	team-cf-init
2	subtask-team-indexing
\.


--
-- Name: AO_82B313_INIT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_82B313_INIT_ID_seq"', 2, true);


--
-- Name: AO_82B313_PERSON_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_82B313_PERSON_ID_seq"', 1, false);


--
-- Name: AO_82B313_RESOURCE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_82B313_RESOURCE_ID_seq"', 1, false);


--
-- Name: AO_82B313_SKILL_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_82B313_SKILL_ID_seq"', 1, false);


--
-- Name: AO_82B313_TEAM_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_82B313_TEAM_ID_seq"', 1, false);


--
-- Data for Name: AO_8752F1_DATA_PIPELINE_CONFIG; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_8752F1_DATA_PIPELINE_CONFIG" ("ID", "KEY", "VALUE") FROM stdin;
\.


--
-- Name: AO_8752F1_DATA_PIPELINE_CONFIG_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_8752F1_DATA_PIPELINE_CONFIG_ID_seq"', 1, false);


--
-- Data for Name: AO_8752F1_DATA_PIPELINE_EOO; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_8752F1_DATA_PIPELINE_EOO" ("ENTITY_IDENTIFIER", "ENTITY_TYPE", "ID") FROM stdin;
\.


--
-- Name: AO_8752F1_DATA_PIPELINE_EOO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_8752F1_DATA_PIPELINE_EOO_ID_seq"', 1, false);


--
-- Data for Name: AO_8752F1_DATA_PIPELINE_JOB; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_8752F1_DATA_PIPELINE_JOB" ("CREATED", "ERRORS", "EXPORTED_ENTITIES", "EXPORT_FORCED", "EXPORT_FROM", "EXPORT_PATH", "ID", "METADATA", "OPTED_OUT_ENTITY_IDENTIFIERS", "ROOT_EXPORT_PATH", "SCHEMA_VERSION", "STATUS", "UPDATED", "WARNINGS", "WRITTEN_ROWS") FROM stdin;
\.


--
-- Name: AO_8752F1_DATA_PIPELINE_JOB_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_8752F1_DATA_PIPELINE_JOB_ID_seq"', 1, false);


--
-- Data for Name: AO_97EDAB_USERINVITATION; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_97EDAB_USERINVITATION" ("APPLICATION_KEYS", "EMAIL_ADDRESS", "EXPIRY", "ID", "REDEEMED", "SENDER_USERNAME", "TOKEN") FROM stdin;
\.


--
-- Name: AO_97EDAB_USERINVITATION_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_97EDAB_USERINVITATION_ID_seq"', 1, false);


--
-- Data for Name: AO_A0B856_WEB_HOOK_LISTENER_AO; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_A0B856_WEB_HOOK_LISTENER_AO" ("DESCRIPTION", "ENABLED", "EVENTS", "EXCLUDE_BODY", "FILTERS", "ID", "LAST_UPDATED", "LAST_UPDATED_USER", "NAME", "PARAMETERS", "REGISTRATION_METHOD", "URL") FROM stdin;
\.


--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq"', 1, false);


--
-- Data for Name: AO_A415DF_AOPLAN; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_A415DF_AOPLAN" ("AODATE", "AOREPLANNING_DATE", "DESCRIPTION", "DETAILS", "ID_OTHER", "IN_REPLANNING", "IN_STREAM_MODE", "PLAN_VERSION", "REPLANNING_VERSION", "SCHEDULING_VERSION", "TITLE", "VERSION") FROM stdin;
\.


--
-- Data for Name: AO_A415DF_AOPERSON; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_A415DF_AOPERSON" ("AOEXTERNAL_ID", "AOPLAN_ID", "DESCRIPTION", "DETAILS", "EXTERNAL", "ID_OTHER", "TITLE", "VERSION") FROM stdin;
\.


--
-- Data for Name: AO_A415DF_AOABILITY; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_A415DF_AOABILITY" ("ABILITY_VALUE", "AOPERSON_ID", "ID_OTHER", "TARGET_ID", "TARGET_TYPE", "VERSION") FROM stdin;
\.


--
-- Name: AO_A415DF_AOABILITY_ID_OTHER_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_A415DF_AOABILITY_ID_OTHER_seq"', 1, false);


--
-- Data for Name: AO_A415DF_AOABSENCE; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_A415DF_AOABSENCE" ("AOPERSON_ID", "DESCRIPTION", "DETAILS", "END_DATE", "ID_OTHER", "ORDER_RANGE_IDENTIFIER", "SORT_ORDER", "START_DATE", "TITLE", "VERSION") FROM stdin;
\.


--
-- Name: AO_A415DF_AOABSENCE_ID_OTHER_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_A415DF_AOABSENCE_ID_OTHER_seq"', 1, false);


--
-- Data for Name: AO_A415DF_AOTEAM; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_A415DF_AOTEAM" ("AOPLAN_ID", "AUTO_ADJUST_TO_ABSENCES", "DESCRIPTION", "DETAILS", "ID_OTHER", "INCREMENTAL_ADJUSTMENT", "ITERATION_START_TYPE", "ORDER_RANGE_IDENTIFIER", "PLANNING_MODE", "SORT_ORDER", "TITLE", "VELOCITY", "VERSION", "WEEKS_PER_SPRINT") FROM stdin;
\.


--
-- Data for Name: AO_A415DF_AORESOURCE; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_A415DF_AORESOURCE" ("AOPERSON_ID", "AOTEAM_ID", "AVAILABILITY", "ID_OTHER", "ORDER_RANGE_IDENTIFIER", "SORT_ORDER", "VERSION") FROM stdin;
\.


--
-- Data for Name: AO_A415DF_AOAVAILABILITY; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_A415DF_AOAVAILABILITY" ("AORESOURCE_ID", "AVAILABILITY", "DESCRIPTION", "DETAILS", "END_DATE", "ID_OTHER", "ORDER_RANGE_IDENTIFIER", "SORT_ORDER", "START_DATE", "TITLE", "VERSION") FROM stdin;
\.


--
-- Name: AO_A415DF_AOAVAILABILITY_ID_OTHER_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_A415DF_AOAVAILABILITY_ID_OTHER_seq"', 1, false);


--
-- Data for Name: AO_A415DF_AOCONFIGURATION; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_A415DF_AOCONFIGURATION" ("ID_OTHER", "INITIALIZED", "INIT_STATE") FROM stdin;
1	t	1
\.


--
-- Name: AO_A415DF_AOCONFIGURATION_ID_OTHER_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_A415DF_AOCONFIGURATION_ID_OTHER_seq"', 1, true);


--
-- Data for Name: AO_A415DF_AOCUSTOM_WORDING; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_A415DF_AOCUSTOM_WORDING" ("ID_OTHER", "WORD_KEY", "WORD_VALUE") FROM stdin;
\.


--
-- Name: AO_A415DF_AOCUSTOM_WORDING_ID_OTHER_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_A415DF_AOCUSTOM_WORDING_ID_OTHER_seq"', 1, false);


--
-- Data for Name: AO_A415DF_AODEPENDENCY; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_A415DF_AODEPENDENCY" ("DEPENDEE", "DEPENDENT", "ID_OTHER") FROM stdin;
\.


--
-- Name: AO_A415DF_AODEPENDENCY_ID_OTHER_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_A415DF_AODEPENDENCY_ID_OTHER_seq"', 1, false);


--
-- Data for Name: AO_A415DF_AODOOR_STOP; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_A415DF_AODOOR_STOP" ("ID") FROM stdin;
1
\.


--
-- Name: AO_A415DF_AODOOR_STOP_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_A415DF_AODOOR_STOP_ID_seq"', 1, true);


--
-- Data for Name: AO_A415DF_AOSTREAM; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_A415DF_AOSTREAM" ("AOPLAN_ID", "COLOR", "DESCRIPTION", "DETAILS", "DYNAMIC_START_STREAM", "ID_OTHER", "ORDER_RANGE_IDENTIFIER", "SHORT_NAME", "SORT_ORDER", "TITLE", "VERSION") FROM stdin;
\.


--
-- Data for Name: AO_A415DF_AORELEASE; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_A415DF_AORELEASE" ("AODELTA_START_DATE", "AOFIXED_END_DATE", "AOFIXED_START_DATE", "AOPLAN_ID", "AOSTREAM_ID", "DESCRIPTION", "DETAILS", "ID_OTHER", "IS_LATER_RELEASE", "ORDER_RANGE_IDENTIFIER", "PRIMARY_VERSION", "SORT_ORDER", "TITLE", "VERSION") FROM stdin;
\.


--
-- Data for Name: AO_A415DF_AOSPRINT; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_A415DF_AOSPRINT" ("AOTEAM_ID", "DESCRIPTION", "DETAILS", "END_DATE", "ID_OTHER", "ORDER_RANGE_IDENTIFIER", "SORT_ORDER", "START_DATE", "TITLE", "VERSION") FROM stdin;
\.


--
-- Data for Name: AO_A415DF_AOTHEME; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_A415DF_AOTHEME" ("AOPLAN_ID", "COLOR", "DESCRIPTION", "DETAILS", "ID_OTHER", "ORDER_RANGE_IDENTIFIER", "PERCENTAGE", "SORT_ORDER", "TITLE", "VERSION") FROM stdin;
\.


--
-- Data for Name: AO_A415DF_AOWORK_ITEM; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_A415DF_AOWORK_ITEM" ("AOBUSINESS_VALUE", "AOEARLIEST_START", "AOPARENT_ID", "AOPLAN_ID", "AORELEASE_ID", "AOSPRINT_ID", "AOSTREAM_ID", "AOTARGET_END", "AOTARGET_START", "AOTEAM_ID", "AOTHEME_ID", "DESCRIPTION", "DETAILS", "EARLIEST_START", "HAS_ORIGINAL_ESTIMATES", "ID_OTHER", "ORDER_RANGE_IDENTIFIER", "PARENT_ID", "REPLANNING_STATUS", "SORT_ORDER", "STATUS", "TITLE", "TYPE", "VERSION") FROM stdin;
\.


--
-- Data for Name: AO_A415DF_AOESTIMATE; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_A415DF_AOESTIMATE" ("AOWORK_ITEM_ID", "CURRENCY", "ESTIMATE", "ID_OTHER", "ORIGINAL", "REPLANNING", "TARGET_ID", "TARGET_TYPE", "VERSION") FROM stdin;
\.


--
-- Name: AO_A415DF_AOESTIMATE_ID_OTHER_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_A415DF_AOESTIMATE_ID_OTHER_seq"', 1, false);


--
-- Data for Name: AO_A415DF_AOEXTENSION_LINK; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_A415DF_AOEXTENSION_LINK" ("AOEXTENDABLE_ID", "AOEXTENDABLE_TYPE", "EXTENSION_KEY", "EXTENSION_LINK", "ID_OTHER", "VERSION") FROM stdin;
\.


--
-- Name: AO_A415DF_AOEXTENSION_LINK_ID_OTHER_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_A415DF_AOEXTENSION_LINK_ID_OTHER_seq"', 1, false);


--
-- Data for Name: AO_A415DF_AONON_WORKING_DAYS; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_A415DF_AONON_WORKING_DAYS" ("AOPLAN_ID", "DESCRIPTION", "DETAILS", "END_DATE", "ID_OTHER", "ORDER_RANGE_IDENTIFIER", "SORT_ORDER", "START_DATE", "TITLE", "VERSION") FROM stdin;
\.


--
-- Name: AO_A415DF_AONON_WORKING_DAYS_ID_OTHER_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_A415DF_AONON_WORKING_DAYS_ID_OTHER_seq"', 1, false);


--
-- Data for Name: AO_A415DF_AOPERMISSION; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_A415DF_AOPERMISSION" ("HOLDER_ID", "HOLDER_TYPE", "ID_OTHER", "PERMISSION", "TARGET_ID", "TARGET_TYPE", "VERSION") FROM stdin;
jira-administrators	group	1	100	user	system	0
jira-software-users	group	2	100	user	system	0
jira-administrators	group	3	100	labs	system	0
jira-administrators	group	4	100	team-mgmt	system	0
jira-software-users	group	5	100	labs	system	0
jira-software-users	group	6	100	team-mgmt	system	0
\.


--
-- Name: AO_A415DF_AOPERMISSION_ID_OTHER_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_A415DF_AOPERMISSION_ID_OTHER_seq"', 6, true);


--
-- Name: AO_A415DF_AOPERSON_ID_OTHER_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_A415DF_AOPERSON_ID_OTHER_seq"', 1, false);


--
-- Data for Name: AO_A415DF_AOPLAN_CONFIGURATION; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_A415DF_AOPLAN_CONFIGURATION" ("AOPLAN_ID", "AOPROGRESS_TRACKER_TYPE", "AOWEEKDAY_CONFIG", "BACKLOG_RECORD_LIMIT", "DEFAULT_EPIC_ESTIMATE", "DEFAULT_STORY_ESTIMATE", "EPIC_SYNC_MODE", "GLOBAL_DEFAULT_VELOCITY", "GLOBAL_SPRINT_LENGTH", "HAS_SPRINT_CONSTRAINT", "HEURISTIC_THRESHOLD", "HOURS_PER_DAY", "ID_OTHER", "IMPORT_LIMIT", "INITIATIVE_SYNC_MODE", "LINKING_MODE", "MAX_RESOURCES_PER_STORY", "MIN_LOAD_UNSTR_EPICS", "PLANNING_UNIT", "PROG_CMPLT_IF_RSLVD", "PROG_DSPL_UNEST_RTIO", "PROG_FIELD_NAME", "PROG_STRY_SUB_TASK_MODE", "SPRINT_EXCEEDED_WARN", "STORY_SYNC_MODE", "STRICT_STAGE_DIVISION", "SUGGEST_REPL_ESTIMATES", "SYNC_DESCRIPTION", "SYNC_EPICS", "SYNC_ESTIMATES", "SYNC_INITIATIVES", "SYNC_START_ENABLED", "SYNC_STORIES", "SYNC_SUMMARY", "TEMPLATE_TYPE") FROM stdin;
\.


--
-- Name: AO_A415DF_AOPLAN_CONFIGURATION_ID_OTHER_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_A415DF_AOPLAN_CONFIGURATION_ID_OTHER_seq"', 1, false);


--
-- Name: AO_A415DF_AOPLAN_ID_OTHER_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_A415DF_AOPLAN_ID_OTHER_seq"', 1, false);


--
-- Data for Name: AO_A415DF_AOPRESENCE; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_A415DF_AOPRESENCE" ("AOPERSON_ID", "DESCRIPTION", "DETAILS", "END_DATE", "ID_OTHER", "ORDER_RANGE_IDENTIFIER", "SORT_ORDER", "START_DATE", "TITLE", "VERSION") FROM stdin;
\.


--
-- Name: AO_A415DF_AOPRESENCE_ID_OTHER_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_A415DF_AOPRESENCE_ID_OTHER_seq"', 1, false);


--
-- Name: AO_A415DF_AORELEASE_ID_OTHER_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_A415DF_AORELEASE_ID_OTHER_seq"', 1, false);


--
-- Data for Name: AO_A415DF_AOREPLANNING; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_A415DF_AOREPLANNING" ("ID_OTHER", "TARGET_ID", "TARGET_TYPE", "WORK_ITEM_ID") FROM stdin;
\.


--
-- Name: AO_A415DF_AOREPLANNING_ID_OTHER_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_A415DF_AOREPLANNING_ID_OTHER_seq"', 1, false);


--
-- Name: AO_A415DF_AORESOURCE_ID_OTHER_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_A415DF_AORESOURCE_ID_OTHER_seq"', 1, false);


--
-- Data for Name: AO_A415DF_AOSTAGE; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_A415DF_AOSTAGE" ("AOPLAN_ID", "COLOR", "DESCRIPTION", "DETAILS", "ID_OTHER", "ORDER_RANGE_IDENTIFIER", "PERCENTAGE", "SORT_ORDER", "TITLE", "VERSION") FROM stdin;
\.


--
-- Data for Name: AO_A415DF_AOSKILL; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_A415DF_AOSKILL" ("AOSTAGE_ID", "DESCRIPTION", "DETAILS", "ID_OTHER", "ORDER_RANGE_IDENTIFIER", "PERCENTAGE", "SORT_ORDER", "STAGE_ID", "TITLE", "VERSION") FROM stdin;
\.


--
-- Name: AO_A415DF_AOSKILL_ID_OTHER_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_A415DF_AOSKILL_ID_OTHER_seq"', 1, false);


--
-- Data for Name: AO_A415DF_AOSOLUTION_STORE; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_A415DF_AOSOLUTION_STORE" ("AOPLAN_ID", "ID_OTHER", "SOLUTION", "SOLUTION_VERSION") FROM stdin;
\.


--
-- Name: AO_A415DF_AOSOLUTION_STORE_ID_OTHER_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_A415DF_AOSOLUTION_STORE_ID_OTHER_seq"', 1, false);


--
-- Name: AO_A415DF_AOSPRINT_ID_OTHER_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_A415DF_AOSPRINT_ID_OTHER_seq"', 1, false);


--
-- Name: AO_A415DF_AOSTAGE_ID_OTHER_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_A415DF_AOSTAGE_ID_OTHER_seq"', 1, false);


--
-- Name: AO_A415DF_AOSTREAM_ID_OTHER_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_A415DF_AOSTREAM_ID_OTHER_seq"', 1, false);


--
-- Data for Name: AO_A415DF_AOSTREAM_TO_TEAM; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_A415DF_AOSTREAM_TO_TEAM" ("AOSTREAM_ID", "AOTEAM_ID", "ID_OTHER", "VERSION") FROM stdin;
\.


--
-- Name: AO_A415DF_AOSTREAM_TO_TEAM_ID_OTHER_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_A415DF_AOSTREAM_TO_TEAM_ID_OTHER_seq"', 1, false);


--
-- Name: AO_A415DF_AOTEAM_ID_OTHER_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_A415DF_AOTEAM_ID_OTHER_seq"', 1, false);


--
-- Name: AO_A415DF_AOTHEME_ID_OTHER_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_A415DF_AOTHEME_ID_OTHER_seq"', 1, false);


--
-- Name: AO_A415DF_AOWORK_ITEM_ID_OTHER_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_A415DF_AOWORK_ITEM_ID_OTHER_seq"', 1, false);


--
-- Data for Name: AO_A415DF_AOWORK_ITEM_TO_RES; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_A415DF_AOWORK_ITEM_TO_RES" ("AORESOURCE_ID", "AOWORK_ITEM_ID", "ID_OTHER", "REPLANNING") FROM stdin;
\.


--
-- Name: AO_A415DF_AOWORK_ITEM_TO_RES_ID_OTHER_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_A415DF_AOWORK_ITEM_TO_RES_ID_OTHER_seq"', 1, false);


--
-- Data for Name: AO_AC3877_RL_USER_COUNTER; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_AC3877_RL_USER_COUNTER" ("ID", "INTERVAL_START", "NODE_ID", "REJECT_COUNT", "USER_ID") FROM stdin;
\.


--
-- Name: AO_AC3877_RL_USER_COUNTER_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_AC3877_RL_USER_COUNTER_ID_seq"', 1, false);


--
-- Data for Name: AO_AC3877_SETTINGS_VERSION; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_AC3877_SETTINGS_VERSION" ("TYPE", "VERSION") FROM stdin;
DEFAULT	1
\.


--
-- Data for Name: AO_AC3877_SYSTEM_RL_SETTINGS; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_AC3877_SYSTEM_RL_SETTINGS" ("CAPACITY", "CLEAN_JOB_DURATION", "FILL_RATE", "FLUSH_JOB_DURATION", "INTERVAL_FREQUENCY", "INTERVAL_TIME_UNIT", "MODE", "NAME", "REAPER_JOB_DURATION", "RETENTION_PERIOD_DURATION", "SETTINGS_RELOAD_JOB_DURATION") FROM stdin;
50	PT1M10S	10	PT5M	1	SECONDS	OFF	SYSTEM	PT15M	PT24H	PT1M
\.


--
-- Data for Name: AO_AC3877_USER_RL_SETTINGS; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_AC3877_USER_RL_SETTINGS" ("CAPACITY", "FILL_RATE", "INTERVAL_FREQUENCY", "INTERVAL_TIME_UNIT", "USER_ID", "WHITELISTED") FROM stdin;
\.


--
-- Data for Name: AO_B9A0F0_APPLIED_TEMPLATE; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_B9A0F0_APPLIED_TEMPLATE" ("ID", "PROJECT_ID", "PROJECT_TEMPLATE_MODULE_KEY", "PROJECT_TEMPLATE_WEB_ITEM_KEY") FROM stdin;
1	10000	com.pyxis.greenhopper.jira:gh-sample-kanban-template	com.pyxis.greenhopper.jira:gh-sample-kanban-template
\.


--
-- Name: AO_B9A0F0_APPLIED_TEMPLATE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_B9A0F0_APPLIED_TEMPLATE_ID_seq"', 1, true);


--
-- Data for Name: AO_C16815_ALERT_AO; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_C16815_ALERT_AO" ("CREATED_DATE", "DETAILS_JSON", "ID", "ISSUE_COMPONENT_ID", "ISSUE_ID", "ISSUE_SEVERITY", "NODE_NAME", "TRIGGER_MODULE", "TRIGGER_PLUGIN_KEY", "TRIGGER_PLUGIN_KEY_VERSION", "TRIGGER_PLUGIN_VERSION") FROM stdin;
\.


--
-- Name: AO_C16815_ALERT_AO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_C16815_ALERT_AO_ID_seq"', 1, false);


--
-- Data for Name: AO_C77861_AUDIT_ACTION_CACHE; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_C77861_AUDIT_ACTION_CACHE" ("ACTION", "ACTION_T_KEY", "ID") FROM stdin;
Group created	jira.auditing.group.created	1
Global permission added	jira.auditing.global.permission.added	2
New license added	jira.auditing.system.license.added	3
User created	jira.auditing.user.created	4
User added to group	jira.auditing.user.added.to.group	5
Permission scheme updated	jira.auditing.permission.scheme.updated	6
Custom field created	jira.auditing.customfield.created	7
Issue type created	jira.auditing.issue.type.created	8
JFR recording started	stp.jfr.audit.recording.started	9
Custom field updated	jira.auditing.customfield.updated	10
New resolution created	jira.auditing.resolutions.created	11
Workflow created	jira.auditing.workflow.created	12
Workflow scheme created	jira.auditing.workflow.scheme.created	13
Workflow scheme added to project	jira.auditing.workflow.scheme.added.to.project	14
Filter created	jira.auditing.filter.created	15
Board created	Board created	16
Permission scheme created	jira.auditing.permission.scheme.created	17
Permission scheme removed from project	jira.auditing.permission.scheme.removed.from.project	18
Permission scheme added to project	jira.auditing.permission.scheme.added.to.project	19
Project created	jira.auditing.project.created	20
Project version created	jira.auditing.version.created	21
Project version released	jira.auditing.version.released	22
Personal access token created	personal.access.tokens.audit.log.summary.token.created	23
Personal access token deleted	personal.access.tokens.audit.log.summary.token.deleted	24
\.


--
-- Name: AO_C77861_AUDIT_ACTION_CACHE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_C77861_AUDIT_ACTION_CACHE_ID_seq"', 24, true);


--
-- Data for Name: AO_C77861_AUDIT_CATEGORY_CACHE; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_C77861_AUDIT_CATEGORY_CACHE" ("CATEGORY", "CATEGORY_T_KEY", "ID") FROM stdin;
group management	jira.auditing.category.groupmanagement	1
permissions	jira.auditing.category.permissions	2
system	jira.auditing.category.system	3
user management	jira.auditing.category.usermanagement	4
fields	jira.auditing.category.fields	5
issue types	jira.auditing.category.issuetypes	6
System	stp.audit.category.system	7
workflows	jira.auditing.category.workflows	8
filters	jira.auditing.category.filters	9
boards	jira.auditing.category.boards	10
projects	jira.auditing.category.projects	11
Security	personal.access.tokens.audit.log.category	12
\.


--
-- Name: AO_C77861_AUDIT_CATEGORY_CACHE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_C77861_AUDIT_CATEGORY_CACHE_ID_seq"', 12, true);


--
-- Data for Name: AO_C77861_AUDIT_DENY_LISTED; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_C77861_AUDIT_DENY_LISTED" ("ACTION", "ID") FROM stdin;
\.


--
-- Name: AO_C77861_AUDIT_DENY_LISTED_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_C77861_AUDIT_DENY_LISTED_ID_seq"', 1, false);


--
-- Data for Name: AO_C77861_AUDIT_ENTITY; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_C77861_AUDIT_ENTITY" ("ACTION", "ACTION_T_KEY", "AREA", "ATTRIBUTES", "CATEGORY", "CATEGORY_T_KEY", "CHANGE_VALUES", "ENTITY_TIMESTAMP", "ID", "LEVEL", "METHOD", "NODE", "PRIMARY_RESOURCE_ID", "PRIMARY_RESOURCE_TYPE", "RESOURCES", "RESOURCE_ID_3", "RESOURCE_ID_4", "RESOURCE_ID_5", "RESOURCE_TYPE_3", "RESOURCE_TYPE_4", "RESOURCE_TYPE_5", "SEARCH_STRING", "SECONDARY_RESOURCE_ID", "SECONDARY_RESOURCE_TYPE", "SOURCE", "SYSTEM_INFO", "USER_ID", "USER_NAME", "USER_TYPE") FROM stdin;
Group created	jira.auditing.group.created	USER_MANAGEMENT	[]	group management	jira.auditing.category.groupmanagement	[]	1719959828415	1	BASE	Browser	\N	\N	GROUP	[{"name":"jira-software-users","type":"GROUP","uri":null,"id":null}]	\N	\N	\N	\N	\N	\N	jira-software-users jira.auditing.group.created jira.auditing.category.groupmanagement group created management anonymous 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	-2	Anonymous	user
Global permission added	jira.auditing.global.permission.added	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Create Shared Objects"},{"i18nKey":"admin.common.words.group","key":"Group","from":"","to":"jira-software-users"}]	1719959828453	2	BASE	Browser	\N	\N	PERMISSIONS	[{"name":"Global Permissions","type":"PERMISSIONS","uri":null,"id":null}]	\N	\N	\N	\N	\N	\N	global permissions jira.auditing.global.permission.added jira.auditing.category.permissions permission added anonymous 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	-2	Anonymous	user
Global permission added	jira.auditing.global.permission.added	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Bulk Change"},{"i18nKey":"admin.common.words.group","key":"Group","from":"","to":"jira-software-users"}]	1719959828456	3	BASE	Browser	\N	\N	PERMISSIONS	[{"name":"Global Permissions","type":"PERMISSIONS","uri":null,"id":null}]	\N	\N	\N	\N	\N	\N	global permissions jira.auditing.global.permission.added jira.auditing.category.permissions permission added anonymous 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	-2	Anonymous	user
Global permission added	jira.auditing.global.permission.added	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Manage Group Filter Subscriptions"},{"i18nKey":"admin.common.words.group","key":"Group","from":"","to":"jira-software-users"}]	1719959828457	4	BASE	Browser	\N	\N	PERMISSIONS	[{"name":"Global Permissions","type":"PERMISSIONS","uri":null,"id":null}]	\N	\N	\N	\N	\N	\N	global permissions jira.auditing.global.permission.added jira.auditing.category.permissions permission added anonymous 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	-2	Anonymous	user
Global permission added	jira.auditing.global.permission.added	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Browse Users"},{"i18nKey":"admin.common.words.group","key":"Group","from":"","to":"jira-software-users"}]	1719959828458	5	BASE	Browser	\N	\N	PERMISSIONS	[{"name":"Global Permissions","type":"PERMISSIONS","uri":null,"id":null}]	\N	\N	\N	\N	\N	\N	global permissions jira.auditing.global.permission.added jira.auditing.category.permissions permission added anonymous 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	-2	Anonymous	user
New license added	jira.auditing.system.license.added	GLOBAL_CONFIG_AND_ADMINISTRATION	[]	system	jira.auditing.category.system	[{"i18nKey":"admin.license.organisation","key":"Organization","from":null,"to":"testing"},{"i18nKey":"admin.license.date.purchased","key":"Date Purchased","from":null,"to":"02/Jul/24"},{"i18nKey":"admin.license.type","key":"License Type","from":null,"to":"Jira Software (Data Center): Evaluation"},{"i18nKey":"admin.server.id","key":"Server ID","from":null,"to":"BPHX-UXO3-4G8O-0BVT"},{"i18nKey":"admin.license.sen","key":"Support Entitlement Number (SEN)","from":null,"to":"SEN-L20380445"},{"i18nKey":"admin.license.user.limit","key":"User Limit","from":null,"to":"Unlimited"},{"i18nKey":"jira-software","key":"jira-software","from":null,"to":"-1"}]	1719959828467	6	BASE	Browser	\N	0	LICENSE	[{"name":"SEN-L20380445","type":"LICENSE","uri":null,"id":"0"}]	\N	\N	\N	\N	\N	\N	sen-l20380445 jira.auditing.system.license.added jira.auditing.category.system new license added system anonymous 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	-2	Anonymous	user
User created	jira.auditing.user.created	USER_MANAGEMENT	[]	user management	jira.auditing.category.usermanagement	[{"i18nKey":"common.words.username","key":"Username","from":null,"to":"admin"},{"i18nKey":"common.words.fullname","key":"Full name","from":null,"to":"admin"},{"i18nKey":"common.words.email","key":"Email","from":null,"to":"admin@example.com"},{"i18nKey":"admin.common.phrases.active.inactive","key":"Active / Inactive","from":null,"to":"Active"}]	1719959877430	7	BASE	Browser	\N	JIRAUSER10000	USER	[{"name":"admin","type":"USER","uri":null,"id":"JIRAUSER10000"}]	\N	\N	\N	\N	\N	\N	admin jira.auditing.user.created jira.auditing.category.usermanagement user created management anonymous 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	-2	Anonymous	user
User added to group	jira.auditing.user.added.to.group	USER_MANAGEMENT	[]	group management	jira.auditing.category.groupmanagement	[]	1719959877442	8	BASE	Browser	\N	\N	GROUP	[{"name":"jira-administrators","type":"GROUP","uri":null,"id":null},{"name":"admin","type":"USER","uri":null,"id":"JIRAUSER10000"}]	\N	\N	\N	\N	\N	\N	jira-administrators admin jira.auditing.user.added.to.group jira.auditing.category.groupmanagement user added to group management anonymous 192.168.65.1	JIRAUSER10000	USER	192.168.65.1	http://localhost:8080	-2	Anonymous	user
Global permission added	jira.auditing.global.permission.added	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Manage Group Filter Subscriptions"},{"i18nKey":"admin.common.words.group","key":"Group","from":"","to":"jira-administrators"}]	1719959877452	9	BASE	Browser	\N	\N	PERMISSIONS	[{"name":"Global Permissions","type":"PERMISSIONS","uri":null,"id":null}]	\N	\N	\N	\N	\N	\N	global permissions jira.auditing.global.permission.added jira.auditing.category.permissions permission added anonymous 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	-2	Anonymous	user
Global permission added	jira.auditing.global.permission.added	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Bulk Change"},{"i18nKey":"admin.common.words.group","key":"Group","from":"","to":"jira-administrators"}]	1719959877454	10	BASE	Browser	\N	\N	PERMISSIONS	[{"name":"Global Permissions","type":"PERMISSIONS","uri":null,"id":null}]	\N	\N	\N	\N	\N	\N	global permissions jira.auditing.global.permission.added jira.auditing.category.permissions permission added anonymous 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	-2	Anonymous	user
Global permission added	jira.auditing.global.permission.added	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Create Shared Objects"},{"i18nKey":"admin.common.words.group","key":"Group","from":"","to":"jira-administrators"}]	1719959877455	11	BASE	Browser	\N	\N	PERMISSIONS	[{"name":"Global Permissions","type":"PERMISSIONS","uri":null,"id":null}]	\N	\N	\N	\N	\N	\N	global permissions jira.auditing.global.permission.added jira.auditing.category.permissions permission added anonymous 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	-2	Anonymous	user
User added to group	jira.auditing.user.added.to.group	USER_MANAGEMENT	[]	group management	jira.auditing.category.groupmanagement	[]	1719959877458	13	BASE	Browser	\N	\N	GROUP	[{"name":"jira-software-users","type":"GROUP","uri":null,"id":null},{"name":"admin","type":"USER","uri":null,"id":"JIRAUSER10000"}]	\N	\N	\N	\N	\N	\N	jira-software-users admin jira.auditing.user.added.to.group jira.auditing.category.groupmanagement user added to group management anonymous 192.168.65.1	JIRAUSER10000	USER	192.168.65.1	http://localhost:8080	-2	Anonymous	user
Global permission added	jira.auditing.global.permission.added	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Browse Users"},{"i18nKey":"admin.common.words.group","key":"Group","from":"","to":"jira-administrators"}]	1719959877456	12	BASE	Browser	\N	\N	PERMISSIONS	[{"name":"Global Permissions","type":"PERMISSIONS","uri":null,"id":null}]	\N	\N	\N	\N	\N	\N	global permissions jira.auditing.global.permission.added jira.auditing.category.permissions permission added anonymous 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	-2	Anonymous	user
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Manage Sprints"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Project Role"},{"i18nKey":"admin.common.words.value","key":"Value","from":"","to":"Administrators"}]	1719959887716	14	BASE	Browser	\N	0	SCHEME	[{"name":"Default Permission Scheme","type":"SCHEME","uri":null,"id":"0"}]	\N	\N	\N	\N	\N	\N	default permission scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions updated permissions anonymous 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	-2	Anonymous	user
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"Manage Sprints","to":""},{"i18nKey":"admin.common.words.type","key":"Type","from":"Project Role","to":""},{"i18nKey":"admin.common.words.value","key":"Value","from":"Administrators","to":""}]	1719959887724	15	BASE	Browser	\N	0	SCHEME	[{"name":"Default Permission Scheme","type":"SCHEME","uri":null,"id":"0"}]	\N	\N	\N	\N	\N	\N	default permission scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions updated permissions anonymous 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	-2	Anonymous	user
Custom field created	jira.auditing.customfield.created	GLOBAL_CONFIG_AND_ADMINISTRATION	[]	fields	jira.auditing.category.fields	[{"i18nKey":"common.words.name","key":"Name","from":null,"to":"Rank"},{"i18nKey":"common.words.description","key":"Description","from":null,"to":"Global rank field for Jira Software use only."},{"i18nKey":"common.words.type","key":"Type","from":null,"to":"Global Rank"}]	1719959888053	17	BASE	Browser	\N	customfield_10100	CUSTOM_FIELD	[{"name":"Rank","type":"CUSTOM_FIELD","uri":null,"id":"customfield_10100"}]	\N	\N	\N	\N	\N	\N	rank jira.auditing.customfield.created jira.auditing.category.fields custom field created fields anonymous 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	-2	Anonymous	user
Custom field created	jira.auditing.customfield.created	GLOBAL_CONFIG_AND_ADMINISTRATION	[]	fields	jira.auditing.category.fields	[{"i18nKey":"common.words.name","key":"Name","from":null,"to":"Epic Status"},{"i18nKey":"common.words.description","key":"Description","from":null,"to":"Epic Status field for Jira Software use only."},{"i18nKey":"common.words.type","key":"Type","from":null,"to":"Status of Epic"}]	1719959888476	19	BASE	Browser	\N	customfield_10102	CUSTOM_FIELD	[{"name":"Epic Status","type":"CUSTOM_FIELD","uri":null,"id":"customfield_10102"}]	\N	\N	\N	\N	\N	\N	epic status jira.auditing.customfield.created jira.auditing.category.fields custom field created fields anonymous 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	-2	Anonymous	user
Custom field created	jira.auditing.customfield.created	GLOBAL_CONFIG_AND_ADMINISTRATION	[]	fields	jira.auditing.category.fields	[{"i18nKey":"common.words.name","key":"Name","from":null,"to":"Epic Name"},{"i18nKey":"common.words.description","key":"Description","from":null,"to":"Provide a short name to identify this epic."},{"i18nKey":"common.words.type","key":"Type","from":null,"to":"Name of Epic"}]	1719959888487	20	BASE	Browser	\N	customfield_10103	CUSTOM_FIELD	[{"name":"Epic Name","type":"CUSTOM_FIELD","uri":null,"id":"customfield_10103"}]	\N	\N	\N	\N	\N	\N	epic name jira.auditing.customfield.created jira.auditing.category.fields custom field created fields anonymous 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	-2	Anonymous	user
Custom field created	jira.auditing.customfield.created	GLOBAL_CONFIG_AND_ADMINISTRATION	[]	fields	jira.auditing.category.fields	[{"i18nKey":"common.words.name","key":"Name","from":null,"to":"Epic Colour"},{"i18nKey":"common.words.description","key":"Description","from":null,"to":"Epic Colour field for Jira Software use only."},{"i18nKey":"common.words.type","key":"Type","from":null,"to":"Colour of Epic"}]	1719959888509	21	BASE	Browser	\N	customfield_10104	CUSTOM_FIELD	[{"name":"Epic Colour","type":"CUSTOM_FIELD","uri":null,"id":"customfield_10104"}]	\N	\N	\N	\N	\N	\N	epic colour jira.auditing.customfield.created jira.auditing.category.fields custom field created fields anonymous 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	-2	Anonymous	user
Custom field created	jira.auditing.customfield.created	GLOBAL_CONFIG_AND_ADMINISTRATION	[]	fields	jira.auditing.category.fields	[{"i18nKey":"common.words.name","key":"Name","from":null,"to":"Sprint"},{"i18nKey":"common.words.description","key":"Description","from":null,"to":"Jira Software sprint field"},{"i18nKey":"common.words.type","key":"Type","from":null,"to":"Jira Sprint Field"}]	1719959888525	22	BASE	Browser	\N	customfield_10105	CUSTOM_FIELD	[{"name":"Sprint","type":"CUSTOM_FIELD","uri":null,"id":"customfield_10105"}]	\N	\N	\N	\N	\N	\N	sprint jira.auditing.customfield.created jira.auditing.category.fields custom field created fields anonymous 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	-2	Anonymous	user
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Manage Sprints"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Project Role"},{"i18nKey":"admin.common.words.value","key":"Value","from":"","to":"Administrators"}]	1719959887726	16	BASE	Browser	\N	0	SCHEME	[{"name":"Default Permission Scheme","type":"SCHEME","uri":null,"id":"0"}]	\N	\N	\N	\N	\N	\N	default permission scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions updated permissions anonymous 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	-2	Anonymous	user
Custom field created	jira.auditing.customfield.created	GLOBAL_CONFIG_AND_ADMINISTRATION	[]	fields	jira.auditing.category.fields	[{"i18nKey":"common.words.name","key":"Name","from":null,"to":"Epic Link"},{"i18nKey":"common.words.description","key":"Description","from":null,"to":"Choose an epic to assign this issue to."},{"i18nKey":"common.words.type","key":"Type","from":null,"to":"Epic Link Relationship"}]	1719959888065	18	BASE	Browser	\N	customfield_10101	CUSTOM_FIELD	[{"name":"Epic Link","type":"CUSTOM_FIELD","uri":null,"id":"customfield_10101"}]	\N	\N	\N	\N	\N	\N	epic link jira.auditing.customfield.created jira.auditing.category.fields custom field created fields anonymous 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	-2	Anonymous	user
Issue type created	jira.auditing.issue.type.created	GLOBAL_CONFIG_AND_ADMINISTRATION	[]	issue types	jira.auditing.category.issuetypes	[]	1719959904063	23	BASE	Browser	\N	10000	ISSUE_TYPE	[{"name":"Epic","type":"ISSUE_TYPE","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	epic jira.auditing.issue.type.created jira.auditing.category.issuetypes issue type created types anonymous 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	-2	Anonymous	user
Issue type created	jira.auditing.issue.type.created	GLOBAL_CONFIG_AND_ADMINISTRATION	[]	issue types	jira.auditing.category.issuetypes	[]	1719959904274	24	BASE	Browser	\N	10001	ISSUE_TYPE	[{"name":"Story","type":"ISSUE_TYPE","uri":null,"id":"10001"}]	\N	\N	\N	\N	\N	\N	story jira.auditing.issue.type.created jira.auditing.category.issuetypes issue type created types anonymous 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	-2	Anonymous	user
Custom field created	jira.auditing.customfield.created	GLOBAL_CONFIG_AND_ADMINISTRATION	[]	fields	jira.auditing.category.fields	[{"i18nKey":"common.words.name","key":"Name","from":null,"to":"Story Points"},{"i18nKey":"common.words.description","key":"Description","from":null,"to":"Measurement of complexity and/or size of a requirement."},{"i18nKey":"common.words.type","key":"Type","from":null,"to":"Number Field"}]	1719959904281	25	BASE	Browser	\N	customfield_10106	CUSTOM_FIELD	[{"name":"Story Points","type":"CUSTOM_FIELD","uri":null,"id":"customfield_10106"}]	\N	\N	\N	\N	\N	\N	story points jira.auditing.customfield.created jira.auditing.category.fields custom field created fields anonymous 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	-2	Anonymous	user
JFR recording started	stp.jfr.audit.recording.started	AUDIT_LOG	[{"nameI18nKey":"stp.jfr.audit.configuration","name":"Configuration for JFR recording","value":"Default"},{"nameI18nKey":"stp.jfr.audit.start.type","name":"Started automatically","value":"true"}]	System	stp.audit.category.system	[]	1719959904899	26	BASE	Browser	\N	\N	\N	[]	\N	\N	\N	\N	\N	\N	stp.jfr.audit.recording.started stp.audit.category.system jfr recording started system anonymous 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	-2	Anonymous	user
JFR recording started	stp.jfr.audit.recording.started	AUDIT_LOG	[{"nameI18nKey":"stp.jfr.audit.configuration","name":"Configuration for JFR recording","value":"Default"},{"nameI18nKey":"stp.jfr.audit.start.type","name":"Started automatically","value":"true"}]	System	stp.audit.category.system	[]	1719959904900	27	BASE	Browser	\N	\N	\N	[]	\N	\N	\N	\N	\N	\N	stp.jfr.audit.recording.started stp.audit.category.system jfr recording started system anonymous 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	-2	Anonymous	user
Custom field created	jira.auditing.customfield.created	GLOBAL_CONFIG_AND_ADMINISTRATION	[]	fields	jira.auditing.category.fields	[{"i18nKey":"common.words.name","key":"Name","from":null,"to":"Team"},{"i18nKey":"common.words.type","key":"Type","from":null,"to":"Team"}]	1719959904981	28	BASE	Browser	\N	customfield_10107	CUSTOM_FIELD	[{"name":"Team","type":"CUSTOM_FIELD","uri":null,"id":"customfield_10107"}]	\N	\N	\N	\N	\N	\N	team jira.auditing.customfield.created jira.auditing.category.fields custom field created fields anonymous 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	-2	Anonymous	user
Custom field created	jira.auditing.customfield.created	GLOBAL_CONFIG_AND_ADMINISTRATION	[]	fields	jira.auditing.category.fields	[{"i18nKey":"common.words.name","key":"Name","from":null,"to":"Parent Link"},{"i18nKey":"common.words.type","key":"Type","from":null,"to":"Parent Link"}]	1719959905052	29	BASE	Browser	\N	customfield_10108	CUSTOM_FIELD	[{"name":"Parent Link","type":"CUSTOM_FIELD","uri":null,"id":"customfield_10108"}]	\N	\N	\N	\N	\N	\N	parent link jira.auditing.customfield.created jira.auditing.category.fields custom field created fields anonymous 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	-2	Anonymous	user
Custom field updated	jira.auditing.customfield.updated	GLOBAL_CONFIG_AND_ADMINISTRATION	[]	fields	jira.auditing.category.fields	[]	1719959905060	30	BASE	Browser	\N	customfield_10108	CUSTOM_FIELD	[{"name":"Parent Link","type":"CUSTOM_FIELD","uri":null,"id":"customfield_10108"}]	\N	\N	\N	\N	\N	\N	parent link jira.auditing.customfield.updated jira.auditing.category.fields custom field updated fields anonymous 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	-2	Anonymous	user
Custom field created	jira.auditing.customfield.created	GLOBAL_CONFIG_AND_ADMINISTRATION	[]	fields	jira.auditing.category.fields	[{"i18nKey":"common.words.name","key":"Name","from":null,"to":"Target start"},{"i18nKey":"common.words.description","key":"Description","from":null,"to":"The targeted start date. This custom field is created and required by Advanced Roadmaps for Jira."},{"i18nKey":"common.words.type","key":"Type","from":null,"to":"Target start"}]	1719959905090	31	BASE	Browser	\N	customfield_10109	CUSTOM_FIELD	[{"name":"Target start","type":"CUSTOM_FIELD","uri":null,"id":"customfield_10109"}]	\N	\N	\N	\N	\N	\N	target start jira.auditing.customfield.created jira.auditing.category.fields custom field created fields anonymous 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	-2	Anonymous	user
Custom field created	jira.auditing.customfield.created	GLOBAL_CONFIG_AND_ADMINISTRATION	[]	fields	jira.auditing.category.fields	[{"i18nKey":"common.words.name","key":"Name","from":null,"to":"Target end"},{"i18nKey":"common.words.description","key":"Description","from":null,"to":"The targeted end date. This custom field is created and required by Advanced Roadmaps for Jira."},{"i18nKey":"common.words.type","key":"Type","from":null,"to":"Target end"}]	1719959905098	32	BASE	Browser	\N	customfield_10110	CUSTOM_FIELD	[{"name":"Target end","type":"CUSTOM_FIELD","uri":null,"id":"customfield_10110"}]	\N	\N	\N	\N	\N	\N	target end jira.auditing.customfield.created jira.auditing.category.fields custom field created fields anonymous 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	-2	Anonymous	user
Custom field created	jira.auditing.customfield.created	GLOBAL_CONFIG_AND_ADMINISTRATION	[]	fields	jira.auditing.category.fields	[{"i18nKey":"common.words.name","key":"Name","from":null,"to":"Original story points"},{"i18nKey":"common.words.type","key":"Type","from":null,"to":"Original story points"}]	1719959905110	33	BASE	Browser	\N	customfield_10111	CUSTOM_FIELD	[{"name":"Original story points","type":"CUSTOM_FIELD","uri":null,"id":"customfield_10111"}]	\N	\N	\N	\N	\N	\N	original story points jira.auditing.customfield.created jira.auditing.category.fields custom field created fields anonymous 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	-2	Anonymous	user
Custom field updated	jira.auditing.customfield.updated	GLOBAL_CONFIG_AND_ADMINISTRATION	[]	fields	jira.auditing.category.fields	[]	1719959905119	35	BASE	Browser	\N	customfield_10110	CUSTOM_FIELD	[{"name":"Target end","type":"CUSTOM_FIELD","uri":null,"id":"customfield_10110"}]	\N	\N	\N	\N	\N	\N	target end jira.auditing.customfield.updated jira.auditing.category.fields custom field updated fields anonymous 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	-2	Anonymous	user
Custom field updated	jira.auditing.customfield.updated	GLOBAL_CONFIG_AND_ADMINISTRATION	[]	fields	jira.auditing.category.fields	[]	1719959905117	34	BASE	Browser	\N	customfield_10109	CUSTOM_FIELD	[{"name":"Target start","type":"CUSTOM_FIELD","uri":null,"id":"customfield_10109"}]	\N	\N	\N	\N	\N	\N	target start jira.auditing.customfield.updated jira.auditing.category.fields custom field updated fields anonymous 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	-2	Anonymous	user
New resolution created	jira.auditing.resolutions.created	GLOBAL_CONFIG_AND_ADMINISTRATION	[{"nameI18nKey":"common.concepts.description","name":"Description","value":"Work has been completed on this issue."}]	workflows	jira.auditing.category.workflows	[]	1719959939202	36	BASE	Browser	\N	10000	RESOLUTION	[{"name":"Done","type":"RESOLUTION","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	done jira.auditing.resolutions.created jira.auditing.category.workflows new resolution created workflows admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
New resolution created	jira.auditing.resolutions.created	GLOBAL_CONFIG_AND_ADMINISTRATION	[{"nameI18nKey":"common.concepts.description","name":"Description","value":"This issue won't be actioned."}]	workflows	jira.auditing.category.workflows	[]	1719959939203	37	BASE	Browser	\N	10001	RESOLUTION	[{"name":"Won't Do","type":"RESOLUTION","uri":null,"id":"10001"}]	\N	\N	\N	\N	\N	\N	won't do jira.auditing.resolutions.created jira.auditing.category.workflows new resolution created workflows admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
New resolution created	jira.auditing.resolutions.created	GLOBAL_CONFIG_AND_ADMINISTRATION	[{"nameI18nKey":"common.concepts.description","name":"Description","value":"The problem is a duplicate of an existing issue."}]	workflows	jira.auditing.category.workflows	[]	1719959939203	38	BASE	Browser	\N	10002	RESOLUTION	[{"name":"Duplicate","type":"RESOLUTION","uri":null,"id":"10002"}]	\N	\N	\N	\N	\N	\N	duplicate jira.auditing.resolutions.created jira.auditing.category.workflows new resolution created workflows admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
New resolution created	jira.auditing.resolutions.created	GLOBAL_CONFIG_AND_ADMINISTRATION	[{"nameI18nKey":"common.concepts.description","name":"Description","value":"All attempts at reproducing this issue failed, or not enough information was available to reproduce the issue. Reading the code produces no clues as to why this behavior would occur. If more information appears later, please reopen the issue."}]	workflows	jira.auditing.category.workflows	[]	1719959939204	39	BASE	Browser	\N	10003	RESOLUTION	[{"name":"Cannot Reproduce","type":"RESOLUTION","uri":null,"id":"10003"}]	\N	\N	\N	\N	\N	\N	cannot reproduce jira.auditing.resolutions.created jira.auditing.category.workflows new resolution created workflows admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Workflow created	jira.auditing.workflow.created	GLOBAL_CONFIG_AND_ADMINISTRATION	[]	workflows	jira.auditing.category.workflows	[{"i18nKey":"admin.workflowtransition.transition","key":"Transition","from":null,"to":"Create (Backlog), Backlog (Backlog), Selected for Development (Selected for Development), In Progress (In Progress), Done (Done)"},{"i18nKey":"common.words.status","key":"Status","from":null,"to":"Backlog, Selected for Development, In Progress, Done"},{"i18nKey":"common.words.name","key":"Name","from":null,"to":"Software Simplified Workflow for Project TEST"},{"i18nKey":"common.words.description","key":"Description","from":null,"to":"Generated by JIRA Software version 9.12.4. This workflow is managed internally by Jira Software. Do not manually modify this workflow."}]	1719959939258	40	BASE	Browser	\N	Software Simplified Workflow for Project TEST	WORKFLOW	[{"name":"Software Simplified Workflow for Project TEST","type":"WORKFLOW","uri":null,"id":"Software Simplified Workflow for Project TEST"}]	\N	\N	\N	\N	\N	\N	software simplified workflow for project test jira.auditing.workflow.created jira.auditing.category.workflows created workflows admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Workflow scheme created	jira.auditing.workflow.scheme.created	GLOBAL_CONFIG_AND_ADMINISTRATION	[]	workflows	jira.auditing.category.workflows	[{"i18nKey":"common.words.name","key":"Name","from":null,"to":"TEST: Software Simplified Workflow Scheme"},{"i18nKey":"common.words.description","key":"Description","from":null,"to":"Generated by JIRA Software version 9.12.4. This workflow scheme is managed internally by Jira Software. Do not manually modify this workflow scheme."}]	1719959939266	41	BASE	Browser	\N	10100	SCHEME	[{"name":"TEST: Software Simplified Workflow Scheme","type":"SCHEME","uri":null,"id":"10100"}]	\N	\N	\N	\N	\N	\N	test: software simplified workflow scheme jira.auditing.workflow.scheme.created jira.auditing.category.workflows created workflows admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Workflow scheme added to project	jira.auditing.workflow.scheme.added.to.project	GLOBAL_CONFIG_AND_ADMINISTRATION	[]	workflows	jira.auditing.category.workflows	[]	1719959939272	42	BASE	Browser	\N	10000	PROJECT	[{"name":"test","type":"PROJECT","uri":null,"id":"10000"},{"name":"TEST: Software Simplified Workflow Scheme","type":"SCHEME","uri":null,"id":"10100"}]	\N	\N	\N	\N	\N	\N	test test: software simplified workflow scheme jira.auditing.workflow.scheme.added.to.project jira.auditing.category.workflows added to project workflows admin 192.168.65.1	10100	SCHEME	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Filter created	jira.auditing.filter.created	LOCAL_CONFIG_AND_ADMINISTRATION	[]	filters	jira.auditing.category.filters	[{"i18nKey":"common.words.name","key":"Name","from":"","to":"Filter for TEST board"},{"i18nKey":"common.concepts.description","key":"Description","from":"","to":null},{"i18nKey":"common.concepts.owner","key":"Owner","from":"","to":"admin"},{"i18nKey":"common.concepts.shared.with","key":"Shared with","from":"[]","to":"[Project: test (VIEW)]"},{"i18nKey":"jira.jql.query","key":"JQL Query","from":"","to":"{project = \\"TEST\\"} order by Rank ASC"}]	1719959939308	43	BASE	Browser	\N	10000	FILTER	[{"name":"Filter for TEST board","type":"FILTER","uri":null,"id":"10000"},{"name":"admin","type":"USER","uri":null,"id":"JIRAUSER10000"},{"name":"test","type":"PROJECT","uri":null,"id":"10000"}]	10000	\N	\N	PROJECT	\N	\N	filter for test board admin jira.auditing.filter.created jira.auditing.category.filters created filters 192.168.65.1	JIRAUSER10000	USER	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Board created	Board created	LOCAL_CONFIG_AND_ADMINISTRATION	[]	boards	jira.auditing.category.boards	[]	1719959939363	44	BASE	Browser	\N	1	BOARD	[{"name":"TEST board","type":"BOARD","uri":null,"id":"1"},{"name":"TEST board","type":"BOARD","uri":null,"id":"1"}]	\N	\N	\N	\N	\N	\N	test board created jira.auditing.category.boards boards admin 192.168.65.1	1	BOARD	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme created	jira.auditing.permission.scheme.created	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"common.words.name","key":"Name","from":null,"to":"Default software scheme"},{"i18nKey":"common.words.description","key":"Description","from":null,"to":"Default scheme for Software projects."}]	1719959939384	45	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.created jira.auditing.category.permissions permission created permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Browse Projects"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Application access"}]	1719959939387	46	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions permission updated permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Create Issues"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Application access"}]	1719959939391	47	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions permission updated permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Edit Issues"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Application access"}]	1719959939393	48	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions permission updated permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Assign Issues"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Application access"}]	1719959939394	49	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions permission updated permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Resolve Issues"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Application access"}]	1719959939396	50	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions permission updated permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Add Comments"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Application access"}]	1719959939398	51	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions permission updated permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Delete Issues"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Project Role"},{"i18nKey":"admin.common.words.value","key":"Value","from":"","to":"Administrators"}]	1719959939399	52	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions permission updated permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Assignable User"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Application access"}]	1719959939401	53	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions permission updated permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Close Issues"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Application access"}]	1719959939402	54	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions permission updated permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Create Attachments"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Application access"}]	1719959939403	55	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions permission updated permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Work On Issues"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Application access"}]	1719959939405	56	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions permission updated permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Link Issues"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Application access"}]	1719959939406	57	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions permission updated permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Move Issues"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Application access"}]	1719959939409	59	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions permission updated permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Modify Reporter"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Project Role"},{"i18nKey":"admin.common.words.value","key":"Value","from":"","to":"Administrators"}]	1719959939411	61	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions permission updated permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Manage Watchers"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Project Role"},{"i18nKey":"admin.common.words.value","key":"Value","from":"","to":"Administrators"}]	1719959939414	63	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions permission updated permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Delete All Comments"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Project Role"},{"i18nKey":"admin.common.words.value","key":"Value","from":"","to":"Administrators"}]	1719959939417	66	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions permission updated permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Delete Own Attachments"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Application access"}]	1719959939421	69	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions permission updated permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Edit All Worklogs"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Project Role"},{"i18nKey":"admin.common.words.value","key":"Value","from":"","to":"Administrators"}]	1719959939423	71	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions permission updated permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Delete Own Worklogs"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Application access"}]	1719959939424	72	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions permission updated permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"View Read-Only Workflow"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Application access"}]	1719959939426	74	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions permission updated permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"View Development Tools"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Application access"}]	1719959939429	76	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions permission updated permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Administer Projects"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Project Role"},{"i18nKey":"admin.common.words.value","key":"Value","from":"","to":"Administrators"}]	1719959939407	58	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions permission updated permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Schedule Issues"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Application access"}]	1719959939410	60	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions permission updated permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"View Voters and Watchers"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Application access"}]	1719959939413	62	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions permission updated permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Edit All Comments"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Project Role"},{"i18nKey":"admin.common.words.value","key":"Value","from":"","to":"Administrators"}]	1719959939415	64	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions permission updated permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Edit Own Comments"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Application access"}]	1719959939416	65	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions permission updated permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Delete Own Comments"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Application access"}]	1719959939418	67	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions permission updated permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Delete All Attachments"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Project Role"},{"i18nKey":"admin.common.words.value","key":"Value","from":"","to":"Administrators"}]	1719959939419	68	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions permission updated permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Edit Own Worklogs"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Application access"}]	1719959939422	70	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions permission updated permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Delete All Worklogs"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Project Role"},{"i18nKey":"admin.common.words.value","key":"Value","from":"","to":"Administrators"}]	1719959939425	73	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions permission updated permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Transition Issues"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Application access"}]	1719959939427	75	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions permission updated permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Manage Sprints"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Application access"}]	1719959939430	77	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions permission updated permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Start/Complete Sprints"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Application access"}]	1719959939431	78	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions permission updated permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Project version released	jira.auditing.version.released	LOCAL_CONFIG_AND_ADMINISTRATION	[]	projects	jira.auditing.category.projects	[]	1719959939508	84	BASE	Browser	\N	10000	VERSION	[{"name":"1.0","type":"VERSION","uri":null,"id":"10000"},{"name":"test","type":"PROJECT","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	1.0 test jira.auditing.version.released jira.auditing.category.projects project version released projects admin 192.168.65.1	10000	PROJECT	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme updated	jira.auditing.permission.scheme.updated	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[{"i18nKey":"admin.common.words.permission","key":"Permission","from":"","to":"Edit Sprints"},{"i18nKey":"admin.common.words.type","key":"Type","from":"","to":"Application access"}]	1719959939432	79	BASE	Browser	\N	10000	SCHEME	[{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	default software scheme jira.auditing.permission.scheme.updated jira.auditing.category.permissions permission updated permissions admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme removed from project	jira.auditing.permission.scheme.removed.from.project	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[]	1719959939435	80	BASE	Browser	\N	10000	PROJECT	[{"name":"test","type":"PROJECT","uri":null,"id":"10000"},{"name":"Default Permission Scheme","type":"SCHEME","uri":null,"id":"0"}]	\N	\N	\N	\N	\N	\N	test default permission scheme jira.auditing.permission.scheme.removed.from.project jira.auditing.category.permissions removed from project permissions admin 192.168.65.1	0	SCHEME	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Permission scheme added to project	jira.auditing.permission.scheme.added.to.project	PERMISSIONS	[]	permissions	jira.auditing.category.permissions	[]	1719959939440	81	BASE	Browser	\N	10000	PROJECT	[{"name":"test","type":"PROJECT","uri":null,"id":"10000"},{"name":"Default software scheme","type":"SCHEME","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	test default software scheme jira.auditing.permission.scheme.added.to.project jira.auditing.category.permissions permission added to project permissions admin 192.168.65.1	10000	SCHEME	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Project created	jira.auditing.project.created	LOCAL_CONFIG_AND_ADMINISTRATION	[]	projects	jira.auditing.category.projects	[{"i18nKey":"common.words.name","key":"Name","from":null,"to":"test"},{"i18nKey":"common.words.key","key":"Key","from":null,"to":"TEST"},{"i18nKey":"common.concepts.description","key":"Description","from":null,"to":""},{"i18nKey":"common.concepts.projectlead","key":"Project Lead","from":null,"to":"admin"},{"i18nKey":"admin.projects.default.assignee","key":"Default Assignee","from":null,"to":"Unassigned"}]	1719959939449	82	BASE	Browser	\N	10000	PROJECT	[{"name":"test","type":"PROJECT","uri":null,"id":"10000"},{"name":"admin","type":"USER","uri":null,"id":"JIRAUSER10000"}]	\N	\N	\N	\N	\N	\N	test admin jira.auditing.project.created jira.auditing.category.projects project created projects 192.168.65.1	JIRAUSER10000	USER	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Project version created	jira.auditing.version.created	LOCAL_CONFIG_AND_ADMINISTRATION	[]	projects	jira.auditing.category.projects	[{"i18nKey":"common.words.name","key":"Name","from":null,"to":"1.0"}]	1719959939498	83	BASE	Browser	\N	10000	VERSION	[{"name":"1.0","type":"VERSION","uri":null,"id":"10000"},{"name":"test","type":"PROJECT","uri":null,"id":"10000"}]	\N	\N	\N	\N	\N	\N	1.0 test jira.auditing.version.created jira.auditing.category.projects project version created projects admin 192.168.65.1	10000	PROJECT	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
JFR recording started	stp.jfr.audit.recording.started	AUDIT_LOG	[{"nameI18nKey":"stp.jfr.audit.configuration","name":"Configuration for JFR recording","value":"Default"},{"nameI18nKey":"stp.jfr.audit.start.type","name":"Started automatically","value":"true"}]	System	stp.audit.category.system	[]	1719962109288	85	BASE	Unknown	\N	\N	\N	[]	\N	\N	\N	\N	\N	\N	stp.jfr.audit.recording.started stp.audit.category.system jfr recording started system	\N	\N	\N	http://localhost:8080	-1	System	system
JFR recording started	stp.jfr.audit.recording.started	AUDIT_LOG	[{"nameI18nKey":"stp.jfr.audit.configuration","name":"Configuration for JFR recording","value":"Default"},{"nameI18nKey":"stp.jfr.audit.start.type","name":"Started automatically","value":"true"}]	System	stp.audit.category.system	[]	1719962109289	86	BASE	Unknown	\N	\N	\N	[]	\N	\N	\N	\N	\N	\N	stp.jfr.audit.recording.started stp.audit.category.system jfr recording started system	\N	\N	\N	http://localhost:8080	-1	System	system
Personal access token created	personal.access.tokens.audit.log.summary.token.created	SECURITY	[{"nameI18nKey":"personal.access.tokens.audit.log.extra.attribute.name","name":"Token Name","value":"ci token"}]	Security	personal.access.tokens.audit.log.category	[]	1719962187827	87	BASE	Browser	\N	JIRAUSER10000	User	[{"name":"admin","type":"User","uri":null,"id":"JIRAUSER10000"}]	\N	\N	\N	\N	\N	\N	admin personal.access.tokens.audit.log.summary.token.created personal.access.tokens.audit.log.category personal access token created security 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Personal access token deleted	personal.access.tokens.audit.log.summary.token.deleted	SECURITY	[{"nameI18nKey":"personal.access.tokens.audit.log.extra.attribute.name","name":"Token Name","value":"ci token"}]	Security	personal.access.tokens.audit.log.category	[]	1719962385129	88	BASE	Browser	\N	JIRAUSER10000	User	[{"name":"admin","type":"User","uri":null,"id":"JIRAUSER10000"}]	\N	\N	\N	\N	\N	\N	admin personal.access.tokens.audit.log.summary.token.deleted personal.access.tokens.audit.log.category personal access token deleted security 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
Personal access token created	personal.access.tokens.audit.log.summary.token.created	SECURITY	[{"nameI18nKey":"personal.access.tokens.audit.log.extra.attribute.name","name":"Token Name","value":"ci token"}]	Security	personal.access.tokens.audit.log.category	[]	1719962392083	89	BASE	Browser	\N	JIRAUSER10000	User	[{"name":"admin","type":"User","uri":null,"id":"JIRAUSER10000"}]	\N	\N	\N	\N	\N	\N	admin personal.access.tokens.audit.log.summary.token.created personal.access.tokens.audit.log.category personal access token created security 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
JFR recording started	stp.jfr.audit.recording.started	AUDIT_LOG	[{"nameI18nKey":"stp.jfr.audit.configuration","name":"Configuration for JFR recording","value":"Default"},{"nameI18nKey":"stp.jfr.audit.start.type","name":"Started automatically","value":"true"}]	System	stp.audit.category.system	[]	1720027485851	90	BASE	Unknown	\N	\N	\N	[]	\N	\N	\N	\N	\N	\N	stp.jfr.audit.recording.started stp.audit.category.system jfr recording started system	\N	\N	\N	http://localhost:8080	-1	System	system
JFR recording started	stp.jfr.audit.recording.started	AUDIT_LOG	[{"nameI18nKey":"stp.jfr.audit.configuration","name":"Configuration for JFR recording","value":"Default"},{"nameI18nKey":"stp.jfr.audit.start.type","name":"Started automatically","value":"true"}]	System	stp.audit.category.system	[]	1720027485852	91	BASE	Unknown	\N	\N	\N	[]	\N	\N	\N	\N	\N	\N	stp.jfr.audit.recording.started stp.audit.category.system jfr recording started system	\N	\N	\N	http://localhost:8080	-1	System	system
User created	jira.auditing.user.created	USER_MANAGEMENT	[]	user management	jira.auditing.category.usermanagement	[{"i18nKey":"common.words.username","key":"Username","from":null,"to":"member"},{"i18nKey":"common.words.fullname","key":"Full name","from":null,"to":"member"},{"i18nKey":"common.words.email","key":"Email","from":null,"to":"member@example.com"},{"i18nKey":"admin.common.phrases.active.inactive","key":"Active / Inactive","from":null,"to":"Active"}]	1720028615846	92	BASE	Browser	\N	JIRAUSER10100	USER	[{"name":"member","type":"USER","uri":null,"id":"JIRAUSER10100"}]	\N	\N	\N	\N	\N	\N	member jira.auditing.user.created jira.auditing.category.usermanagement user created management admin 192.168.65.1	\N	\N	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
User added to group	jira.auditing.user.added.to.group	USER_MANAGEMENT	[]	group management	jira.auditing.category.groupmanagement	[]	1720028615857	93	BASE	Browser	\N	\N	GROUP	[{"name":"jira-software-users","type":"GROUP","uri":null,"id":null},{"name":"member","type":"USER","uri":null,"id":"JIRAUSER10100"}]	\N	\N	\N	\N	\N	\N	jira-software-users member jira.auditing.user.added.to.group jira.auditing.category.groupmanagement user added to group management admin 192.168.65.1	JIRAUSER10100	USER	192.168.65.1	http://localhost:8080	10000	admin	ApplicationUser
\.


--
-- Name: AO_C77861_AUDIT_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_C77861_AUDIT_ENTITY_ID_seq"', 93, true);


--
-- Data for Name: AO_CFF990_AOTRANSITION_FAILURE; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_CFF990_AOTRANSITION_FAILURE" ("ERROR_MESSAGES", "FAILURE_TIME", "ID", "ISSUE_ID", "LOG_REFERRAL_HASH", "TRANSITION_ID", "TRIGGER_ID", "USER_KEY", "WORKFLOW_ID") FROM stdin;
\.


--
-- Name: AO_CFF990_AOTRANSITION_FAILURE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_CFF990_AOTRANSITION_FAILURE_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_SOLUTION; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_SOLUTION" ("HEARTBEAT_TIMESTAMP", "ID", "PLAN", "SCENARIO", "SCHEDULABLE_ISSUE_COUNT", "SCHEDULED_ISSUE_COUNT", "SOLUTION", "STATE", "TRIGGER_TIMESTAMP", "UNIQUE_GUARD", "VERSION") FROM stdin;
\.


--
-- Data for Name: AO_D9132D_ASSIGNMENT; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_ASSIGNMENT" ("ID", "INTERVAL_END", "INTERVAL_START", "ISSUE", "PLAN", "PROJECT", "RESOURCE", "SCENARIO", "SKILL", "SOLUTION_ID", "SPRINT_INDEX", "STAGE", "TEAM", "VERSION", "WORKLOAD") FROM stdin;
\.


--
-- Data for Name: AO_D9132D_ASSIGNMENT_EXT; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_ASSIGNMENT_EXT" ("ID", "INTERVAL_END", "INTERVAL_START", "ISSUE", "PLAN", "PROJECT", "RESOURCE", "SCENARIO", "SKILL", "SOLUTION_ID", "SPRINT_INDEX", "STAGE", "TEAM", "VERSION", "WORKLOAD") FROM stdin;
\.


--
-- Name: AO_D9132D_ASSIGNMENT_EXT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_ASSIGNMENT_EXT_ID_seq"', 1, false);


--
-- Name: AO_D9132D_ASSIGNMENT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_ASSIGNMENT_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_CONFIGURATION; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_CONFIGURATION" ("HIERARCHY_ISSUE_LIMIT", "ID", "ISSUE_LIMIT", "PROJECT_LIMIT") FROM stdin;
\N	1	\N	\N
\.


--
-- Name: AO_D9132D_CONFIGURATION_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_CONFIGURATION_ID_seq"', 1, true);


--
-- Data for Name: AO_D9132D_DEP_ISSUE_LINK_TYPES; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_DEP_ISSUE_LINK_TYPES" ("ID", "LINK_ID", "OUTWARD") FROM stdin;
1	10000	t
\.


--
-- Name: AO_D9132D_DEP_ISSUE_LINK_TYPES_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_DEP_ISSUE_LINK_TYPES_ID_seq"', 1, true);


--
-- Data for Name: AO_D9132D_PLAN; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_PLAN" ("ASSIGNEE_SCHEDULING_LEVEL", "BASELINE_END_FIELD_ID", "BASELINE_START_FIELD_ID", "COMMIT_ISSUE_ASSIGNEE", "CREATED_TIMESTAMP", "CREATOR_ID", "DEFAULT_ESTIMATES", "DEFAULT_TEAM_WEEKLY_CAPACITY", "DEF_EST_MAP", "DEPENDENCY_MODE", "GLOBAL_DEFAULT_VELOCITY", "GLOBAL_SPRINT_LENGTH", "HAS_SPRINT_CONSTRAINT", "HEURISTIC_THRESHOLD", "HOURS_PER_DAY", "ID", "IGNORE_RELEASES", "IGNORE_SPRINTS", "IGNORE_TEAMS", "INCLUDE_COMPLETED_ISSUES_FOR", "ISSUE_INFERRED_DATE_SELECTION", "MAX_RESOURCES_PER_STORY", "MIN_LOAD_UNSTR_EPICS", "MULTI_SCENARIO_ENABLED", "PLANNING_UNIT", "PORTFOLIO_PLAN_VERSION", "PROGRAM_ID", "RANK_AGAINST_STORIES", "SCHEDULING_END_CUSTOM_FIELD", "SCHEDULING_START_CUSTOM_FIELD", "SCHEDULING_VERBOSITY", "SPRINT_EXCEEDED_WARN", "STRICT_STAGE_DIVISION", "SYNC_START_ENABLED", "TIME_ZONE", "TITLE", "UNESTIMATED_ISSUES_OPTION", "WEEKDAY_CONFIGURATION") FROM stdin;
\.


--
-- Data for Name: AO_D9132D_SCENARIO; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_SCENARIO" ("COLOR", "DESCRIPTION", "ID", "MASTER", "PLAN_ID", "TITLE") FROM stdin;
\.


--
-- Data for Name: AO_D9132D_SCENARIO_ISSUES; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_SCENARIO_ISSUES" ("ASSIGNEE_ID", "ASSIGNEE_ID_CHANGED", "BASELINE_END", "BASELINE_END_CHANGED", "BSLN_EARLIEST_START", "BSLN_EARLIEST_START_CHANGED", "COMPONENTS_CHANGED", "CREATED", "C_KEY", "DESCRIPTION", "DESCRIPTION_CHANGED", "DISTRIBUTION_CHANGED", "DUE_DATE", "DUE_DATE_CHANGED", "EARLIEST_START", "EARLIEST_START_CHANGED", "ID", "ITEM_KEY", "LABELS_CHANGED", "LAST_CHANGE_TIMESTAMP", "LAST_CHANGE_USER", "LATER_RELEASE", "LATER_RELEASE_CHANGED", "ORIG_DIST_CHANGED", "ORIG_STPTS_ESTIMATE", "ORIG_STPTS_ESTIMATE_CHANGED", "ORIG_TIME_ESTIMATE", "ORIG_TIME_ESTIMATE_CHANGED", "PARENT_ID", "PARENT_ID_CHANGED", "PRIORITY_ID", "PRIORITY_ID_CHANGED", "PROJECT_ID", "PROJECT_ID_CHANGED", "RESOURCES_CHANGED", "SCENARIO_ID", "SCENARIO_TYPE", "SPRINT_ID", "SPRINT_ID_CHANGED", "STATUS_ID", "STATUS_ID_CHANGED", "STORY_POINTS_ESTIMATE", "STORY_POINTS_ESTIMATE_CHANGED", "TEAM_ID_CHANGED", "TEAM_KEY", "THEME_ID", "THEME_ID_CHANGED", "TIME_ESTIMATE", "TIME_ESTIMATE_CHANGED", "TITLE", "TITLE_CHANGED", "TYPE_ID", "TYPE_ID_CHANGED", "VERSION_ID", "VERSION_ID_CHANGED") FROM stdin;
\.


--
-- Data for Name: AO_D9132D_DISTRIBUTION; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_DISTRIBUTION" ("ID", "ORIGINAL", "SCENARIO_ISSUE_ID", "SKILL_ITEM_KEY", "WEIGHT") FROM stdin;
\.


--
-- Name: AO_D9132D_DISTRIBUTION_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_DISTRIBUTION_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_EXCLUDED_ISSUE_TYPES; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_EXCLUDED_ISSUE_TYPES" ("ID", "ISSUE_TYPE", "PLAN_ID") FROM stdin;
\.


--
-- Name: AO_D9132D_EXCLUDED_ISSUE_TYPES_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_EXCLUDED_ISSUE_TYPES_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_EXCLUDED_STATUSCATS; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_EXCLUDED_STATUSCATS" ("ID", "PLAN_ID", "STATUS_CATEGORY") FROM stdin;
\.


--
-- Name: AO_D9132D_EXCLUDED_STATUSCATS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_EXCLUDED_STATUSCATS_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_EXCLUDED_STATUSES; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_EXCLUDED_STATUSES" ("ID", "PLAN_ID", "STATUS") FROM stdin;
\.


--
-- Name: AO_D9132D_EXCLUDED_STATUSES_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_EXCLUDED_STATUSES_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_EXCLUDED_VERSIONS; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_EXCLUDED_VERSIONS" ("ID", "PLAN_ID", "VERSION") FROM stdin;
\.


--
-- Name: AO_D9132D_EXCLUDED_VERSIONS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_EXCLUDED_VERSIONS_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_GENERICREPORT; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_GENERICREPORT" ("HASH", "ID", "PARAMS", "PARAMS_HASH", "TYPE", "TYPE_ID") FROM stdin;
\.


--
-- Name: AO_D9132D_GENERICREPORT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_GENERICREPORT_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_HIERARCHY_CONFIG; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_HIERARCHY_CONFIG" ("ICON_URL", "ID", "ISSUE_TYPE_IDS", "TITLE") FROM stdin;
\.


--
-- Name: AO_D9132D_HIERARCHY_CONFIG_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_HIERARCHY_CONFIG_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_INIT; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_INIT" ("ID", "KEY") FROM stdin;
1	empty-rank-domain-upgrade
2	default-dependency-configuration
3	default-base-configuration
4	jpo-parent-cf
5	update-parent-cf-searcher
6	multi-scenario-support
7	upgrade-original-distribution-flag
8	clear-solution-table
9	jpo-baseline-start-cf
10	jpo-baseline-end-cf
11	jpo-original-story-points-cf
12	update-baseline-start-and-end-date-descriptions
13	custom-fields-portfolio-indexing-request
14	migrate-plan-team-column
15	cleanup-planteam-planskill-tables
16	update-hierarchy-config
17	introduce-parent-child-link-type
\.


--
-- Name: AO_D9132D_INIT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_INIT_ID_seq"', 17, true);


--
-- Data for Name: AO_D9132D_ISSUE_SOURCE; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_ISSUE_SOURCE" ("CONVERSION_FACTOR", "ID", "PLAN_ID", "SOURCE_TYPE", "SOURCE_VALUE") FROM stdin;
\.


--
-- Name: AO_D9132D_ISSUE_SOURCE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_ISSUE_SOURCE_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_NONWORKINGDAYS; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_NONWORKINGDAYS" ("END", "ID", "PLAN_ID", "START", "TITLE") FROM stdin;
\.


--
-- Name: AO_D9132D_NONWORKINGDAYS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_NONWORKINGDAYS_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_PROGRAM; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_PROGRAM" ("DESCRIPTION", "ID", "OWNER", "TITLE") FROM stdin;
\.


--
-- Data for Name: AO_D9132D_PERMISSIONS; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_PERMISSIONS" ("HOLDER_KEY", "HOLDER_TYPE", "ID", "PERMISSION", "PLAN_ID", "PROGRAM_ID") FROM stdin;
\.


--
-- Name: AO_D9132D_PERMISSIONS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_PERMISSIONS_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_PLANNED_CAPACITY; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_PLANNED_CAPACITY" ("CAPACITY", "C_KEY", "ID", "ITERATION_ID", "PLANNING_UNIT", "PLAN_ID", "SCHEDULING_MODE", "SPRINT_ID", "TEAM_KEY") FROM stdin;
\.


--
-- Name: AO_D9132D_PLANNED_CAPACITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_PLANNED_CAPACITY_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_PLANSKILL; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_PLANSKILL" ("C_KEY", "ID", "PLAN_ID", "SKILL_ID", "STAGE", "WEIGHT") FROM stdin;
\.


--
-- Name: AO_D9132D_PLANSKILL_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_PLANSKILL_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_PLANTEAM; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_PLANTEAM" ("CAPACITY_MEASUREMENT", "ID", "ISSUE_SOURCE_ID", "ITERATION_LENGTH", "PLAN_ID", "SCHEDULING_MODE", "TEAM_ID", "VELOCITY", "WEEKLY_HOURS") FROM stdin;
\.


--
-- Name: AO_D9132D_PLANTEAM_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_PLANTEAM_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_THEME; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_THEME" ("COLOR", "ID", "SHARED", "TITLE") FROM stdin;
\.


--
-- Data for Name: AO_D9132D_PLANTHEME; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_PLANTHEME" ("C_KEY", "ID", "PLAN_ID", "THEME_ID", "WEIGHT") FROM stdin;
\.


--
-- Name: AO_D9132D_PLANTHEME_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_PLANTHEME_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_X_PROJECT_VERSION; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_X_PROJECT_VERSION" ("ID", "PLAN_ID", "TITLE") FROM stdin;
\.


--
-- Data for Name: AO_D9132D_PLANVERSION; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_PLANVERSION" ("C_KEY", "ID", "PLAN_ID", "VERSION_ID", "XPROJECT_VERSION_ID") FROM stdin;
\.


--
-- Name: AO_D9132D_PLANVERSION_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_PLANVERSION_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_PLAN_CUSTOM_FIELD; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_PLAN_CUSTOM_FIELD" ("CUSTOM_FIELD_ID", "C_KEY", "FILTERING_ALLOWED", "ID", "PLAN_ID") FROM stdin;
\.


--
-- Name: AO_D9132D_PLAN_CUSTOM_FIELD_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_PLAN_CUSTOM_FIELD_ID_seq"', 1, false);


--
-- Name: AO_D9132D_PLAN_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_PLAN_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_PLAN_USER_PROPERTY; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_PLAN_USER_PROPERTY" ("C_KEY", "ID", "KEY", "PLAN_ID", "USER_KEY", "VALUE") FROM stdin;
\.


--
-- Name: AO_D9132D_PLAN_USER_PROPERTY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_PLAN_USER_PROPERTY_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_PLAN_US_PR_MAPPING; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_PLAN_US_PR_MAPPING" ("ID", "PLAN_ID", "USER_ID") FROM stdin;
\.


--
-- Name: AO_D9132D_PLAN_US_PR_MAPPING_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_PLAN_US_PR_MAPPING_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_PROGRAM_CUSTOM_FIELD; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_PROGRAM_CUSTOM_FIELD" ("CUSTOM_FIELD_ID", "C_KEY", "ID", "PROGRAM_ID") FROM stdin;
\.


--
-- Name: AO_D9132D_PROGRAM_CUSTOM_FIELD_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_PROGRAM_CUSTOM_FIELD_ID_seq"', 1, false);


--
-- Name: AO_D9132D_PROGRAM_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_PROGRAM_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_RANK_ITEM; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_RANK_ITEM" ("DOMAIN", "ID", "KEY", "RANGE_ID", "UNIQUE") FROM stdin;
\.


--
-- Name: AO_D9132D_RANK_ITEM_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_RANK_ITEM_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_SAVED_VIEW; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_SAVED_VIEW" ("CREATED_BY", "CREATED_TIMESTAMP", "DEFAULT", "ID", "LAST_MODIFIED_BY", "LAST_MODIFIED_TIMESTAMP", "NAME", "PREFERENCES", "SUBJECT_ID", "SUBJECT_TYPE", "VERSION") FROM stdin;
\.


--
-- Data for Name: AO_D9132D_SAVED_VIEW2; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_SAVED_VIEW2" ("CREATED_BY", "CREATED_TIMESTAMP", "C_KEY", "DEFAULT", "ID", "LAST_MODIFIED_BY", "LAST_MODIFIED_TIMESTAMP", "NAME", "PREFERENCES", "SUBJECT_ID", "SUBJECT_TYPE", "VERSION") FROM stdin;
\.


--
-- Name: AO_D9132D_SAVED_VIEW2_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_SAVED_VIEW2_ID_seq"', 1, false);


--
-- Name: AO_D9132D_SAVED_VIEW_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_SAVED_VIEW_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_SCENARIO_ABILITY; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_SCENARIO_ABILITY" ("C_KEY", "ID", "ITEM_KEY", "LAST_CHANGE_TIMESTAMP", "LAST_CHANGE_USER", "PERSON_ITEM_KEY", "SCENARIO_ID", "SCENARIO_TYPE", "SKILL_ITEM_KEY", "U_AB") FROM stdin;
\.


--
-- Name: AO_D9132D_SCENARIO_ABILITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_SCENARIO_ABILITY_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_SCENARIO_RESOURCE; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_SCENARIO_RESOURCE" ("AVAILABILITY_CHANGED", "C_KEY", "ID", "ITEM_KEY", "JOIN_DATE", "JOIN_DATE_CHANGED", "LAST_CHANGE_TIMESTAMP", "LAST_CHANGE_USER", "LEAVE_DATE", "LEAVE_DATE_CHANGED", "PERSON_ITEM_KEY", "SCENARIO_ID", "SCENARIO_TYPE", "TEAM_ITEM_KEY", "WEEKLY_HOURS", "WEEKLY_HOURS_CHANGED") FROM stdin;
\.


--
-- Data for Name: AO_D9132D_SCENARIO_AVLBLTY; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_SCENARIO_AVLBLTY" ("END", "ID", "SCENARIO_RESOURCE_ID", "START", "TITLE", "WEEKLY_HOURS") FROM stdin;
\.


--
-- Name: AO_D9132D_SCENARIO_AVLBLTY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_SCENARIO_AVLBLTY_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_SCENARIO_CHANGES; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_SCENARIO_CHANGES" ("COUNTER", "C_KEY", "ID", "SCENARIO_ID", "T_TYPE") FROM stdin;
\.


--
-- Name: AO_D9132D_SCENARIO_CHANGES_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_SCENARIO_CHANGES_ID_seq"', 1, false);


--
-- Name: AO_D9132D_SCENARIO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_SCENARIO_ID_seq"', 1, false);


--
-- Name: AO_D9132D_SCENARIO_ISSUES_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_SCENARIO_ISSUES_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_SCENARIO_ISSUE_CMPNT; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_SCENARIO_ISSUE_CMPNT" ("COMPONENT_ID", "ID", "SCENARIO_ISSUE_ID") FROM stdin;
\.


--
-- Name: AO_D9132D_SCENARIO_ISSUE_CMPNT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_SCENARIO_ISSUE_CMPNT_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_SCENARIO_ISSUE_LABEL; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_SCENARIO_ISSUE_LABEL" ("ID", "LABEL", "SCENARIO_ISSUE_ID") FROM stdin;
\.


--
-- Name: AO_D9132D_SCENARIO_ISSUE_LABEL_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_SCENARIO_ISSUE_LABEL_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_SCENARIO_ISSUE_LINKS; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_SCENARIO_ISSUE_LINKS" ("C_KEY", "ID", "ITEM_KEY", "LAST_CHANGE_TIMESTAMP", "LAST_CHANGE_USER", "LINK_TYPE", "LINK_TYPE_CHANGED", "SCENARIO_ID", "SCENARIO_TYPE", "SOURCE", "TARGET") FROM stdin;
\.


--
-- Name: AO_D9132D_SCENARIO_ISSUE_LINKS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_SCENARIO_ISSUE_LINKS_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_SCENARIO_ISSUE_RES; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_SCENARIO_ISSUE_RES" ("ID", "RESOURCE_ITEM_KEY", "SCENARIO_ISSUE_ID") FROM stdin;
\.


--
-- Name: AO_D9132D_SCENARIO_ISSUE_RES_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_SCENARIO_ISSUE_RES_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_SCENARIO_PERSON; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_SCENARIO_PERSON" ("C_KEY", "ID", "ITEM_KEY", "LAST_CHANGE_TIMESTAMP", "LAST_CHANGE_USER", "SCENARIO_ID", "SCENARIO_TYPE", "TITLE", "TITLE_CHANGED") FROM stdin;
\.


--
-- Name: AO_D9132D_SCENARIO_PERSON_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_SCENARIO_PERSON_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_SCENARIO_PLAN_CAP; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_SCENARIO_PLAN_CAP" ("CAPACITY", "CAPACITY_CHANGED", "C_KEY", "ID", "ITEM_KEY", "ITERATION_ID", "ITERATION_ID_CHANGED", "LAST_CHANGE_TIMESTAMP", "LAST_CHANGE_USER", "PLANNING_UNIT", "PLANNING_UNIT_CHANGED", "SCENARIO_ID", "SCENARIO_TYPE", "SCHEDULING_MODE", "SCHEDULING_MODE_CHANGED", "SPRINT_ID", "SPRINT_ID_CHANGED", "TEAM_KEY", "TEAM_KEY_CHANGED") FROM stdin;
\.


--
-- Name: AO_D9132D_SCENARIO_PLAN_CAP_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_SCENARIO_PLAN_CAP_ID_seq"', 1, false);


--
-- Name: AO_D9132D_SCENARIO_RESOURCE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_SCENARIO_RESOURCE_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_SCENARIO_SKILL; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_SCENARIO_SKILL" ("ADD_TO_PLAN", "C_KEY", "ID", "ITEM_KEY", "LAST_CHANGE_TIMESTAMP", "LAST_CHANGE_USER", "SCENARIO_ID", "SCENARIO_TYPE", "STAGE_ID", "STAGE_ID_CHANGED", "TITLE", "TITLE_CHANGED", "WEIGHT", "WEIGHT_CHANGED") FROM stdin;
\.


--
-- Name: AO_D9132D_SCENARIO_SKILL_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_SCENARIO_SKILL_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_SCENARIO_STAGE; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_SCENARIO_STAGE" ("COLOR", "COLOR_CHANGED", "C_KEY", "ID", "ITEM_KEY", "LAST_CHANGE_TIMESTAMP", "LAST_CHANGE_USER", "SCENARIO_ID", "SCENARIO_TYPE", "TITLE", "TITLE_CHANGED", "WEIGHT", "WEIGHT_CHANGED") FROM stdin;
\.


--
-- Name: AO_D9132D_SCENARIO_STAGE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_SCENARIO_STAGE_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_SCENARIO_TEAM; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_SCENARIO_TEAM" ("ADD_TO_PLAN", "AVATAR", "AVATAR_CHANGED", "CAPACITY_MEASUREMENT", "CAPACITY_MEASUREMENT_CHANGED", "C_KEY", "EXCLUDED_SPRINTS_CHANGED", "ID", "ISSUE_SOURCE_CHANGED", "ISSUE_SOURCE_ID", "ITEM_KEY", "ITERATION_LENGTH", "ITERATION_LENGTH_CHANGED", "LAST_CHANGE_TIMESTAMP", "LAST_CHANGE_USER", "SCENARIO_ID", "SCENARIO_TYPE", "SCHEDULING_MODE", "SCHEDULING_MODE_CHANGED", "TITLE", "TITLE_CHANGED", "VELOCITY", "VELOCITY_CHANGED", "WEEKLY_HOURS", "WEEKLY_HOURS_CHANGED") FROM stdin;
\.


--
-- Name: AO_D9132D_SCENARIO_TEAM_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_SCENARIO_TEAM_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_SCENARIO_THEME; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_SCENARIO_THEME" ("ADD_TO_PLAN", "COLOR", "COLOR_CHANGED", "C_KEY", "ID", "ITEM_KEY", "LAST_CHANGE_TIMESTAMP", "LAST_CHANGE_USER", "SCENARIO_ID", "SCENARIO_TYPE", "TITLE", "TITLE_CHANGED", "WEIGHT", "WEIGHT_CHANGED") FROM stdin;
\.


--
-- Name: AO_D9132D_SCENARIO_THEME_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_SCENARIO_THEME_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_SCENARIO_VERSION; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_SCENARIO_VERSION" ("C_KEY", "DELTA", "DELTA_CHANGED", "DESCRIPTION", "DESCRIPTION_CHANGED", "END_DATE", "END_DATE_CHANGED", "ID", "ITEM_KEY", "LAST_CHANGE_TIMESTAMP", "LAST_CHANGE_USER", "PROJECT_ID", "SCENARIO_ID", "SCENARIO_TYPE", "START_DATE", "START_DATE_CHANGED", "TITLE", "TITLE_CHANGED", "XPROJECT_VERSION", "XPROJECT_VERSION_CHANGED") FROM stdin;
\.


--
-- Name: AO_D9132D_SCENARIO_VERSION_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_SCENARIO_VERSION_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_SCENARIO_XPVERSION; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_SCENARIO_XPVERSION" ("C_KEY", "ID", "ITEM_KEY", "LAST_CHANGE_TIMESTAMP", "LAST_CHANGE_USER", "NAME", "NAME_CHANGED", "SCENARIO_ID", "SCENARIO_TYPE") FROM stdin;
\.


--
-- Name: AO_D9132D_SCENARIO_XPVERSION_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_SCENARIO_XPVERSION_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_SCEN_CUSTOM_FIELD; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_SCEN_CUSTOM_FIELD" ("C_KEY", "DOUBLE_VALUE", "ID", "NUMBER_VALUE", "PLAN_CUSTOM_FIELD_ID", "SCENARIO_ISSUE_ID", "STRING_VALUE", "TEXT_VALUE") FROM stdin;
\.


--
-- Data for Name: AO_D9132D_SCEN_CSTM_FLD_MVAL; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_SCEN_CSTM_FLD_MVAL" ("ID", "SCENARIO_ISSUE_CUSTOM_FIELD_ID", "VALUE") FROM stdin;
\.


--
-- Name: AO_D9132D_SCEN_CSTM_FLD_MVAL_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_SCEN_CSTM_FLD_MVAL_ID_seq"', 1, false);


--
-- Name: AO_D9132D_SCEN_CUSTOM_FIELD_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_SCEN_CUSTOM_FIELD_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_SCEN_TEAM_EX_SPRINT; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_SCEN_TEAM_EX_SPRINT" ("ID", "SCENARIO_TEAM_ID", "SPRINT_ID") FROM stdin;
\.


--
-- Name: AO_D9132D_SCEN_TEAM_EX_SPRINT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_SCEN_TEAM_EX_SPRINT_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_SHARED_REPORT; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_SHARED_REPORT" ("FILTER_CONFIGURATION", "FILTER_CONFIG_HASH", "HASH", "HIERARCHY_LEVEL", "ID", "PLAN_ID", "REPORT_CONFIGURATION", "REPORT_CONFIG_HASH", "REPORT_ID", "SCENARIO") FROM stdin;
\.


--
-- Name: AO_D9132D_SHARED_REPORT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_SHARED_REPORT_ID_seq"', 1, false);


--
-- Name: AO_D9132D_SOLUTION_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_SOLUTION_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_STAGE; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_STAGE" ("COLOR", "ID", "PLAN_ID", "SKILL_ID", "WEIGHT") FROM stdin;
\.


--
-- Name: AO_D9132D_STAGE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_STAGE_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_TEAM_EX_SPRINT; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_TEAM_EX_SPRINT" ("ID", "PLANTEAM_ID", "PLAN_TEAM_ID", "SPRINT_ID") FROM stdin;
\.


--
-- Name: AO_D9132D_TEAM_EX_SPRINT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_TEAM_EX_SPRINT_ID_seq"', 1, false);


--
-- Name: AO_D9132D_THEME_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_THEME_ID_seq"', 1, false);


--
-- Data for Name: AO_D9132D_VERSION_ENRICHMENT; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_D9132D_VERSION_ENRICHMENT" ("DELTA", "ENV_ID", "ID") FROM stdin;
\.


--
-- Name: AO_D9132D_VERSION_ENRICHMENT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_VERSION_ENRICHMENT_ID_seq"', 1, false);


--
-- Name: AO_D9132D_X_PROJECT_VERSION_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_D9132D_X_PROJECT_VERSION_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_REPOSITORY_MAPPING; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_E8B6CC_REPOSITORY_MAPPING" ("ACTIVITY_LAST_SYNC", "DELETED", "FORK", "FORK_OF_NAME", "FORK_OF_OWNER", "FORK_OF_SLUG", "ID", "LAST_CHANGESET_NODE", "LAST_COMMIT_DATE", "LINKED", "LOGO", "NAME", "ORGANIZATION_ID", "REMOTE_ID", "REPOSITORY_URI", "REPOSITORY_URL", "SLUG", "SMARTCOMMITS_ENABLED", "UPDATE_LINK_AUTHORISED", "WEBHOOK_STATUS") FROM stdin;
\.


--
-- Data for Name: AO_E8B6CC_BRANCH; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_E8B6CC_BRANCH" ("ID", "NAME", "REPOSITORY_ID") FROM stdin;
\.


--
-- Data for Name: AO_E8B6CC_BRANCH_HEAD_MAPPING; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_E8B6CC_BRANCH_HEAD_MAPPING" ("BRANCH_NAME", "HEAD", "ID", "REPOSITORY_ID") FROM stdin;
\.


--
-- Name: AO_E8B6CC_BRANCH_HEAD_MAPPING_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_E8B6CC_BRANCH_HEAD_MAPPING_ID_seq"', 1, false);


--
-- Name: AO_E8B6CC_BRANCH_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_E8B6CC_BRANCH_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_CHANGESET_MAPPING; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_E8B6CC_CHANGESET_MAPPING" ("AUTHOR", "AUTHOR_EMAIL", "BRANCH", "DATE", "FILES_DATA", "FILE_COUNT", "FILE_DETAILS_JSON", "ID", "ISSUE_KEY", "MESSAGE", "NODE", "PARENTS_DATA", "PROJECT_KEY", "RAW_AUTHOR", "RAW_NODE", "REPOSITORY_ID", "SMARTCOMMIT_AVAILABLE", "VERSION") FROM stdin;
\.


--
-- Name: AO_E8B6CC_CHANGESET_MAPPING_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_E8B6CC_CHANGESET_MAPPING_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_COMMIT; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_E8B6CC_COMMIT" ("AUTHOR", "AUTHOR_AVATAR_URL", "DATE", "DOMAIN_ID", "ID", "MERGE", "MESSAGE", "NODE", "RAW_AUTHOR") FROM stdin;
\.


--
-- Name: AO_E8B6CC_COMMIT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_E8B6CC_COMMIT_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_GIT_HUB_EVENT; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_E8B6CC_GIT_HUB_EVENT" ("CREATED_AT", "GIT_HUB_ID", "ID", "REPOSITORY_ID", "SAVE_POINT") FROM stdin;
\.


--
-- Name: AO_E8B6CC_GIT_HUB_EVENT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_E8B6CC_GIT_HUB_EVENT_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_HOOK_MIGRATION_TASK; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_E8B6CC_HOOK_MIGRATION_TASK" ("ID", "ORGANIZATION_ID", "REPOSITORY_ID") FROM stdin;
\.


--
-- Name: AO_E8B6CC_HOOK_MIGRATION_TASK_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_E8B6CC_HOOK_MIGRATION_TASK_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_ISSUE_MAPPING; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_E8B6CC_ISSUE_MAPPING" ("ID", "ISSUE_ID", "NODE", "PROJECT_KEY", "REPOSITORY_URI") FROM stdin;
\.


--
-- Name: AO_E8B6CC_ISSUE_MAPPING_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_E8B6CC_ISSUE_MAPPING_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_ISSUE_MAPPING_V2; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_E8B6CC_ISSUE_MAPPING_V2" ("AUTHOR", "BRANCH", "DATE", "FILES_DATA", "ID", "ISSUE_ID", "MESSAGE", "NODE", "PARENTS_DATA", "RAW_AUTHOR", "RAW_NODE", "REPOSITORY_ID", "VERSION") FROM stdin;
\.


--
-- Name: AO_E8B6CC_ISSUE_MAPPING_V2_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_E8B6CC_ISSUE_MAPPING_V2_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_ISSUE_TO_BRANCH; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_E8B6CC_ISSUE_TO_BRANCH" ("BRANCH_ID", "ID", "ISSUE_KEY") FROM stdin;
\.


--
-- Name: AO_E8B6CC_ISSUE_TO_BRANCH_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_E8B6CC_ISSUE_TO_BRANCH_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_ISSUE_TO_CHANGESET; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_E8B6CC_ISSUE_TO_CHANGESET" ("CHANGESET_ID", "ID", "ISSUE_KEY", "PROJECT_KEY") FROM stdin;
\.


--
-- Name: AO_E8B6CC_ISSUE_TO_CHANGESET_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_E8B6CC_ISSUE_TO_CHANGESET_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_MESSAGE; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_E8B6CC_MESSAGE" ("ADDRESS", "ID", "PAYLOAD", "PAYLOAD_TYPE", "PRIORITY") FROM stdin;
\.


--
-- Name: AO_E8B6CC_MESSAGE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_E8B6CC_MESSAGE_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_MESSAGE_QUEUE_ITEM; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_E8B6CC_MESSAGE_QUEUE_ITEM" ("ID", "LAST_FAILED", "MESSAGE_ID", "QUEUE", "RETRIES_COUNT", "STATE", "STATE_INFO") FROM stdin;
\.


--
-- Name: AO_E8B6CC_MESSAGE_QUEUE_ITEM_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_E8B6CC_MESSAGE_QUEUE_ITEM_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_MESSAGE_TAG; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_E8B6CC_MESSAGE_TAG" ("ID", "MESSAGE_ID", "TAG") FROM stdin;
\.


--
-- Name: AO_E8B6CC_MESSAGE_TAG_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_E8B6CC_MESSAGE_TAG_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_ORGANIZATION_MAPPING; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_E8B6CC_ORGANIZATION_MAPPING" ("ACCESS_TOKEN", "ADMIN_PASSWORD", "ADMIN_USERNAME", "APPROVAL_STATE", "AUTOLINK_NEW_REPOS", "DEFAULT_GROUPS_SLUGS", "DVCS_TYPE", "HOST_URL", "ID", "LAST_POLLED", "NAME", "OAUTH_KEY", "OAUTH_SECRET", "PRINCIPAL_ID", "SMARTCOMMITS_FOR_NEW_REPOS", "STATUS", "TOKEN_ID", "WEBHOOK_SECRET") FROM stdin;
\.


--
-- Name: AO_E8B6CC_ORGANIZATION_MAPPING_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_E8B6CC_ORGANIZATION_MAPPING_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_ORG_TO_PROJECT; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_E8B6CC_ORG_TO_PROJECT" ("ID", "ORGANIZATION_ID", "PROJECT_KEY") FROM stdin;
\.


--
-- Name: AO_E8B6CC_ORG_TO_PROJECT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_E8B6CC_ORG_TO_PROJECT_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_PROJECT_MAPPING; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_E8B6CC_PROJECT_MAPPING" ("ID", "PASSWORD", "PROJECT_KEY", "REPOSITORY_URI", "USERNAME") FROM stdin;
\.


--
-- Name: AO_E8B6CC_PROJECT_MAPPING_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_E8B6CC_PROJECT_MAPPING_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_PROJECT_MAPPING_V2; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_E8B6CC_PROJECT_MAPPING_V2" ("ACCESS_TOKEN", "ADMIN_PASSWORD", "ADMIN_USERNAME", "ID", "LAST_COMMIT_DATE", "PROJECT_KEY", "REPOSITORY_NAME", "REPOSITORY_TYPE", "REPOSITORY_URL") FROM stdin;
\.


--
-- Name: AO_E8B6CC_PROJECT_MAPPING_V2_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_E8B6CC_PROJECT_MAPPING_V2_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_PR_ISSUE_KEY; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_E8B6CC_PR_ISSUE_KEY" ("DOMAIN_ID", "ID", "ISSUE_KEY", "PULL_REQUEST_ID") FROM stdin;
\.


--
-- Name: AO_E8B6CC_PR_ISSUE_KEY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_E8B6CC_PR_ISSUE_KEY_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_PULL_REQUEST; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_E8B6CC_PULL_REQUEST" ("AUTHOR", "COMMENT_COUNT", "CREATED_ON", "DESTINATION_BRANCH", "DOMAIN_ID", "EXECUTED_BY", "ID", "LAST_STATUS", "NAME", "REMOTE_ID", "SOURCE_BRANCH", "SOURCE_REPO", "TO_REPOSITORY_ID", "UPDATED_ON", "URL") FROM stdin;
\.


--
-- Data for Name: AO_E8B6CC_PR_PARTICIPANT; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_E8B6CC_PR_PARTICIPANT" ("APPROVED", "DOMAIN_ID", "ID", "PULL_REQUEST_ID", "ROLE", "USERNAME") FROM stdin;
\.


--
-- Name: AO_E8B6CC_PR_PARTICIPANT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_E8B6CC_PR_PARTICIPANT_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_PR_TO_COMMIT; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_E8B6CC_PR_TO_COMMIT" ("COMMIT_ID", "DOMAIN_ID", "ID", "REQUEST_ID") FROM stdin;
\.


--
-- Name: AO_E8B6CC_PR_TO_COMMIT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_E8B6CC_PR_TO_COMMIT_ID_seq"', 1, false);


--
-- Name: AO_E8B6CC_PULL_REQUEST_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_E8B6CC_PULL_REQUEST_ID_seq"', 1, false);


--
-- Name: AO_E8B6CC_REPOSITORY_MAPPING_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_E8B6CC_REPOSITORY_MAPPING_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_REPO_TO_CHANGESET; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_E8B6CC_REPO_TO_CHANGESET" ("CHANGESET_ID", "ID", "REPOSITORY_ID") FROM stdin;
\.


--
-- Name: AO_E8B6CC_REPO_TO_CHANGESET_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_E8B6CC_REPO_TO_CHANGESET_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_REPO_TO_PROJECT; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_E8B6CC_REPO_TO_PROJECT" ("ID", "PROJECT_KEY", "REPOSITORY_ID") FROM stdin;
\.


--
-- Name: AO_E8B6CC_REPO_TO_PROJECT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_E8B6CC_REPO_TO_PROJECT_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_SYNC_AUDIT_LOG; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_E8B6CC_SYNC_AUDIT_LOG" ("END_DATE", "EXC_TRACE", "FIRST_REQUEST_DATE", "FLIGHT_TIME_MS", "ID", "NUM_REQUESTS", "REPO_ID", "START_DATE", "SYNC_STATUS", "SYNC_TYPE", "TOTAL_ERRORS") FROM stdin;
\.


--
-- Name: AO_E8B6CC_SYNC_AUDIT_LOG_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_E8B6CC_SYNC_AUDIT_LOG_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_SYNC_EVENT; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_E8B6CC_SYNC_EVENT" ("EVENT_CLASS", "EVENT_DATE", "EVENT_JSON", "ID", "REPO_ID", "SCHEDULED_SYNC") FROM stdin;
\.


--
-- Name: AO_E8B6CC_SYNC_EVENT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_E8B6CC_SYNC_EVENT_ID_seq"', 1, false);


--
-- Data for Name: AO_ED669C_IDP_CONFIG; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_ED669C_IDP_CONFIG" ("ADDITIONAL_JIT_SCOPES", "ADDITIONAL_SCOPES", "AUTHORIZATION_ENDPOINT", "BUTTON_TEXT", "CLIENT_ID", "CLIENT_SECRET", "ENABLED", "ENABLE_REMEMBER_ME", "ID", "INCLUDE_CUSTOMER_LOGINS", "ISSUER", "LAST_UPDATED", "MAPPING_DISPLAYNAME", "MAPPING_EMAIL", "MAPPING_GROUPS", "NAME", "SAML_IDP_TYPE", "SIGNING_CERT", "SSO_TYPE", "SSO_URL", "TOKEN_ENDPOINT", "USERNAME_ATTRIBUTE", "USERNAME_CLAIM", "USER_INFO_ENDPOINT", "USER_PROVISIONING_ENABLED", "USE_DISCOVERY") FROM stdin;
\.


--
-- Name: AO_ED669C_IDP_CONFIG_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_ED669C_IDP_CONFIG_ID_seq"', 1, false);


--
-- Data for Name: AO_ED669C_SEEN_ASSERTIONS; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_ED669C_SEEN_ASSERTIONS" ("ASSERTION_ID", "EXPIRY_TIMESTAMP", "ID") FROM stdin;
\.


--
-- Name: AO_ED669C_SEEN_ASSERTIONS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_ED669C_SEEN_ASSERTIONS_ID_seq"', 1, false);


--
-- Data for Name: AO_FE1BC5_ACCESS_TOKEN; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_FE1BC5_ACCESS_TOKEN" ("AUTHORIZATION_CODE", "AUTHORIZATION_DATE", "CLIENT_ID", "CREATED_AT", "ID", "LAST_ACCESSED", "SCOPE", "USER_KEY") FROM stdin;
\.


--
-- Data for Name: AO_FE1BC5_AUTHORIZATION; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_FE1BC5_AUTHORIZATION" ("AUTHORIZATION_CODE", "CLIENT_ID", "CODE_CHALLENGE", "CODE_CHALLENGE_METHOD", "CREATED_AT", "REDIRECT_URI", "SCOPE", "USER_KEY") FROM stdin;
\.


--
-- Data for Name: AO_FE1BC5_CLIENT; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_FE1BC5_CLIENT" ("CLIENT_ID", "CLIENT_SECRET", "ID", "NAME", "SCOPE", "USER_KEY") FROM stdin;
\.


--
-- Data for Name: AO_FE1BC5_REDIRECT_URI; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_FE1BC5_REDIRECT_URI" ("CLIENT_ID", "ID", "URI") FROM stdin;
\.


--
-- Name: AO_FE1BC5_REDIRECT_URI_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: jira
--

SELECT pg_catalog.setval('public."AO_FE1BC5_REDIRECT_URI_ID_seq"', 1, false);


--
-- Data for Name: AO_FE1BC5_REFRESH_TOKEN; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public."AO_FE1BC5_REFRESH_TOKEN" ("ACCESS_TOKEN_ID", "AUTHORIZATION_CODE", "AUTHORIZATION_DATE", "CLIENT_ID", "CREATED_AT", "ID", "REFRESH_COUNT", "SCOPE", "USER_KEY") FROM stdin;
\.


--
-- Data for Name: app_user; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.app_user (id, user_key, lower_user_name) FROM stdin;
10000	JIRAUSER10000	admin
10100	JIRAUSER10100	member
\.


--
-- Data for Name: audit_changed_value; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.audit_changed_value (id, log_id, name, delta_from, delta_to) FROM stdin;
\.


--
-- Data for Name: audit_item; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.audit_item (id, log_id, object_type, object_id, object_name, object_parent_id, object_parent_name) FROM stdin;
\.


--
-- Data for Name: audit_log; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.audit_log (id, remote_address, created, author_key, summary, category, object_type, object_id, object_name, object_parent_id, object_parent_name, author_type, event_source_name, description, long_description, search_field) FROM stdin;
\.


--
-- Data for Name: avatar; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.avatar (id, filename, contenttype, avatartype, owner, systemavatar) FROM stdin;
10000	codegeist.png	image/png	project	\N	1
10321	development_task.svg	image/svg+xml	issuetype	\N	1
10322	feedback.svg	image/svg+xml	issuetype	\N	1
10001	bird.svg	image/svg+xml	project	\N	1
10323	request_access.svg	image/svg+xml	issuetype	\N	1
10002	jm_black.png	image/png	project	\N	1
10324	default.svg	image/svg+xml	project	\N	1
10003	jm_brown.png	image/png	project	\N	1
10325	code.svg	image/svg+xml	project	\N	1
10004	jm_orange.png	image/png	project	\N	1
10326	coffee.svg	image/svg+xml	project	\N	1
10005	jm_red.png	image/png	project	\N	1
10327	design.svg	image/svg+xml	project	\N	1
10006	jm_white.png	image/png	project	\N	1
10328	drill.svg	image/svg+xml	project	\N	1
10007	jm_yellow.png	image/png	project	\N	1
10329	food.svg	image/svg+xml	project	\N	1
10008	monster.png	image/png	project	\N	1
10330	notes.svg	image/svg+xml	project	\N	1
10331	red-flag.svg	image/svg+xml	project	\N	1
10009	nature.svg	image/svg+xml	project	\N	1
10332	science.svg	image/svg+xml	project	\N	1
10010	koala.svg	image/svg+xml	project	\N	1
10333	support.svg	image/svg+xml	project	\N	1
10011	rocket.svg	image/svg+xml	project	\N	1
10334	bull.svg	image/svg+xml	user	\N	1
10100	Avatar-1.png	image/png	user	\N	1
10101	Avatar-2.png	image/png	user	\N	1
10335	cat.svg	image/svg+xml	user	\N	1
10102	Avatar-3.png	image/png	user	\N	1
10336	dog.svg	image/svg+xml	user	\N	1
10103	Avatar-4.png	image/png	user	\N	1
10337	female_1.svg	image/svg+xml	user	\N	1
10104	Avatar-5.png	image/png	user	\N	1
10338	female_2.svg	image/svg+xml	user	\N	1
10105	Avatar-6.png	image/png	user	\N	1
10339	female_3.svg	image/svg+xml	user	\N	1
10106	Avatar-7.png	image/png	user	\N	1
10340	female_4.svg	image/svg+xml	user	\N	1
10107	Avatar-8.png	image/png	user	\N	1
10341	ghost.svg	image/svg+xml	user	\N	1
10108	Avatar-9.png	image/png	user	\N	1
10342	male_1.svg	image/svg+xml	user	\N	1
10109	Avatar-10.png	image/png	user	\N	1
10343	male_2.svg	image/svg+xml	user	\N	1
10110	Avatar-11.png	image/png	user	\N	1
10344	male_3.svg	image/svg+xml	user	\N	1
10111	Avatar-12.png	image/png	user	\N	1
10345	male_4.svg	image/svg+xml	user	\N	1
10346	male_5.svg	image/svg+xml	user	\N	1
10112	Avatar-13.png	image/png	user	\N	1
10113	Avatar-14.png	image/png	user	\N	1
10347	male_6.svg	image/svg+xml	user	\N	1
10114	Avatar-15.png	image/png	user	\N	1
10348	male_8.svg	image/svg+xml	user	\N	1
10115	Avatar-16.png	image/png	user	\N	1
10349	owl.svg	image/svg+xml	user	\N	1
10116	Avatar-17.png	image/png	user	\N	1
10117	Avatar-18.png	image/png	user	\N	1
10350	pirate.svg	image/svg+xml	user	\N	1
10351	robot.svg	image/svg+xml	user	\N	1
10118	Avatar-19.png	image/png	user	\N	1
10352	vampire.svg	image/svg+xml	user	\N	1
10119	Avatar-20.png	image/png	user	\N	1
10120	Avatar-21.png	image/png	user	\N	1
10121	Avatar-22.png	image/png	user	\N	1
10122	Avatar-default.svg	image/svg+xml	user	\N	1
10123	Avatar-unknown.png	image/png	user	\N	1
10200	cloud.svg	image/svg+xml	project	\N	1
10201	spanner.svg	image/svg+xml	project	\N	1
10202	cd.svg	image/svg+xml	project	\N	1
10203	money.svg	image/svg+xml	project	\N	1
10204	mouse-hand.svg	image/svg+xml	project	\N	1
10205	yeti.svg	image/svg+xml	project	\N	1
10206	power.svg	image/svg+xml	project	\N	1
10207	refresh.svg	image/svg+xml	project	\N	1
10208	phone.svg	image/svg+xml	project	\N	1
10209	settings.svg	image/svg+xml	project	\N	1
10210	storm.svg	image/svg+xml	project	\N	1
10211	plane.svg	image/svg+xml	project	\N	1
10300	genericissue.svg	image/svg+xml	issuetype	\N	1
10303	bug.svg	image/svg+xml	issuetype	\N	1
10304	defect.svg	image/svg+xml	issuetype	\N	1
10306	documentation.svg	image/svg+xml	issuetype	\N	1
10307	epic.svg	image/svg+xml	issuetype	\N	1
10308	exclamation.svg	image/svg+xml	issuetype	\N	1
10309	design_task.svg	image/svg+xml	issuetype	\N	1
10310	improvement.svg	image/svg+xml	issuetype	\N	1
10311	newfeature.svg	image/svg+xml	issuetype	\N	1
10312	remove_feature.svg	image/svg+xml	issuetype	\N	1
10313	requirement.svg	image/svg+xml	issuetype	\N	1
10314	sales.svg	image/svg+xml	issuetype	\N	1
10315	story.svg	image/svg+xml	issuetype	\N	1
10316	subtask.svg	image/svg+xml	issuetype	\N	1
10318	task.svg	image/svg+xml	issuetype	\N	1
10320	question.svg	image/svg+xml	issuetype	\N	1
10500	female_5.svg	image/svg+xml	user	\N	1
10501	female_6.svg	image/svg+xml	user	\N	1
10502	female_7.svg	image/svg+xml	user	\N	1
10503	female_8.svg	image/svg+xml	user	\N	1
10504	female_9.svg	image/svg+xml	user	\N	1
10505	male_7.svg	image/svg+xml	user	\N	1
10506	male_9.svg	image/svg+xml	user	\N	1
10507	pirate_female.svg	image/svg+xml	user	\N	1
10508	princess.svg	image/svg+xml	user	\N	1
10509	spectrum.svg	image/svg+xml	project	\N	1
\.


--
-- Data for Name: board; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.board (id, jql) FROM stdin;
\.


--
-- Data for Name: boardproject; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.boardproject (board_id, project_id) FROM stdin;
\.


--
-- Data for Name: changegroup; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.changegroup (id, issueid, author, created) FROM stdin;
10000	10001	JIRAUSER10000	2024-07-02 17:26:59.483+00
10001	10003	JIRAUSER10000	2024-06-29 20:33:59.483+00
10002	10005	JIRAUSER10000	2024-06-27 23:44:59.483+00
10003	10005	JIRAUSER10000	2024-06-30 18:01:59.483+00
10004	10006	JIRAUSER10000	2024-06-29 23:24:59.483+00
10005	10006	JIRAUSER10000	2024-07-01 12:38:59.483+00
10006	10007	JIRAUSER10000	2024-06-29 22:28:59.483+00
10007	10007	JIRAUSER10000	2024-07-01 19:31:59.483+00
10008	10007	JIRAUSER10000	2024-07-02 21:43:59.483+00
10009	10008	JIRAUSER10000	2024-06-28 19:10:59.483+00
10010	10008	JIRAUSER10000	2024-06-30 19:38:59.483+00
10011	10008	JIRAUSER10000	2024-07-01 22:16:59.483+00
10012	10009	JIRAUSER10000	2024-06-26 20:38:59.483+00
10013	10009	JIRAUSER10000	2024-06-28 23:38:59.483+00
10014	10009	JIRAUSER10000	2024-06-30 21:38:59.483+00
10015	10010	JIRAUSER10000	2024-06-25 03:51:59.483+00
10016	10010	JIRAUSER10000	2024-06-26 15:46:59.483+00
10017	10010	JIRAUSER10000	2024-06-29 14:51:59.483+00
10018	10011	JIRAUSER10000	2024-06-24 07:59:59.483+00
10019	10011	JIRAUSER10000	2024-06-27 04:04:59.484+00
10020	10011	JIRAUSER10000	2024-06-28 12:53:59.484+00
10021	10012	JIRAUSER10000	2024-06-21 12:59:59.484+00
10022	10012	JIRAUSER10000	2024-06-22 03:52:59.484+00
10023	10012	JIRAUSER10000	2024-06-27 01:10:59.484+00
10024	10013	JIRAUSER10000	2024-06-19 14:24:59.484+00
10025	10013	JIRAUSER10000	2024-06-23 13:27:59.484+00
10026	10013	JIRAUSER10000	2024-06-25 04:06:59.484+00
10027	10014	JIRAUSER10000	2024-06-21 15:42:59.484+00
10028	10014	JIRAUSER10000	2024-06-24 15:30:59.484+00
10029	10014	JIRAUSER10000	2024-06-26 04:38:59.484+00
10030	10015	JIRAUSER10000	2024-06-23 09:10:59.484+00
10031	10015	JIRAUSER10000	2024-06-25 18:26:59.484+00
10032	10015	JIRAUSER10000	2024-06-28 00:02:59.484+00
\.


--
-- Data for Name: changeitem; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.changeitem (id, groupid, fieldtype, field, oldvalue, oldstring, newvalue, newstring) FROM stdin;
10000	10000	jira	status	10000	Backlog	10001	Selected for Development
10001	10001	jira	status	10000	Backlog	10001	Selected for Development
10002	10002	jira	status	10000	Backlog	10001	Selected for Development
10003	10003	jira	status	10001	Selected for Development	3	In Progress
10004	10004	jira	status	10000	Backlog	10001	Selected for Development
10005	10005	jira	status	10001	Selected for Development	3	In Progress
10006	10006	jira	status	10000	Backlog	10001	Selected for Development
10007	10007	jira	status	10001	Selected for Development	3	In Progress
10008	10008	jira	status	3	In Progress	10002	Done
10009	10009	jira	status	10000	Backlog	10001	Selected for Development
10010	10010	jira	status	10001	Selected for Development	3	In Progress
10011	10011	jira	status	3	In Progress	10002	Done
10012	10012	jira	status	10000	Backlog	10001	Selected for Development
10013	10013	jira	status	10001	Selected for Development	3	In Progress
10014	10014	jira	status	3	In Progress	10002	Done
10015	10015	jira	status	10000	Backlog	10001	Selected for Development
10016	10016	jira	status	10001	Selected for Development	3	In Progress
10017	10017	jira	status	3	In Progress	10002	Done
10018	10018	jira	status	10000	Backlog	10001	Selected for Development
10019	10019	jira	status	10001	Selected for Development	3	In Progress
10020	10020	jira	status	3	In Progress	10002	Done
10021	10021	jira	status	10000	Backlog	10001	Selected for Development
10022	10022	jira	status	10001	Selected for Development	3	In Progress
10023	10023	jira	status	3	In Progress	10002	Done
10024	10024	jira	status	10000	Backlog	10001	Selected for Development
10025	10025	jira	status	10001	Selected for Development	3	In Progress
10026	10026	jira	status	3	In Progress	10002	Done
10027	10027	jira	status	10000	Backlog	10001	Selected for Development
10028	10028	jira	status	10001	Selected for Development	3	In Progress
10029	10029	jira	status	3	In Progress	10002	Done
10030	10030	jira	status	10000	Backlog	10001	Selected for Development
10031	10031	jira	status	10001	Selected for Development	3	In Progress
10032	10032	jira	status	3	In Progress	10002	Done
\.


--
-- Data for Name: clusteredjob; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.clusteredjob (id, job_id, job_runner_key, sched_type, interval_millis, first_run, cron_expression, time_zone, next_run, version, parameters) FROM stdin;
10207	LocalPluginLicenseNotificationJob-job	LocalPluginLicenseNotificationJob-runner	I	86400000	1719959888005	\N	\N	1720046288006	2	\N
10212	CompatibilityPluginScheduler.JobId.LEXO_RANK_SCHEDULER_JOB	CompatibilityPluginScheduler.JobRunnerKey.com.atlassian.greenhopper.service.lexorank.balance.LexoRankBalancePluginJob	I	60000	1719959903502	\N	\N	1720028806364	57	\N
10224	com.atlassian.jira.plugins.dvcs.scheduler.hooks.migration.HookMigrationJobRunner:job	com.atlassian.jira.plugins.dvcs.scheduler.hooks.migration.HookMigrationJobRunner	I	60000	1719959920147	\N	\N	1720028806368	56	\N
10015	com.atlassian.jira.service.JiraService:10002	com.atlassian.jira.service.DefaultServiceManager	C	\N	\N	0 0 0 * * ?	\N	1720051200000	2	\\xaced000573720037636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c6542694d61702453657269616c697a6564466f726d000000000000000002000078720035636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c654d61702453657269616c697a6564466f726d00000000000000000200024c00046b6579737400124c6a6176612f6c616e672f4f626a6563743b4c000676616c75657371007e00027870757200135b4c6a6176612e6c616e672e4f626a6563743b90ce589f1073296c020000787000000001740033636f6d2e61746c61737369616e2e6a6972612e736572766963652e536572766963654d616e616765723a7365727669636549647571007e0004000000017372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078700000000000002712
10209	PluginUpdateCheckJob-job	PluginUpdateCheckJob-runner	I	86400000	1719966248838	\N	\N	1720113886342	2	\N
10208	PluginRequestCheckJob-job	PluginRequestCheckJob-runner	I	3600000	1719959888007	\N	\N	1720031086344	4	\N
10118	com.atlassian.jira.service.JiraService:10200	com.atlassian.jira.service.DefaultServiceManager	C	\N	\N	0 0 2 ? * *	\N	1720058400000	2	\\xaced000573720037636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c6542694d61702453657269616c697a6564466f726d000000000000000002000078720035636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c654d61702453657269616c697a6564466f726d00000000000000000200024c00046b6579737400124c6a6176612f6c616e672f4f626a6563743b4c000676616c75657371007e00027870757200135b4c6a6176612e6c616e672e4f626a6563743b90ce589f1073296c020000787000000001740033636f6d2e61746c61737369616e2e6a6972612e736572766963652e536572766963654d616e616765723a7365727669636549647571007e0004000000017372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000000000027d8
10210	InstanceTopologyJob-job	InstanceTopologyJob-runner	I	86400000	1719993352681	\N	\N	1720113886366	2	\N
10119	com.atlassian.jira.service.JiraService:10001	com.atlassian.jira.service.DefaultServiceManager	C	\N	\N	0 35 10/12 * * ?	\N	1720046100000	2	\\xaced000573720037636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c6542694d61702453657269616c697a6564466f726d000000000000000002000078720035636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c654d61702453657269616c697a6564466f726d00000000000000000200024c00046b6579737400124c6a6176612f6c616e672f4f626a6563743b4c000676616c75657371007e00027870757200135b4c6a6176612e6c616e672e4f626a6563743b90ce589f1073296c020000787000000001740033636f6d2e61746c61737369616e2e6a6972612e736572766963652e536572766963654d616e616765723a7365727669636549647571007e0004000000017372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078700000000000002711
10408	jira-migration-analytics-server-analysis-job-id	jira-migration-analytics-server-analysis-job-key	I	604800000	1720028066915	\N	\N	1720632866917	2	\N
10407	jira-migration-analytics-events-dispatcher-job-id	jira-migration-analytics-events-dispatcher-job-key	I	3600000	1720027766908	\N	\N	1720031366911	2	\N
10417	com.atlassian.jira.versioning.VersioningCleanupService	com.atlassian.jira.versioning.VersioningCleanupService	I	86400000	1720027773715	\N	\N	1720114173716	2	\N
10406	jira-export-errors-dispatcher-job-id	jira-export-errors-dispatcher-job-key	I	600000	1720028066902	\N	\N	1720029266907	3	\N
10423	com.codebarrel.jira.plugin.automation.schedule.RuleInsightsUpdateScheduler.DAY.job	com.codebarrel.jira.plugin.automation.schedule.RuleInsightsUpdateScheduler.DAY.scheduler	I	300000	1720027785426	\N	\N	1720028985434	5	\N
10422	com.codebarrel.jira.plugin.automation.schedule.RuleInsightsUpdateScheduler.HOUR.job	com.codebarrel.jira.plugin.automation.schedule.RuleInsightsUpdateScheduler.HOUR.scheduler	I	300000	1720027785425	\N	\N	1720028985434	5	\N
10411	data-provider-poll	com.atlassian.jira.plugin.devstatus.provider.DevSummaryUpdateJob	I	300000	1720027468540	\N	\N	1720028986324	6	\N
10421	com.codebarrel.jira.plugin.automation.schedule.RuleInsightsUpdateScheduler.MINUTE.job	com.codebarrel.jira.plugin.automation.schedule.RuleInsightsUpdateScheduler.MINUTE.scheduler	I	60000	1720027545423	\N	\N	1720028805450	22	\N
10400	ExpiredTokenPruningJob	ExpiredTokenPruningJob	C	\N	\N	0 0 0 * * ?	\N	1720051200000	1	\N
10401	DeletedUserPruningJob	DeletedUserPruningJob	C	\N	\N	0 0 0 * * ?	\N	1720051200000	1	\N
10402	AnalyticsJob	AnalyticsJob	C	\N	\N	0 0 23 * * ?	\N	1720047600000	1	\N
10403	ExpiryDateTokenCheckEventJob	ExpiryDateTokenCheckEventJob	C	\N	\N	0 0 * * * ?	\N	1720029600000	1	\N
10404	browser-metrics-job-id	com.atlassian.jira.migration.guardrails.BrowserMetricsCleanupScheduler	C	\N	\N	0 0 0 ? * SUN *	\N	1720310400000	1	\N
10405	jira-migration-user-email-analytics-events-collector-job-id	jira-migration-user-email-analytics-events-collector-job-key	C	\N	\N	0 0 1 ? * SUN *	\N	1720314000000	1	\N
10409	assertionId-cleanup	com.atlassian.plugins.authentication.impl.web.saml.SamlAssertionValidationService	I	3600000	1720031067492	\N	\N	1720031067492	1	\N
10410	analytics-collection	com.atlassian.plugins.authentication.impl.analytics.ClusterWideStatisticsCollectionService	C	\N	\N	0 0 23 * * ?	\N	1720047600000	1	\N
10413	com.atlassian.audit.retention.RetentionJobRunner	com.atlassian.audit.retention.RetentionJobRunner	C	\N	\N	0 0 0 1/1 * ? *	\N	1720051200000	1	\N
10414	com.atlassian.audit.schedule.db.limit.DbLimiterJobRunner	com.atlassian.audit.schedule.db.limit.DbLimiterJobRunner	I	3600000	1720031069834	\N	\N	1720031069834	1	\N
10415	com.atlassian.diagnostics.internal.analytics.DailyAlertAnalyticsJob	DailyAlertAnalyticsJob	C	\N	\N	0 19 * * * ?	\N	1720030740000	1	\N
10416	com.atlassian.jira.web.action.issue.DefaultTemporaryWebAttachmentsMonitor	com.atlassian.jira.web.action.issue.DefaultTemporaryWebAttachmentsMonitor	I	3600000	1720031073709	\N	\N	1720031073709	1	\N
10418	com.atlassian.jira.issue.fields.usage.CustomFieldUsageRecalculationJob	com.atlassian.jira.issue.fields.usage.CustomFieldUsageRecalculationJob	C	\N	\N	0 0 3 * * ?	\N	1720062000000	1	\N
10425	com.atlassian.oauth2.client.analytics.StatisticsCollectionService	StatisticsCollectionService	C	\N	\N	0 0 23 * * ?	\N	1720047600000	1	\N
10426	com.atlassian.oauth2.provider.core.jobs.StatisticsJob	StatisticsJob	C	\N	\N	0 0 23 * * ?	\N	1720047600000	1	\N
10427	com.atlassian.whisper.plugin.fetch.FetchJob	com.atlassian.whisper.plugin.fetch.FetchJob	I	21600000	1720031085434	\N	\N	1720031085434	1	\N
10428	com.codebarrel.jira.plugin.automation.schedule.RuleInsightsExpiryScheduler.job	com.codebarrel.jira.plugin.automation.schedule.RuleInsightsExpiryScheduler.scheduler	C	\N	\N	0 0 0 * * ? *	\N	1720051200000	1	\N
10429	com.atlassian.jira.plugins.inform.events.cleanup.CleanupJobScheduler	com.atlassian.jira.plugins.inform.events.cleanup.CleanupJobScheduler	C	\N	\N	0 0 0 1/1 * ? *	\N	1720051200000	1	\N
10412	data-provider-cleanup	com.atlassian.jira.plugin.devstatus.provider.DataProviderCleanupJob	I	1800000	1720027468629	\N	\N	1720029286321	2	\N
10420	com.atlassian.greenhopper.manager.lexorank.LexoRankCleanupScheduler	com.atlassian.greenhopper.manager.lexorank.LexoRankCleanupScheduler	I	1800000	1720027474672	\N	\N	1720029286409	2	\N
10432	com.atlassian.oauth2.client.jobs.TokenPruningJob	TokenPruningJob	C	\N	\N	0 0 23 * * ?	\N	1720047600000	1	\N
10434	com.atlassian.jira.analytics.scheduler.AnalyticsScheduler	com.atlassian.jira.analytics.scheduler.AnalyticsScheduler	I	86400000	1720113885575	\N	\N	1720113885575	1	\N
10435	TruncateAlertsJobRunner	com.atlassian.diagnostics.internal.DefaultMonitoringService$TruncateAlertsJobRunner	I	86400000	1720113885906	\N	\N	1720113885906	1	\N
10437	Service Provider Session Remover	com.atlassian.oauth.serviceprovider.internal.ExpiredSessionRemover	I	28800000	1720056286121	\N	\N	1720056286121	1	\N
10439	OidcDiscoveryRefresh	com.atlassian.plugins.authentication.impl.web.oidc.OidcDiscoveryRefreshJob-refresh	C	\N	\N	0 0 1 * * ?	\N	1720054800000	1	\N
10442	com.atlassian.oauth2.provider.core.jobs.RemoveExpiredTokensJob	RemoveExpiredTokensJob	C	\N	\N	0 0 * * * ?	\N	1720029600000	1	\N
10443	com.atlassian.oauth2.provider.core.jobs.RemoveExpiredAuthorizationsJob	RemoveExpiredAuthorizationsJob	C	\N	\N	0 0 * * * ?	\N	1720029600000	1	\N
10436	applink-status-analytics-job	com.atlassian.applinks.analytics.ApplinkStatusJob	I	86400000	\N	\N	\N	1720113886467	2	\N
10446	com.atlassian.crowd.manager.directory.monitor.DirectoryMonitorRefresherStarter-job	com.atlassian.crowd.manager.directory.monitor.DirectoryMonitorRefresherJob-runner	I	120000	\N	\N	\N	1720028806492	12	\N
10431	com.atlassian.jira.plugins.inform.batching.cron.BatchNotificationJobSchedulerImpl	com.atlassian.jira.plugins.inform.batching.cron.BatchNotificationJobSchedulerImpl	I	60000	1720027545450	\N	\N	1720028805537	22	\\xaced000573720035636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c654d61702453657269616c697a6564466f726d00000000000000000200024c00046b6579737400124c6a6176612f6c616e672f4f626a6563743b4c000676616c75657371007e00017870757200135b4c6a6176612e6c616e672e4f626a6563743b90ce589f1073296c0200007870000000027400116576656e74436f6e73756d65724e616d6574000d636c75737465724c6f636b49647571007e0003000000027400116d61696c4576656e74436f6e73756d6572740059636f6d2e61746c61737369616e2e6a6972612e706c7567696e732e696e666f726d2e6261746368696e672e63726f6e2e4f6e6365506572436c75737465724a6f6252756e6e65722e6d61696c4576656e74436f6e73756d6572
10444	HistoryCleanupJob	com.atlassian.ratelimiting.internal.history.HistoryCleanupJob	I	86400000	1720027556251	\N	\N	1720113956253	2	\N
10440	com.codebarrel.jira.plugin.automation.schedule.RulePollerServiceLauncher.job	com.codebarrel.jira.plugin.automation.schedule.RulePollerServiceLauncher.scheduler	I	60000	1720027546170	\N	\N	1720028806202	22	\N
10445	com.codebarrel.jira.plugin.automation.schedule.RuleScheduleServiceLauncher.job	com.codebarrel.jira.plugin.automation.schedule.RuleScheduleServiceLauncher.scheduler	I	60000	1720027546257	\N	\N	1720028806282	22	\N
10441	com.atlassian.jira.plugin.ext.bamboo.service.PlanStatusUpdateJob-job	com.atlassian.jira.plugin.ext.bamboo.service.PlanStatusUpdateJob	I	60000	1720027486190	\N	\N	1720028806500	23	\N
10433	com.atlassian.jira.plugins.dvcs.scheduler.DvcsScheduler:job	com.atlassian.jira.plugins.dvcs.scheduler.DvcsScheduler	I	3600000	1720028385529	\N	\N	1720031985531	2	\N
\.


--
-- Data for Name: clusterlockstatus; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.clusterlockstatus (id, lock_name, locked_by_node, update_time) FROM stdin;
\.


--
-- Data for Name: clustermessage; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.clustermessage (id, source_node, destination_node, claimed_by_node, message, message_time) FROM stdin;
\.


--
-- Data for Name: clusternode; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.clusternode (node_id, node_state, "timestamp", ip, cache_listener_port, node_build_number, node_version) FROM stdin;
\.


--
-- Data for Name: clusternodeheartbeat; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.clusternodeheartbeat (node_id, heartbeat_time, database_time) FROM stdin;
\.


--
-- Data for Name: clusterupgradestate; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.clusterupgradestate (id, database_time, cluster_build_number, cluster_version, state, order_number) FROM stdin;
\.


--
-- Data for Name: columnlayout; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.columnlayout (id, username, searchrequest) FROM stdin;
10000	\N	\N
\.


--
-- Data for Name: columnlayoutitem; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.columnlayoutitem (id, columnlayout, fieldidentifier, horizontalposition) FROM stdin;
10000	10000	issuekey	0
10001	10000	status	1
10002	10000	created	2
10003	10000	updated	3
10004	10000	customfield_10000	4
\.


--
-- Data for Name: comment_pin; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.comment_pin (id, issue_id, comment_id, pinned_by, pinned_date) FROM stdin;
\.


--
-- Data for Name: comment_reaction; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.comment_reaction (id, comment_id, author, emoticon, created_date) FROM stdin;
\.


--
-- Data for Name: comment_version; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.comment_version (comment_id, parent_issue_id, update_time, index_version, deleted) FROM stdin;
\.


--
-- Data for Name: component; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.component (id, project, cname, description, url, lead, assigneetype, archived, deleted) FROM stdin;
\.


--
-- Data for Name: configurationcontext; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.configurationcontext (id, projectcategory, project, customfield, fieldconfigscheme) FROM stdin;
10000	\N	\N	issuetype	10000
10100	\N	\N	customfield_10000	10100
10101	\N	\N	priority	10101
10200	\N	\N	customfield_10100	10200
10201	\N	\N	customfield_10101	10201
10202	\N	\N	customfield_10105	10202
10203	\N	\N	customfield_10103	10203
10204	\N	\N	customfield_10102	10204
10205	\N	\N	customfield_10104	10205
10206	\N	\N	customfield_10106	10206
10207	\N	\N	customfield_10107	10207
10208	\N	\N	customfield_10108	10208
10209	\N	\N	customfield_10109	10209
10210	\N	\N	customfield_10110	10210
10211	\N	\N	customfield_10111	10211
10212	\N	10000	issuetype	10212
\.


--
-- Data for Name: customfield; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.customfield (id, cfkey, customfieldtypekey, customfieldsearcherkey, cfname, description, defaultvalue, fieldtype, project, issuetype, issueswithvalue, lastvalueupdate) FROM stdin;
10000	\N	com.atlassian.jira.plugins.jira-development-integration-plugin:devsummary	com.atlassian.jira.plugins.jira-development-integration-plugin:devsummarysearcher	Development	Development Summary Field for Jira Software use only.	\N	\N	\N	\N	\N	\N
10100	\N	com.pyxis.greenhopper.jira:gh-lexo-rank	com.pyxis.greenhopper.jira:gh-lexo-rank-searcher	Rank	Global rank field for Jira Software use only.	\N	\N	\N	\N	\N	\N
10101	\N	com.pyxis.greenhopper.jira:gh-epic-link	com.pyxis.greenhopper.jira:gh-epic-link-searcher	Epic Link	Choose an epic to assign this issue to.	\N	\N	\N	\N	\N	\N
10102	\N	com.pyxis.greenhopper.jira:gh-epic-status	com.pyxis.greenhopper.jira:gh-epic-status-searcher	Epic Status	Epic Status field for Jira Software use only.	\N	\N	\N	\N	\N	\N
10103	\N	com.pyxis.greenhopper.jira:gh-epic-label	com.pyxis.greenhopper.jira:gh-epic-label-searcher	Epic Name	Provide a short name to identify this epic.	\N	\N	\N	\N	\N	\N
10104	\N	com.pyxis.greenhopper.jira:gh-epic-color	com.pyxis.greenhopper.jira:gh-epic-color-searcher	Epic Colour	Epic Colour field for Jira Software use only.	\N	\N	\N	\N	\N	\N
10105	\N	com.pyxis.greenhopper.jira:gh-sprint	com.pyxis.greenhopper.jira:gh-sprint-searcher	Sprint	Jira Software sprint field	\N	\N	\N	\N	\N	\N
10106	\N	com.atlassian.jira.plugin.system.customfieldtypes:float	com.atlassian.jira.plugin.system.customfieldtypes:exactnumber	Story Points	Measurement of complexity and/or size of a requirement.	\N	\N	\N	\N	\N	\N
10107	\N	com.atlassian.teams:rm-teams-custom-field-team	com.atlassian.teams:rm-teams-custom-field-team-searcher	Team	\N	\N	\N	\N	\N	\N	\N
10108	\N	com.atlassian.jpo:jpo-custom-field-parent	com.atlassian.jpo:jpo-custom-field-parent-searcher	Parent Link	\N	\N	\N	\N	\N	\N	\N
10111	\N	com.atlassian.jpo:jpo-custom-field-original-story-points	com.atlassian.jpo:jpo-custom-field-original-story-points-searcher	Original story points	\N	\N	\N	\N	\N	\N	\N
10109	\N	com.atlassian.jpo:jpo-custom-field-baseline-start	com.atlassian.jpo:jpo-custom-field-baseline-start-searcher	Target start	The targeted start date. This custom field is created and required by Advanced Roadmaps for Jira.	\N	\N	\N	\N	\N	\N
10110	\N	com.atlassian.jpo:jpo-custom-field-baseline-end	com.atlassian.jpo:jpo-custom-field-baseline-end-searcher	Target end	The targeted end date. This custom field is created and required by Advanced Roadmaps for Jira.	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: customfieldoption; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.customfieldoption (id, customfield, customfieldconfig, parentoptionid, sequence, customvalue, optiontype, disabled) FROM stdin;
10000	10102	10204	\N	0	To Do	\N	N
10001	10102	10204	\N	1	In Progress	\N	N
10002	10102	10204	\N	2	Done	\N	N
\.


--
-- Data for Name: customfieldvalue; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.customfieldvalue (id, issue, customfield, updated, parentkey, stringvalue, numbervalue, textvalue, datevalue, valuetype) FROM stdin;
\.


--
-- Data for Name: cwd_application; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.cwd_application (id, application_name, lower_application_name, created_date, updated_date, active, description, application_type, credential) FROM stdin;
1	crowd-embedded	crowd-embedded	2013-02-28 11:57:51.302+00	2013-02-28 11:57:51.302+00	1		CROWD	X
\.


--
-- Data for Name: cwd_application_address; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.cwd_application_address (application_id, remote_address, encoded_address_binary, remote_address_mask) FROM stdin;
\.


--
-- Data for Name: cwd_directory; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.cwd_directory (id, directory_name, lower_directory_name, created_date, updated_date, active, description, impl_class, lower_impl_class, directory_type, directory_position) FROM stdin;
1	Jira Internal Directory	jira internal directory	2013-02-28 11:57:51.308+00	2013-02-28 11:57:51.308+00	1	Jira default internal directory	com.atlassian.crowd.directory.InternalDirectory	com.atlassian.crowd.directory.internaldirectory	INTERNAL	0
\.


--
-- Data for Name: cwd_directory_attribute; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.cwd_directory_attribute (directory_id, attribute_name, attribute_value) FROM stdin;
1	user_encryption_method	atlassian-security
\.


--
-- Data for Name: cwd_directory_operation; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.cwd_directory_operation (directory_id, operation_type) FROM stdin;
1	CREATE_GROUP
1	CREATE_ROLE
1	CREATE_USER
1	DELETE_GROUP
1	DELETE_ROLE
1	DELETE_USER
1	UPDATE_GROUP
1	UPDATE_GROUP_ATTRIBUTE
1	UPDATE_ROLE
1	UPDATE_ROLE_ATTRIBUTE
1	UPDATE_USER
1	UPDATE_USER_ATTRIBUTE
\.


--
-- Data for Name: cwd_group; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.cwd_group (id, group_name, lower_group_name, active, local, created_date, updated_date, description, lower_description, group_type, directory_id, external_id) FROM stdin;
10000	jira-administrators	jira-administrators	1	0	2013-02-28 11:57:51.326+00	2013-02-28 11:57:51.326+00		\N	GROUP	1	\N
10010	jira-software-users	jira-software-users	1	0	2024-07-02 22:37:08.408+00	2024-07-02 22:37:08.408+00	\N	\N	GROUP	1	\N
\.


--
-- Data for Name: cwd_group_attributes; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.cwd_group_attributes (id, group_id, directory_id, attribute_name, attribute_value, lower_attribute_value) FROM stdin;
\.


--
-- Data for Name: cwd_membership; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.cwd_membership (id, parent_id, child_id, membership_type, group_type, parent_name, lower_parent_name, child_name, lower_child_name, directory_id) FROM stdin;
10000	10000	10000	GROUP_USER	\N	jira-administrators	jira-administrators	admin	admin	1
10001	10010	10000	GROUP_USER	\N	jira-software-users	jira-software-users	admin	admin	1
10100	10010	10100	GROUP_USER	\N	jira-software-users	jira-software-users	member	member	1
\.


--
-- Data for Name: cwd_synchronisation_status; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.cwd_synchronisation_status (id, directory_id, node_id, sync_start, sync_end, sync_status, status_parameters) FROM stdin;
\.


--
-- Data for Name: cwd_synchronisation_token; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.cwd_synchronisation_token (directory_id, sync_status_token) FROM stdin;
\.


--
-- Data for Name: cwd_user; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.cwd_user (id, directory_id, user_name, lower_user_name, active, created_date, updated_date, first_name, lower_first_name, last_name, lower_last_name, display_name, lower_display_name, email_address, lower_email_address, credential, deleted_externally, external_id) FROM stdin;
10100	1	member	member	1	2024-07-03 17:43:35.826+00	2024-07-03 17:43:35.872+00			member	member	member	member	member@example.com	member@example.com	{PKCS5S2}Is5HnspWkINFJPde9jBe3eM/CsSPNitNKv5qnyMfjP+xaqKdvSSWgwBmCIzH/1qL	\N	af1ac11f-aabc-4734-8efe-748344947398
10000	1	admin	admin	1	2024-07-02 22:37:57.095+00	2024-07-03 17:45:04.398+00			admin	admin	admin	admin	admin@example.com	admin@example.com	{PKCS5S2}DAL0CVKYakjsjdFcMoOLDje5K+PmE+uTrLcu2VEBhAgRjMEiuZbnQqjP+eZaSb1y	\N	491d7af2-e24c-4b25-a9e8-2e8c3b1d9242
\.


--
-- Data for Name: cwd_user_attributes; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.cwd_user_attributes (id, user_id, directory_id, attribute_name, attribute_value, lower_attribute_value) FROM stdin;
10000	10000	1	requiresPasswordChange	false	false
10001	10000	1	invalidPasswordAttempts	0	0
10002	10000	1	passwordLastChanged	1719959877180	1719959877180
10003	10000	1	password.reset.request.expiry	1720046277433	1720046277433
10004	10000	1	password.reset.request.token	eef2693f9e56f231f82c71e06f2ff07a3bb581e5	eef2693f9e56f231f82c71e06f2ff07a3bb581e5
10100	10000	1	login.currentFailedCount	0	0
10200	10000	1	lastAuthenticated	1720028529665	1720028529665
10300	10100	1	requiresPasswordChange	false	false
10301	10100	1	invalidPasswordAttempts	0	0
10302	10100	1	passwordLastChanged	1720028615838	1720028615838
10303	10100	1	password.reset.request.expiry	1720115015867	1720115015867
10304	10100	1	password.reset.request.token	4ac9216bb27806418bef96231fb097d7177f2fdb	4ac9216bb27806418bef96231fb097d7177f2fdb
10305	10100	1	com.atlassian.jira.dvcs.invite.groups	 	 
10101	10000	1	login.lastLoginMillis	1720028704380	1720028704380
10201	10000	1	login.previousLoginMillis	1720028678850	1720028678850
10102	10000	1	login.count	54	54
\.


--
-- Data for Name: deadletter; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.deadletter (id, message_id, last_seen, mail_server_id, folder_name) FROM stdin;
\.


--
-- Data for Name: draftworkflowscheme; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.draftworkflowscheme (id, name, description, workflow_scheme_id, last_modified_date, last_modified_user) FROM stdin;
\.


--
-- Data for Name: draftworkflowschemeentity; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.draftworkflowschemeentity (id, scheme, workflow, issuetype) FROM stdin;
\.


--
-- Data for Name: entity_property; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.entity_property (id, entity_name, entity_id, property_key, created, updated, json_value) FROM stdin;
10000	ProjectProperty	10000	searchRequests	2024-07-02 22:38:59.444+00	2024-07-02 22:38:59.444+00	{"ids":[]}
\.


--
-- Data for Name: entity_property_index_document; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.entity_property_index_document (id, plugin_key, module_key, entity_key, updated, document) FROM stdin;
10000	com.atlassian.jira.plugins.jira-development-integration-plugin	jira-issue-fusion-jql	IssueProperty	2024-07-02 22:35:12.428+00	<?xml version="1.0" encoding="UTF-8"?>\n<index-document-configuration entity-key="IssueProperty"><key property-key="development"><extract path="totalBuilds" type="NUMBER"/><extract path="failingbuilds" type="NUMBER"/><extract path="passedbuilds" type="NUMBER"/><extract path="buildstatus" type="STRING"/><extract path="openprs" type="NUMBER"/><extract path="mergedprs" type="NUMBER"/><extract path="declinedprs" type="NUMBER"/><extract path="prs" type="NUMBER"/><extract path="prstatus" type="STRING"/><extract path="reviews" type="NUMBER"/><extract path="openreviews" type="NUMBER"/><extract path="commits" type="NUMBER"/><extract path="totalDeployments" type="NUMBER"/><extract path="deployed" type="NUMBER"/><extract path="notDeployed" type="NUMBER"/><extract path="environment" type="STRING"/><extract path="totalBranches" type="NUMBER"/></key></index-document-configuration>
10001	com.atlassian.teams	rm-teams-properties-indexing	IssueProperty	2024-07-02 22:35:12.433+00	<?xml version="1.0" encoding="UTF-8"?>\n<index-document-configuration entity-key="IssueProperty"><key property-key="jpo-issue-properties"><extract path="team_id" type="STRING"/></key></index-document-configuration>
10002	com.atlassian.jpo	jpo-properties-indexing	IssueProperty	2024-07-02 22:35:12.434+00	<?xml version="1.0" encoding="UTF-8"?>\n<index-document-configuration entity-key="IssueProperty"><key property-key="jpo-exclude-from-plan"><extract path="plans" type="TEXT"/></key><key property-key="jpo-issue-properties"><extract path="parent_id" type="STRING"/><extract path="resources" type="TEXT"/><extract path="themes" type="TEXT"/><extract path="later_release" type="STRING"/><extract path="distribution" type="TEXT"/><extract path="original_distribution" type="TEXT"/><extract path="original_story_points" type="STRING"/><extract path="baseline_start" type="NUMBER"/><extract path="baseline_end" type="NUMBER"/></key></index-document-configuration>
\.


--
-- Data for Name: entity_translation; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.entity_translation (id, entity_name, entity_id, locale, trans_name, trans_desc) FROM stdin;
\.


--
-- Data for Name: external_entities; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.external_entities (id, name, entitytype) FROM stdin;
\.


--
-- Data for Name: externalgadget; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.externalgadget (id, gadget_xml) FROM stdin;
\.


--
-- Data for Name: favouriteassociations; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.favouriteassociations (id, username, entitytype, entityid, sequence) FROM stdin;
\.


--
-- Data for Name: feature; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.feature (id, feature_name, feature_type, user_key) FROM stdin;
10001	com.atlassian.jira.projects.issuenavigator	site	
10000	com.atlassian.jira.projects.ProjectCentricNavigation.Switch	site	
10100	mail.batching.enabled	site	\N
10101	com.atlassian.jira.agile.darkfeature.kanplan.enabled	site	
10102	com.atlassian.jira.agile.darkfeature.kanplan.epics.and.versions.enabled	site	
10103	com.atlassian.jira.agile.darkfeature.sprint.goal.enabled	site	
10104	com.atlassian.jira.agile.darkfeature.edit.closed.sprint.enabled	site	
10105	com.atlassian.jira.agile.darkfeature.splitissue	site	
\.


--
-- Data for Name: fieldconfigscheme; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.fieldconfigscheme (id, configname, description, fieldid, customfield) FROM stdin;
10000	Default Issue Type Scheme	Default issue type scheme is the list of global issue types. All newly created issue types will automatically be added to this scheme.	issuetype	\N
10100	Default context for Development	Default context generated by Jira	customfield_10000	\N
10101	Default priority scheme	This is default priority scheme used by all projects without any other scheme assigned	priority	\N
10200	Default context for Rank	Default context generated by Jira	customfield_10100	\N
10201	Default context for Epic Link	Default context generated by Jira	customfield_10101	\N
10202	Default context for Sprint	Default context generated by Jira	customfield_10105	\N
10203	Default context for Epic Name	Default context generated by Jira	customfield_10103	\N
10204	Default context for Epic Status	Default context generated by Jira	customfield_10102	\N
10205	Default context for Epic Colour	Default context generated by Jira	customfield_10104	\N
10206	Default context for Story Points	Default context generated by Jira	customfield_10106	\N
10207	Default context for Team	Default context generated by Jira	customfield_10107	\N
10208	Default context for Parent Link	Default context generated by Jira	customfield_10108	\N
10209	Default context for Target start	Default context generated by Jira	customfield_10109	\N
10210	Default context for Target end	Default context generated by Jira	customfield_10110	\N
10211	Default context for Original story points	Default context generated by Jira	customfield_10111	\N
10212	TEST: Kanban Issue Type Scheme	\N	issuetype	\N
\.


--
-- Data for Name: fieldconfigschemeissuetype; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.fieldconfigschemeissuetype (id, issuetype, fieldconfigscheme, fieldconfiguration) FROM stdin;
10100	\N	10000	10000
10200	\N	10100	10100
10201	\N	10101	10101
10300	\N	10200	10200
10301	\N	10201	10201
10302	\N	10202	10202
10303	10000	10203	10203
10304	10000	10204	10204
10305	10000	10205	10205
10306	10000	10206	10206
10307	10001	10206	10206
10308	\N	10207	10207
10309	\N	10208	10208
10310	\N	10209	10209
10311	\N	10210	10210
10312	\N	10211	10211
10315	\N	10212	10212
\.


--
-- Data for Name: fieldconfiguration; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.fieldconfiguration (id, configname, description, fieldid, customfield) FROM stdin;
10000	Default Configuration for Issue Type	Default configuration generated by Jira	issuetype	\N
10100	Default Configuration for Development	Default configuration generated by Jira	customfield_10000	\N
10101	Default configuration for priority	Default configuration generated by Jira	priority	\N
10200	Default Configuration for Rank	Default configuration generated by JIRA	customfield_10100	\N
10201	Default Configuration for Epic Link	Default configuration generated by JIRA	customfield_10101	\N
10202	Default Configuration for Sprint	Default configuration generated by JIRA	customfield_10105	\N
10203	Default Configuration for Epic Name	Default configuration generated by JIRA	customfield_10103	\N
10204	Default Configuration for Epic Status	Default configuration generated by JIRA	customfield_10102	\N
10205	Default Configuration for Epic Colour	Default configuration generated by JIRA	customfield_10104	\N
10206	Default Configuration for Story Points	Default configuration generated by JIRA	customfield_10106	\N
10207	Default Configuration for Team	Default configuration generated by JIRA	customfield_10107	\N
10208	Default Configuration for Parent Link	Default configuration generated by JIRA	customfield_10108	\N
10209	Default Configuration for Target start	Default configuration generated by JIRA	customfield_10109	\N
10210	Default Configuration for Target end	Default configuration generated by JIRA	customfield_10110	\N
10211	Default Configuration for Original story points	Default configuration generated by JIRA	customfield_10111	\N
10212	Default Configuration for Issue Type	Default configuration generated by JIRA	issuetype	\N
\.


--
-- Data for Name: fieldlayout; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.fieldlayout (id, name, description, layout_type, layoutscheme) FROM stdin;
10000	Default Field Configuration	The default field configuration	default	\N
\.


--
-- Data for Name: fieldlayoutitem; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.fieldlayoutitem (id, fieldlayout, fieldidentifier, description, verticalposition, ishidden, isrequired, renderertype) FROM stdin;
10122	10000	archivedby	\N	\N	false	false	jira-text-renderer
10123	10000	archiveddate	\N	\N	false	false	jira-text-renderer
10124	10000	customfield_10000	Development Summary Field for Jira Software use only.	\N	false	false	jira-text-renderer
10125	10000	summary	\N	\N	false	true	jira-text-renderer
10126	10000	issuetype	\N	\N	false	true	jira-text-renderer
10127	10000	security	\N	\N	false	false	jira-text-renderer
10128	10000	priority	\N	\N	false	false	jira-text-renderer
10129	10000	duedate	\N	\N	false	false	jira-text-renderer
10130	10000	components	\N	\N	false	false	frother-control-renderer
10131	10000	versions	\N	\N	false	false	frother-control-renderer
10132	10000	fixVersions	\N	\N	false	false	frother-control-renderer
10133	10000	assignee	\N	\N	false	false	jira-text-renderer
10134	10000	reporter	\N	\N	false	true	jira-text-renderer
10135	10000	environment	For example operating system, software platform and/or hardware specifications (include as appropriate for the issue).	\N	false	false	atlassian-wiki-renderer
10136	10000	description	\N	\N	false	false	atlassian-wiki-renderer
10137	10000	timetracking	An estimate of how much work remains until this issue will be resolved. The format of this is ' *w *d *h *m ' (representing weeks, days, hours and minutes - where * can be any number). Examples: 4d, 5h 30m, 60m and 3w.	\N	false	false	jira-text-renderer
10138	10000	resolution	\N	\N	false	false	jira-text-renderer
10139	10000	attachment	\N	\N	false	false	jira-text-renderer
10140	10000	comment	\N	\N	false	false	atlassian-wiki-renderer
10141	10000	labels	\N	\N	false	false	jira-text-renderer
10142	10000	worklog	Allows work to be logged whilst creating, editing or transitioning issues.	\N	false	false	atlassian-wiki-renderer
10143	10000	issuelinks	\N	\N	false	false	jira-text-renderer
10144	10000	customfield_10100	\N	\N	false	false	jira-text-renderer
10145	10000	customfield_10101	\N	\N	false	false	jira-text-renderer
10146	10000	customfield_10102	\N	\N	false	false	jira-text-renderer
10147	10000	customfield_10103	\N	\N	false	true	jira-text-renderer
\.


--
-- Data for Name: fieldlayoutscheme; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.fieldlayoutscheme (id, name, description) FROM stdin;
\.


--
-- Data for Name: fieldlayoutschemeassociation; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.fieldlayoutschemeassociation (id, issuetype, project, fieldlayoutscheme) FROM stdin;
\.


--
-- Data for Name: fieldlayoutschemeentity; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.fieldlayoutschemeentity (id, scheme, issuetype, fieldlayout) FROM stdin;
\.


--
-- Data for Name: fieldscreen; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.fieldscreen (id, name, description) FROM stdin;
1	Default Screen	Allows to update all system fields.
2	Workflow Screen	This screen is used in the workflow and enables you to assign issues
3	Resolve Issue Screen	Allows to set resolution, change fix versions and assign an issue.
10000	TEST: Kanban Default Issue Screen	
10001	TEST: Kanban Bug Screen	
\.


--
-- Data for Name: fieldscreenlayoutitem; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.fieldscreenlayoutitem (id, fieldidentifier, sequence, fieldscreentab, showwhenemptyindicator) FROM stdin;
10000	summary	0	10000	\N
10001	issuetype	1	10000	\N
10002	security	2	10000	\N
10003	priority	3	10000	\N
10004	duedate	4	10000	\N
10005	components	5	10000	\N
10006	versions	6	10000	\N
10007	fixVersions	7	10000	\N
10008	assignee	8	10000	\N
10009	reporter	9	10000	\N
10010	environment	10	10000	\N
10011	description	11	10000	\N
10012	timetracking	12	10000	\N
10013	attachment	13	10000	\N
10014	assignee	0	10001	\N
10015	resolution	0	10002	\N
10016	fixVersions	1	10002	\N
10017	assignee	2	10002	\N
10018	worklog	3	10002	\N
10100	labels	14	10000	\N
10212	summary	0	10101	\N
10213	issuetype	1	10101	\N
10214	reporter	2	10101	\N
10215	components	3	10101	\N
10216	description	4	10101	\N
10217	fixVersions	5	10101	\N
10218	priority	6	10101	\N
10219	labels	7	10101	\N
10220	security	8	10101	\N
10221	environment	9	10101	\N
10222	attachment	10	10101	\N
10223	versions	11	10101	\N
10224	issuelinks	12	10101	\N
10225	assignee	13	10101	\N
10226	customfield_10103	0	10100	\N
10200	summary	1	10100	\N
10201	issuetype	2	10100	\N
10202	reporter	3	10100	\N
10203	components	4	10100	\N
10204	description	5	10100	\N
10205	fixVersions	6	10100	\N
10206	priority	7	10100	\N
10207	labels	8	10100	\N
10208	security	9	10100	\N
10209	attachment	10	10100	\N
10210	issuelinks	11	10100	\N
10211	assignee	12	10100	\N
10227	customfield_10101	13	10100	\N
10228	customfield_10101	14	10101	\N
\.


--
-- Data for Name: fieldscreenscheme; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.fieldscreenscheme (id, name, description) FROM stdin;
1	Default Screen Scheme	Default Screen Scheme
10000	TEST: Kanban Default Screen Scheme	
10001	TEST: Kanban Bug Screen Scheme	
\.


--
-- Data for Name: fieldscreenschemeitem; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.fieldscreenschemeitem (id, operation, fieldscreen, fieldscreenscheme) FROM stdin;
10000	\N	1	1
10100	\N	10000	10000
10101	\N	10001	10001
\.


--
-- Data for Name: fieldscreentab; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.fieldscreentab (id, name, description, sequence, fieldscreen) FROM stdin;
10000	Field Tab	\N	0	1
10001	Field Tab	\N	0	2
10002	Field Tab	\N	0	3
10100	Field Tab	\N	0	10000
10101	Field Tab	\N	0	10001
\.


--
-- Data for Name: fileattachment; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.fileattachment (id, issueid, mimetype, filename, created, filesize, author, zip, thumbnailable) FROM stdin;
\.


--
-- Data for Name: filtersubscription; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.filtersubscription (id, filter_i_d, username, groupname, last_run, email_on_empty) FROM stdin;
\.


--
-- Data for Name: gadgetuserpreference; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.gadgetuserpreference (id, portletconfiguration, userprefkey, userprefvalue) FROM stdin;
10000	10002	isConfigured	true
10001	10003	keys	__all_projects__
10002	10003	isConfigured	true
10003	10003	title	Your Company Jira
10004	10003	numofentries	5
\.


--
-- Data for Name: genericconfiguration; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.genericconfiguration (id, datatype, datakey, xmlvalue) FROM stdin;
10000	DefaultValue	10000	<string>1</string>
10100	DefaultValue	10212	<string>10001</string>
10101	DefaultValue	10204	<long>10000</long>
\.


--
-- Data for Name: globalpermissionentry; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.globalpermissionentry (id, permission, group_id) FROM stdin;
10000	ADMINISTER	jira-administrators
10006	SYSTEM_ADMIN	jira-administrators
10100	CREATE_SHARED_OBJECTS	jira-software-users
10101	BULK_CHANGE	jira-software-users
10102	MANAGE_GROUP_FILTER_SUBSCRIPTIONS	jira-software-users
10103	USER_PICKER	jira-software-users
10104	MANAGE_GROUP_FILTER_SUBSCRIPTIONS	jira-administrators
10105	BULK_CHANGE	jira-administrators
10106	CREATE_SHARED_OBJECTS	jira-administrators
10107	USER_PICKER	jira-administrators
\.


--
-- Data for Name: groupbase; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.groupbase (id, groupname) FROM stdin;
\.


--
-- Data for Name: issue_field_option; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.issue_field_option (id, option_id, field_key, option_value, properties) FROM stdin;
\.


--
-- Data for Name: issue_field_option_scope; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.issue_field_option_scope (id, option_id, entity_id, scope_type) FROM stdin;
\.


--
-- Data for Name: issue_version; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.issue_version (issue_id, parent_issue_id, update_time, index_version, deleted) FROM stdin;
10000	\N	2024-07-02 22:39:00.152202+00	2	N
10001	\N	2024-07-02 22:39:00.171744+00	2	N
10002	\N	2024-07-02 22:39:00.186799+00	2	N
10003	\N	2024-07-02 22:39:00.198664+00	2	N
10004	\N	2024-07-02 22:39:00.211635+00	2	N
10005	\N	2024-07-02 22:39:00.22488+00	2	N
10006	\N	2024-07-02 22:39:00.237423+00	2	N
10007	\N	2024-07-02 22:39:00.249218+00	2	N
10008	\N	2024-07-02 22:39:00.260586+00	2	N
10009	\N	2024-07-02 22:39:00.271469+00	2	N
10010	\N	2024-07-02 22:39:00.282653+00	2	N
10011	\N	2024-07-02 22:39:00.294391+00	2	N
10012	\N	2024-07-02 22:39:00.306037+00	2	N
10013	\N	2024-07-02 22:39:00.317247+00	2	N
10014	\N	2024-07-02 22:39:00.32853+00	2	N
10015	\N	2024-07-02 22:39:00.33894+00	2	N
\.


--
-- Data for Name: issuelink; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.issuelink (id, linktype, source, destination, sequence) FROM stdin;
\.


--
-- Data for Name: issuelinktype; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.issuelinktype (id, linkname, inward, outward, pstyle) FROM stdin;
10100	jira_subtask_link	jira_subtask_inward	jira_subtask_outward	jira_subtask
10000	Blocks	is blocked by	blocks	\N
10001	Cloners	is cloned by	clones	\N
10002	Duplicate	is duplicated by	duplicates	\N
10003	Relates	relates to	relates to	\N
10200	Epic-Story Link	has Epic	is Epic of	jira_gh_epic_story
10201	Parent-Child Link	is child of	is parent of	jira_jpos_parent_child
\.


--
-- Data for Name: issuesecurityscheme; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.issuesecurityscheme (id, name, description, defaultlevel) FROM stdin;
\.


--
-- Data for Name: issuestatus; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.issuestatus (id, sequence, pname, description, iconurl, statuscategory) FROM stdin;
1	1	Open	The issue is open and ready for the assignee to start work on it.	/images/icons/statuses/open.png	2
3	3	In Progress	This issue is being actively worked on at the moment by the assignee.	/images/icons/statuses/inprogress.png	4
4	4	Reopened	This issue was once resolved, but the resolution was deemed incorrect. From here issues are either marked assigned or resolved.	/images/icons/statuses/reopened.png	2
5	5	Resolved	A resolution has been taken, and it is awaiting verification by reporter. From here issues are either reopened, or are closed.	/images/icons/statuses/resolved.png	3
6	6	Closed	The issue is considered finished, the resolution is correct. Issues which are closed can be reopened.	/images/icons/statuses/closed.png	3
10000	7	Backlog		/	2
10001	8	Selected for Development		/	2
10002	9	Done		/	3
\.


--
-- Data for Name: issuetype; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.issuetype (id, sequence, pname, pstyle, description, iconurl, avatar) FROM stdin;
10000	\N	Epic	\N	Created by Jira Software - do not edit or delete. Issue type for a big user story that needs to be broken down.	/images/icons/issuetypes/epic.svg	\N
10001	\N	Story	\N	Created by Jira Software - do not edit or delete. Issue type for a user story.	/images/icons/issuetypes/story.svg	\N
10002	\N	Task		A task that needs to be done.	\N	10318
10003	\N	Sub-task	jira_subtask	The sub-task of the issue	\N	10316
10004	\N	Bug		A problem which impairs or prevents the functions of the product.	\N	10303
\.


--
-- Data for Name: issuetypescreenscheme; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.issuetypescreenscheme (id, name, description) FROM stdin;
1	Default Issue Type Screen Scheme	The default issue type screen scheme
10000	TEST: Kanban Issue Type Screen Scheme	
\.


--
-- Data for Name: issuetypescreenschemeentity; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.issuetypescreenschemeentity (id, issuetype, scheme, fieldscreenscheme) FROM stdin;
10000	\N	1	1
10100	\N	10000	10000
10101	10004	10000	10001
\.


--
-- Data for Name: jiraaction; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.jiraaction (id, issueid, author, actiontype, actionlevel, rolelevel, actionbody, created, updateauthor, updated, actionnum) FROM stdin;
10000	10000	JIRAUSER10000	comment	\N	\N	Created 2 hours 36 minutes ago	2024-07-02 20:02:59.483+00	JIRAUSER10000	2024-07-02 20:02:59.483+00	\N
10001	10001	JIRAUSER10000	comment	\N	\N	Created 1 days ago\r\nBacklog to Selected for Development 5 hours 12 minutes ago	2024-07-02 17:26:59.483+00	JIRAUSER10000	2024-07-02 17:26:59.483+00	\N
10002	10003	JIRAUSER10000	comment	\N	\N	Created 12 days ago\r\nBacklog to Selected for Development 3 days 2 hours 5 minutes ago	2024-06-29 20:33:59.483+00	JIRAUSER10000	2024-06-29 20:33:59.483+00	\N
10003	10004	JIRAUSER10000	comment	\N	\N	Created 9 days ago	2024-06-23 22:38:59.483+00	JIRAUSER10000	2024-06-23 22:38:59.483+00	\N
10004	10005	JIRAUSER10000	comment	\N	\N	Created 8 days 10 hours ago\r\nBacklog to Selected for Development 4 days 22 hours 54 minutes ago\r\nSelected for Development to In Progress 2 days 4 hours 37 minutes ago	2024-06-30 18:01:59.483+00	JIRAUSER10000	2024-06-30 18:01:59.483+00	\N
10005	10006	JIRAUSER10000	comment	\N	\N	Created 4 days ago\r\nBacklog to Selected for Development 2 days 23 hours 14 minutes ago\r\nSelected for Development to In Progress 1 day 10 hours ago	2024-07-01 12:38:59.483+00	JIRAUSER10000	2024-07-01 12:38:59.483+00	\N
10006	10007	JIRAUSER10000	comment	\N	\N	Created 4 days ago\r\nBacklog to Selected for Development 3 days 10 minutes ago\r\nSelected for Development to In Progress 1 days 3 hours 7 minutes ago\r\nIn Progress to Done 55 minutes ago	2024-07-02 21:43:59.483+00	JIRAUSER10000	2024-07-02 21:43:59.483+00	\N
10007	10008	JIRAUSER10000	comment	\N	\N	Created 6 days ago\r\nBacklog to Selected for Development 4 days 3 hours 28 minutes ago\r\nSelected for Development to In Progress 2 days 3 hours ago\r\nIn Progress to Done 1 days 22 minutes ago	2024-07-01 22:16:59.483+00	JIRAUSER10000	2024-07-01 22:16:59.483+00	\N
10008	10009	JIRAUSER10000	comment	\N	\N	Created 8 days ago\r\nBacklog to Selected for Development 6 days 2 hours ago\r\nSelected for Development to In Progress 3 days 23 hours ago\r\nIn Progress to Done 2 days 1 hour ago	2024-06-30 21:38:59.483+00	JIRAUSER10000	2024-06-30 21:38:59.483+00	\N
10009	10010	JIRAUSER10000	comment	\N	\N	Created 10 days 4 hours 22 minutes ago\r\nBacklog to Selected for Development 7 days 18 hours 47 minutes ago\r\nSelected for Development to In Progress 6 days 6 hours 52 minutes ago \r\nIn Progress to Done 3 days 7 hours 47 minutes ago	2024-06-29 14:51:59.483+00	JIRAUSER10000	2024-06-29 14:51:59.483+00	\N
10010	10011	JIRAUSER10000	comment	\N	\N	Created 13 days 12 hours 43 minutes ago\r\nBacklog to Selected for Development 8 days 14 hours 39 minutes ago\r\nSelected for Development to In Progress 5 days 18 hours 34 minutes ago \r\nIn Progress to Done 4 days 9 hours 45 minutes ago	2024-06-28 12:53:59.484+00	JIRAUSER10000	2024-06-28 12:53:59.484+00	\N
10011	10012	JIRAUSER10000	comment	\N	\N	Created 17 days 14 hours 23 minutes ago\r\nBacklog to Selected for Development 11 days 9 hours 39 minutes ago\r\nSelected for Development to In Progress 10 days 18 hours 46 minutes ago \r\nIn Progress to Done 5 days 21 hours 28 minutes ago	2024-06-27 01:10:59.484+00	JIRAUSER10000	2024-06-27 01:10:59.484+00	\N
10012	10013	JIRAUSER10000	comment	\N	\N	Created 19 days 14 hours 8 minutes ago\r\nBacklog to Selected for Development 13 days 8 hours 14 minutes ago\r\nSelected for Development to In Progress 9 days 9 hours 11 minutes ago\r\nIn Progress to Done 7 days 18 hours 32 minutes ago	2024-06-25 04:06:59.484+00	JIRAUSER10000	2024-06-25 04:06:59.484+00	\N
10013	10014	JIRAUSER10000	comment	\N	\N	Created 16 days 6 hours 2 minutes ago\r\nBacklog to Selected for Development 11 days 6 hours 56 minutes ago\r\nSelected for Development to In Progress 8 days 7 hours 8 minutes ago\r\nIn Progress to Done 6 days 18 hours 0 minutes ago	2024-06-26 04:38:59.484+00	JIRAUSER10000	2024-06-26 04:38:59.484+00	\N
10014	10015	JIRAUSER10000	comment	\N	\N	Created 14 days 6 hours 30 minutes ago\r\nBacklog to Selected for Development 9 days 13 hours 28 minutes ago\r\nSelected for Development to In Progress 7 days 4 hours 12 minutes ago\r\nIn Progress to Done 4 days 22 hours 36 minutes ago	2024-06-28 00:02:59.484+00	JIRAUSER10000	2024-06-28 00:02:59.484+00	\N
\.


--
-- Data for Name: jiradraftworkflows; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.jiradraftworkflows (id, parentname, descriptor) FROM stdin;
\.


--
-- Data for Name: jiraeventtype; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.jiraeventtype (id, template_id, name, description, event_type) FROM stdin;
1	\N	Issue Created	This is the 'issue created' event.	jira.system.event.type
2	\N	Issue Updated	This is the 'issue updated' event.	jira.system.event.type
3	\N	Issue Assigned	This is the 'issue assigned' event.	jira.system.event.type
4	\N	Issue Resolved	This is the 'issue resolved' event.	jira.system.event.type
5	\N	Issue Closed	This is the 'issue closed' event.	jira.system.event.type
6	\N	Issue Commented	This is the 'issue commented' event.	jira.system.event.type
7	\N	Issue Reopened	This is the 'issue reopened' event.	jira.system.event.type
8	\N	Issue Deleted	This is the 'issue deleted' event.	jira.system.event.type
9	\N	Issue Moved	This is the 'issue moved' event.	jira.system.event.type
10	\N	Work Logged On Issue	This is the 'work logged on issue' event.	jira.system.event.type
11	\N	Work Started On Issue	This is the 'work started on issue' event.	jira.system.event.type
12	\N	Work Stopped On Issue	This is the 'work stopped on issue' event.	jira.system.event.type
13	\N	Generic Event	This is the 'generic event' event.	jira.system.event.type
14	\N	Issue Comment Edited	This is the 'issue comment edited' event.	jira.system.event.type
15	\N	Issue Worklog Updated	This is the 'issue worklog updated' event.	jira.system.event.type
16	\N	Issue Worklog Deleted	This is the 'issue worklog deleted' event.	jira.system.event.type
17	\N	Issue Comment Deleted	This is the 'issue comment deleted' event.	jira.system.event.type
18	\N	Issue Archived	This is the 'issue archived' event	jira.system.event.type
19	\N	Issue Restored	This is the 'issue restored' event	jira.system.event.type
\.


--
-- Data for Name: jiraissue; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.jiraissue (id, pkey, issuenum, project, reporter, assignee, creator, issuetype, summary, description, environment, priority, resolution, issuestatus, created, updated, duedate, resolutiondate, votes, watches, timeoriginalestimate, timeestimate, timespent, workflow_id, security, fixfor, component, archived, archivedby, archiveddate) FROM stdin;
10000	\N	1	10000	JIRAUSER10000	JIRAUSER10000	JIRAUSER10000	10002	Kanban cards represent work items >> Click the "TEST-1" link at the top of this card to show the Detail view - there's more on Kanban in the 'Description' section	*About Kanban*\n\n[Kanban|http://en.wikipedia.org/wiki/Kanban_(development)] is part of the Toyota Lean Manufacturing methodology but was popularised for use in IT by David Anderson. Broadly speaking it aims to optimize outcomes by: \n  - Prioritizing items that are added to the potential work list then only commencing work on items when capacity exists to take them on \n  - Tracking items in progress so that items that have started are completed before new work is taken on \n  - Ensuring that items that are in progress do not get blocked indefinitely at any particular stage of the work \n\nYou can check out many Kanban resources at http://agilemanagement.net/\n\n*To close this view of this task (called the Detail view), click the cross in the top right corner*	\N	1	\N	10000	2024-07-02 20:02:59.483+00	2024-07-02 20:02:59.483+00	\N	\N	0	0	\N	\N	\N	10000	\N	\N	\N	N	\N	\N
10001	\N	2	10000	JIRAUSER10000	JIRAUSER10000	JIRAUSER10000	10002	Kanban boards are often divided into streams of work, aka Swimlanes. By default, Kanban boards include an "Expedite" swimlane for items marked with the highest priority (like this one)	*Creating Swimlanes*\n\nYou can create your own Swimlanes for this board by editing its configuration (select *Board > Configure*)	\N	1	\N	10001	2024-07-01 22:38:59.483+00	2024-07-02 17:26:59.483+00	\N	\N	0	0	\N	\N	\N	10001	\N	\N	\N	N	\N	\N
10002	\N	3	10000	JIRAUSER10000	JIRAUSER10000	JIRAUSER10000	10004	Add work items with "+ Create Issue" at the top right of the screen >> Try adding a new card now	*Creating Issues*\n\nWhen you click "+ Create Issue" you will be asked for the correct project (select "test").	\N	3	\N	10000	2024-07-02 22:38:59.809+00	2024-07-02 22:38:59.809+00	\N	\N	0	0	\N	\N	\N	10002	\N	\N	\N	N	\N	\N
10003	\N	4	10000	JIRAUSER10000	JIRAUSER10000	JIRAUSER10000	10004	Work items are ranked in priority order (from top to bottom) >> Try dragging this card over the card below to rank its priority lower	\N	\N	3	\N	10000	2024-06-20 22:38:59.483+00	2024-06-29 20:33:59.483+00	\N	\N	0	0	\N	\N	\N	10003	\N	\N	\N	N	\N	\N
10004	\N	5	10000	JIRAUSER10000	JIRAUSER10000	JIRAUSER10000	10004	Work items flow through different stages from left to right >> Try dragging this card to "Selected for Development"	*Creating Columns*\n\nYou can also add columns to this board by editing its configuration (select *Board > Configure*)	\N	3	\N	10000	2024-06-23 22:38:59.483+00	2024-06-23 22:38:59.483+00	\N	\N	0	0	\N	\N	\N	10004	\N	\N	\N	N	\N	\N
10005	\N	6	10000	JIRAUSER10000	JIRAUSER10000	JIRAUSER10000	10004	Work In Progress (WIP) limits highlight delays. This column's limit is 1...	\N	\N	3	\N	3	2024-06-24 12:38:59.483+00	2024-06-30 18:01:59.483+00	\N	\N	0	0	\N	\N	\N	10005	\N	\N	\N	N	\N	\N
10006	\N	7	10000	JIRAUSER10000	JIRAUSER10000	JIRAUSER10000	10004	... so 2 work items violate the limit and cause the column to be highlighted	*Setting Constraints*\n\nYou can set limits (constraints) for columns on this board by editing the board's configuration (select *Board > Configure*)	\N	3	\N	3	2024-06-28 22:38:59.483+00	2024-07-01 12:38:59.483+00	\N	\N	0	0	\N	\N	\N	10006	\N	\N	\N	N	\N	\N
10007	\N	8	10000	JIRAUSER10000	JIRAUSER10000	JIRAUSER10000	10004	Filters at the top of the board allow you to quickly cut down the shown items >> Try clicking the "Recently Updated" to hide work items not updated in the past day	*Creating Quick Filters*\n\nYou can add your own Quick Filters in the board configuration (select *Board > Configure*)	\N	3	\N	10002	2024-06-28 22:38:59.483+00	2024-07-02 21:43:59.483+00	\N	\N	0	0	\N	\N	\N	10007	\N	\N	\N	N	\N	\N
10008	\N	9	10000	JIRAUSER10000	JIRAUSER10000	JIRAUSER10000	10004	As teams develop with Kanban they get better at reducing average resolution time (aka Cycle time). The Control Chart in the Reports shows this information	\N	\N	3	\N	10002	2024-06-26 22:38:59.483+00	2024-07-01 22:16:59.483+00	\N	\N	0	0	\N	\N	\N	10008	\N	\N	\N	N	\N	\N
10009	\N	10	10000	JIRAUSER10000	JIRAUSER10000	JIRAUSER10000	10001	Instructions for deleting this sample board and project are in the description for this issue >> Click the "TEST-10" link and read the description tab of the detail view for more	*To delete this Sample Project _(must be performed by a user with Administration rights)_* \n- Open the administration interface to the projects page by using the keyboard shortcut 'g' then 'g' and typing 'Projects' in to the search dialog\n- Select the "Delete" link for the "test" project\n\n*To delete the Sample Project workflow and workflow scheme _(must be performed by a user with Administration rights)_* \n- Open the administration interface to the workflow schemes page by using the keyboard shortcut 'g' then 'g' and typing 'Workflow Schemes' in to the search dialog\n- Select the "Delete" link for the "TEST: Agile Simplified Workflow Scheme" workflow scheme\n- Go to the workflows page by using the keyboard shortcut 'g' then 'g' and typing 'Workflows' in to the search dialog(_OnDemand users should select the second match for Workflows_)\n- Expand the "Inactive" section\n- Select the "Delete" link for the "Agile Simplified Workflow  for Project TEST" workflow\n\n*To delete this Board _(must be performed by the owner of this Board or an Administrator)_*\n- Click the "Tools" cog at the top right of this board\n- Select "Delete"	\N	3	\N	10002	2024-06-24 22:38:59.483+00	2024-06-30 21:38:59.483+00	\N	\N	0	0	\N	\N	\N	10009	\N	\N	\N	N	\N	\N
10010	\N	11	10000	JIRAUSER10000	JIRAUSER10000	JIRAUSER10000	10002	Issues like this one that are marked as fixed in a released version do not show up in Work mode but are included in the reports	\N	\N	3	\N	10002	2024-06-22 18:16:59.483+00	2024-06-29 14:51:59.483+00	\N	\N	0	0	\N	\N	\N	10010	\N	\N	\N	N	\N	\N
10011	\N	12	10000	JIRAUSER10000	JIRAUSER10000	JIRAUSER10000	10002	Issues like this one that are marked as fixed in a released version do not show up in Work mode but are included in the reports	\N	\N	3	\N	10002	2024-06-19 09:55:59.484+00	2024-06-28 12:53:59.484+00	\N	\N	0	0	\N	\N	\N	10011	\N	\N	\N	N	\N	\N
10012	\N	13	10000	JIRAUSER10000	JIRAUSER10000	JIRAUSER10000	10002	Issues like this one that are marked as fixed in a released version do not show up in Work mode but are included in the reports	\N	\N	3	\N	10002	2024-06-15 08:15:59.484+00	2024-06-27 01:10:59.484+00	\N	\N	0	0	\N	\N	\N	10012	\N	\N	\N	N	\N	\N
10013	\N	14	10000	JIRAUSER10000	JIRAUSER10000	JIRAUSER10000	10002	Issues like this one that are marked as fixed in a released version do not show up in Work mode but are included in the reports	\N	\N	3	\N	10002	2024-06-13 08:30:59.484+00	2024-06-25 04:06:59.484+00	\N	\N	0	0	\N	\N	\N	10013	\N	\N	\N	N	\N	\N
10014	\N	15	10000	JIRAUSER10000	JIRAUSER10000	JIRAUSER10000	10002	Issues like this one that are marked as fixed in a released version do not show up in Work mode but are included in the reports	\N	\N	3	\N	10002	2024-06-16 16:36:59.484+00	2024-06-26 04:38:59.484+00	\N	\N	0	0	\N	\N	\N	10014	\N	\N	\N	N	\N	\N
10015	\N	16	10000	JIRAUSER10000	JIRAUSER10000	JIRAUSER10000	10002	Issues like this one that are marked as fixed in a released version do not show up in Work mode but are included in the reports	\N	\N	3	\N	10002	2024-06-18 16:08:59.484+00	2024-06-28 00:02:59.484+00	\N	\N	0	0	\N	\N	\N	10015	\N	\N	\N	N	\N	\N
\.


--
-- Data for Name: jiraperms; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.jiraperms (id, permtype, projectid, groupname) FROM stdin;
\.


--
-- Data for Name: jiraworkflows; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.jiraworkflows (id, workflowname, creatorname, descriptor, islocked) FROM stdin;
10000	classic default workflow	\N	<?xml version="1.0" encoding="UTF-8"?>\n<!DOCTYPE workflow PUBLIC "-//OpenSymphony Group//DTD OSWorkflow 2.8//EN" "http://www.opensymphony.com/osworkflow/workflow_2_8.dtd">\n<workflow>\n  <meta name="jira.description">The classic Jira default workflow</meta>\n  <initial-actions>\n    <action id="1" name="Create Issue">\n      <meta name="opsbar-sequence">0</meta>\n      <meta name="jira.i18n.title">common.forms.create</meta>\n      <validators>\n        <validator name="" type="class">\n          <arg name="class.name">com.atlassian.jira.workflow.validator.PermissionValidator</arg>\n          <arg name="permission">Create Issue</arg>\n        </validator>\n      </validators>\n      <results>\n        <unconditional-result old-status="Finished" status="Open" step="1">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueCreateFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name="eventTypeId">1</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n  </initial-actions>\n  <common-actions>\n    <action id="2" name="Close Issue" view="resolveissue">\n      <meta name="opsbar-sequence">60</meta>\n      <meta name="jira.i18n.submit">closeissue.close</meta>\n      <meta name="jira.i18n.description">closeissue.desc</meta>\n      <meta name="jira.i18n.title">closeissue.title</meta>\n      <restrict-to>\n        <conditions type="AND">\n          <condition type="class">\n            <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n            <arg name="permission">Resolve Issue</arg>\n          </condition>\n          <condition type="class">\n            <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n            <arg name="permission">Close Issue</arg>\n          </condition>\n        </conditions>\n      </restrict-to>\n      <results>\n        <unconditional-result old-status="Finished" status="Closed" step="6">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name="eventTypeId">5</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n    <action id="3" name="Reopen Issue" view="commentassign">\n      <meta name="opsbar-sequence">80</meta>\n      <meta name="jira.i18n.submit">issue.operations.reopen.issue</meta>\n      <meta name="jira.i18n.description">issue.operations.reopen.description</meta>\n      <meta name="jira.i18n.title">issue.operations.reopen.issue</meta>\n      <restrict-to>\n        <conditions>\n          <condition type="class">\n            <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n            <arg name="permission">Resolve Issue</arg>\n          </condition>\n        </conditions>\n      </restrict-to>\n      <results>\n        <unconditional-result old-status="Finished" status="Reopened" step="5">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n              <arg name="field.value"></arg>\n              <arg name="field.name">resolution</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name="eventTypeId">7</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n    <action id="4" name="Start Progress">\n      <meta name="opsbar-sequence">20</meta>\n      <meta name="jira.i18n.title">startprogress.title</meta>\n      <restrict-to>\n        <conditions>\n          <condition type="class">\n            <arg name="class.name">com.atlassian.jira.workflow.condition.AllowOnlyAssignee</arg>\n          </condition>\n        </conditions>\n      </restrict-to>\n      <results>\n        <unconditional-result old-status="Finished" status="Underway" step="3">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n              <arg name="field.value"></arg>\n              <arg name="field.name">resolution</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name="eventTypeId">11</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n    <action id="5" name="Resolve Issue" view="resolveissue">\n      <meta name="opsbar-sequence">40</meta>\n      <meta name="jira.i18n.submit">resolveissue.resolve</meta>\n      <meta name="jira.i18n.description">resolveissue.desc.line1</meta>\n      <meta name="jira.i18n.title">resolveissue.title</meta>\n      <restrict-to>\n        <conditions>\n          <condition type="class">\n            <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n            <arg name="permission">Resolve Issue</arg>\n          </condition>\n        </conditions>\n      </restrict-to>\n      <results>\n        <unconditional-result old-status="Finished" status="Resolved" step="4">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name="eventTypeId">4</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n  </common-actions>\n  <steps>\n    <step id="1" name="Open">\n      <meta name="jira.status.id">1</meta>\n      <actions>\n<common-action id="4" />\n<common-action id="5" />\n<common-action id="2" />\n      </actions>\n    </step>\n    <step id="3" name="In Progress">\n      <meta name="jira.status.id">3</meta>\n      <actions>\n<common-action id="5" />\n<common-action id="2" />\n        <action id="301" name="Stop Progress">\n          <meta name="opsbar-sequence">20</meta>\n          <meta name="jira.i18n.title">stopprogress.title</meta>\n          <restrict-to>\n            <conditions>\n              <condition type="class">\n                <arg name="class.name">com.atlassian.jira.workflow.condition.AllowOnlyAssignee</arg>\n              </condition>\n            </conditions>\n          </restrict-to>\n          <results>\n            <unconditional-result old-status="Finished" status="Assigned" step="1">\n              <post-functions>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n                  <arg name="field.value"></arg>\n                  <arg name="field.name">resolution</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n                  <arg name="eventTypeId">12</arg>\n                </function>\n              </post-functions>\n            </unconditional-result>\n          </results>\n        </action>\n      </actions>\n    </step>\n    <step id="4" name="Resolved">\n      <meta name="jira.status.id">5</meta>\n      <actions>\n<common-action id="3" />\n        <action id="701" name="Close Issue" view="commentassign">\n          <meta name="opsbar-sequence">60</meta>\n          <meta name="jira.i18n.submit">closeissue.close</meta>\n          <meta name="jira.i18n.description">closeissue.desc</meta>\n          <meta name="jira.i18n.title">closeissue.title</meta>\n          <meta name="jira.description">Closing an issue indicates there is no more work to be done on it, and it has been verified as complete.</meta>\n          <restrict-to>\n            <conditions>\n              <condition type="class">\n                <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n                <arg name="permission">Close Issue</arg>\n              </condition>\n            </conditions>\n          </restrict-to>\n          <results>\n            <unconditional-result old-status="Finished" status="Closed" step="6">\n              <post-functions>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n                  <arg name="eventTypeId">5</arg>\n                </function>\n              </post-functions>\n            </unconditional-result>\n          </results>\n        </action>\n      </actions>\n    </step>\n    <step id="5" name="Reopened">\n      <meta name="jira.status.id">4</meta>\n      <actions>\n<common-action id="5" />\n<common-action id="2" />\n<common-action id="4" />\n      </actions>\n    </step>\n    <step id="6" name="Closed">\n      <meta name="jira.status.id">6</meta>\n      <meta name="jira.issue.editable">false</meta>\n      <actions>\n<common-action id="3" />\n      </actions>\n    </step>\n  </steps>\n</workflow>\n	\N
10100	Software Simplified Workflow for Project TEST	\N	<?xml version="1.0" encoding="UTF-8"?>\n<!DOCTYPE workflow PUBLIC "-//OpenSymphony Group//DTD OSWorkflow 2.8//EN" "http://www.opensymphony.com/osworkflow/workflow_2_8.dtd">\n<workflow>\n  <meta name="jira.description">Generated by JIRA Software version 9.12.4. This workflow is managed internally by Jira Software. Do not manually modify this workflow.</meta>\n  <meta name="jira.update.author.key">JIRAUSER10000</meta>\n  <meta name="jira.updated.date">1719959939253</meta>\n  <meta name="jira.update.author.name">admin</meta>\n  <meta name="gh.version">9.12.4</meta>\n  <initial-actions>\n    <action id="1" name="Create">\n      <meta name="jira.i18n.title">common.forms.create</meta>\n      <validators>\n        <validator name="" type="class">\n          <arg name="permission">Create Issue</arg>\n          <arg name="class.name">com.atlassian.jira.workflow.validator.PermissionValidator</arg>\n        </validator>\n      </validators>\n      <results>\n        <unconditional-result old-status="null" status="Backlog" step="11">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueCreateFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="eventTypeId">1</arg>\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n  </initial-actions>\n  <global-actions>\n    <action id="11" name="Backlog">\n      <meta name="jira.description"></meta>\n      <meta name="jira.i18n.title">gh.workflow.preset.backlog</meta>\n      <results>\n        <unconditional-result old-status="Not Done" status="Done" step="11">\n          <post-functions>\n            <function type="class">\n              <arg name="field.name">resolution</arg>\n              <arg name="field.value"></arg>\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="eventTypeId">13</arg>\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n    <action id="21" name="Selected for Development">\n      <meta name="jira.description"></meta>\n      <meta name="jira.i18n.title">gh.workflow.preset.selected</meta>\n      <results>\n        <unconditional-result old-status="Not Done" status="Done" step="22">\n          <post-functions>\n            <function type="class">\n              <arg name="field.name">resolution</arg>\n              <arg name="field.value"></arg>\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="eventTypeId">13</arg>\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n    <action id="31" name="In Progress">\n      <meta name="jira.description"></meta>\n      <meta name="jira.i18n.title">gh.workflow.preset.inprogress</meta>\n      <results>\n        <unconditional-result old-status="Not Done" status="Done" step="33">\n          <post-functions>\n            <function type="class">\n              <arg name="field.name">resolution</arg>\n              <arg name="field.value"></arg>\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="eventTypeId">13</arg>\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n    <action id="41" name="Done">\n      <meta name="jira.description"></meta>\n      <meta name="jira.i18n.title">gh.workflow.preset.done</meta>\n      <results>\n        <unconditional-result old-status="Not Done" status="Done" step="44">\n          <post-functions>\n            <function type="class">\n              <arg name="field.name">resolution</arg>\n              <arg name="field.value">10000</arg>\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">\n                                com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="eventTypeId">13</arg>\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n  </global-actions>\n  <steps>\n    <step id="11" name="Backlog">\n      <meta name="jira.status.id">10000</meta>\n    </step>\n    <step id="22" name="Selected for Development">\n      <meta name="jira.status.id">10001</meta>\n    </step>\n    <step id="33" name="In Progress">\n      <meta name="jira.status.id">3</meta>\n    </step>\n    <step id="44" name="Done">\n      <meta name="jira.status.id">10002</meta>\n    </step>\n  </steps>\n</workflow>\n	\N
\.


--
-- Data for Name: jiraworkflowstatuses; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.jiraworkflowstatuses (id, status, parentname) FROM stdin;
\.


--
-- Data for Name: jquartz_blob_triggers; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.jquartz_blob_triggers (sched_name, trigger_name, trigger_group, blob_data) FROM stdin;
\.


--
-- Data for Name: jquartz_calendars; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.jquartz_calendars (sched_name, calendar_name, calendar) FROM stdin;
\.


--
-- Data for Name: jquartz_cron_triggers; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.jquartz_cron_triggers (sched_name, trigger_name, trigger_group, cron_expression, time_zone_id) FROM stdin;
\.


--
-- Data for Name: jquartz_fired_triggers; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.jquartz_fired_triggers (sched_name, entry_id, trigger_name, trigger_group, is_volatile, instance_name, fired_time, sched_time, priority, state, job_name, job_group, is_stateful, is_nonconcurrent, is_update_data, requests_recovery) FROM stdin;
\.


--
-- Data for Name: jquartz_job_details; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.jquartz_job_details (sched_name, job_name, job_group, description, job_class_name, is_durable, is_volatile, is_stateful, is_nonconcurrent, is_update_data, requests_recovery, job_data) FROM stdin;
\.


--
-- Data for Name: jquartz_job_listeners; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.jquartz_job_listeners (job_name, job_group, job_listener) FROM stdin;
\.


--
-- Data for Name: jquartz_locks; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.jquartz_locks (sched_name, lock_name) FROM stdin;
\N	TRIGGER_ACCESS
\N	JOB_ACCESS
\N	CALENDAR_ACCESS
\N	STATE_ACCESS
\N	MISFIRE_ACCESS
\.


--
-- Data for Name: jquartz_paused_trigger_grps; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.jquartz_paused_trigger_grps (sched_name, trigger_group) FROM stdin;
\.


--
-- Data for Name: jquartz_scheduler_state; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.jquartz_scheduler_state (sched_name, instance_name, last_checkin_time, checkin_interval) FROM stdin;
\.


--
-- Data for Name: jquartz_simple_triggers; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.jquartz_simple_triggers (sched_name, trigger_name, trigger_group, repeat_count, repeat_interval, times_triggered) FROM stdin;
\.


--
-- Data for Name: jquartz_simprop_triggers; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.jquartz_simprop_triggers (sched_name, trigger_name, trigger_group, str_prop_1, str_prop_2, str_prop_3, int_prop_1, int_prop_2, long_prop_1, long_prop_2, dec_prop_1, dec_prop_2, bool_prop_1, bool_prop_2) FROM stdin;
\.


--
-- Data for Name: jquartz_trigger_listeners; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.jquartz_trigger_listeners (trigger_name, trigger_group, trigger_listener) FROM stdin;
\.


--
-- Data for Name: jquartz_triggers; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.jquartz_triggers (sched_name, trigger_name, trigger_group, job_name, job_group, is_volatile, description, next_fire_time, prev_fire_time, priority, trigger_state, trigger_type, start_time, end_time, calendar_name, misfire_instr, job_data) FROM stdin;
\.


--
-- Data for Name: label; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.label (id, fieldid, issue, label) FROM stdin;
\.


--
-- Data for Name: licenserolesdefault; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.licenserolesdefault (id, license_role_name) FROM stdin;
10000	jira-software
\.


--
-- Data for Name: licenserolesgroup; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.licenserolesgroup (id, license_role_name, group_id, primary_group) FROM stdin;
10000	jira-software	jira-software-users	Y
10001	jira-software	jira-administrators	N
\.


--
-- Data for Name: listenerconfig; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.listenerconfig (id, clazz, listenername) FROM stdin;
10000	com.atlassian.jira.event.listeners.mail.MailListener	Mail Listener
10001	com.atlassian.jira.event.listeners.history.IssueAssignHistoryListener	Issue Assignment Listener
10200	com.atlassian.jira.event.listeners.search.IssueIndexListener	Issue Index Listener
\.


--
-- Data for Name: mailserver; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.mailserver (id, name, description, mailfrom, prefix, smtp_port, protocol, server_type, servername, jndilocation, mailusername, mailpassword, cipher_type, istlsrequired, timeout, socks_port, socks_host, auth_conf) FROM stdin;
\.


--
-- Data for Name: managedconfigurationitem; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.managedconfigurationitem (id, item_id, item_type, managed, access_level, source, description_key) FROM stdin;
10000	customfield_10000	CUSTOM_FIELD	true	LOCKED	com.atlassian.jira.plugins.jira-development-integration-plugin:reserved-field-locked	devstatus.customfield.locked.desc
10100	customfield_10100	CUSTOM_FIELD	true	LOCKED	com.pyxis.greenhopper.jira:reference-select-locked	gh.customfield.locked.desc
10101	customfield_10101	CUSTOM_FIELD	true	LOCKED	com.pyxis.greenhopper.jira:reference-select-locked	gh.customfield.locked.desc
10102	customfield_10102	CUSTOM_FIELD	true	LOCKED	com.pyxis.greenhopper.jira:reference-select-locked	gh.customfield.locked.desc
10103	customfield_10103	CUSTOM_FIELD	true	LOCKED	com.pyxis.greenhopper.jira:reference-select-locked	gh.customfield.locked.desc
10104	customfield_10104	CUSTOM_FIELD	true	LOCKED	com.pyxis.greenhopper.jira:reference-select-locked	gh.customfield.locked.desc
10105	customfield_10105	CUSTOM_FIELD	true	LOCKED	com.pyxis.greenhopper.jira:reference-select-locked	gh.customfield.locked.desc
10106	customfield_10107	CUSTOM_FIELD	true	LOCKED	com.atlassian.teams:field-locking-service	admin.managed.configuration.items.generic.description.locked
10107	customfield_10108	CUSTOM_FIELD	true	LOCKED	com.atlassian.jpo:field-locking-service	admin.managed.configuration.items.generic.description.locked
10108	customfield_10109	CUSTOM_FIELD	true	LOCKED	com.atlassian.jpo:field-locking-service	admin.managed.configuration.items.generic.description.locked
10109	customfield_10110	CUSTOM_FIELD	true	LOCKED	com.atlassian.jpo:field-locking-service	admin.managed.configuration.items.generic.description.locked
10110	customfield_10111	CUSTOM_FIELD	true	LOCKED	com.atlassian.jpo:field-locking-service	admin.managed.configuration.items.generic.description.locked
\.


--
-- Data for Name: membershipbase; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.membershipbase (id, user_name, group_name) FROM stdin;
\.


--
-- Data for Name: moved_issue_key; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.moved_issue_key (id, old_issue_key, issue_id) FROM stdin;
\.


--
-- Data for Name: nodeassociation; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.nodeassociation (source_node_id, source_node_entity, sink_node_id, sink_node_entity, association_type, sequence) FROM stdin;
10000	Project	10000	NotificationScheme	ProjectScheme	\N
10000	Project	10000	IssueTypeScreenScheme	ProjectScheme	\N
10000	Project	10100	WorkflowScheme	ProjectScheme	\N
10000	Project	10000	PermissionScheme	ProjectScheme	\N
10010	Issue	10000	Version	IssueFixVersion	\N
10011	Issue	10000	Version	IssueFixVersion	\N
10012	Issue	10000	Version	IssueFixVersion	\N
10013	Issue	10000	Version	IssueFixVersion	\N
10014	Issue	10000	Version	IssueFixVersion	\N
10015	Issue	10000	Version	IssueFixVersion	\N
\.


--
-- Data for Name: nodeindexcounter; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.nodeindexcounter (id, node_id, sending_node_id, index_operation_id) FROM stdin;
\.


--
-- Data for Name: nomenclature_entries; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.nomenclature_entries (id, original_name, new_name, new_name_plural, "timestamp") FROM stdin;
\.


--
-- Data for Name: notification; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.notification (id, scheme, event, event_type_id, template_id, notif_type, notif_parameter) FROM stdin;
10000	10000	\N	1	\N	Current_Assignee	\N
10001	10000	\N	1	\N	Current_Reporter	\N
10002	10000	\N	1	\N	All_Watchers	\N
10003	10000	\N	2	\N	Current_Assignee	\N
10004	10000	\N	2	\N	Current_Reporter	\N
10005	10000	\N	2	\N	All_Watchers	\N
10006	10000	\N	3	\N	Current_Assignee	\N
10007	10000	\N	3	\N	Current_Reporter	\N
10008	10000	\N	3	\N	All_Watchers	\N
10009	10000	\N	4	\N	Current_Assignee	\N
10010	10000	\N	4	\N	Current_Reporter	\N
10011	10000	\N	4	\N	All_Watchers	\N
10012	10000	\N	5	\N	Current_Assignee	\N
10013	10000	\N	5	\N	Current_Reporter	\N
10014	10000	\N	5	\N	All_Watchers	\N
10015	10000	\N	6	\N	Current_Assignee	\N
10016	10000	\N	6	\N	Current_Reporter	\N
10017	10000	\N	6	\N	All_Watchers	\N
10018	10000	\N	7	\N	Current_Assignee	\N
10019	10000	\N	7	\N	Current_Reporter	\N
10020	10000	\N	7	\N	All_Watchers	\N
10021	10000	\N	8	\N	Current_Assignee	\N
10022	10000	\N	8	\N	Current_Reporter	\N
10023	10000	\N	8	\N	All_Watchers	\N
10024	10000	\N	9	\N	Current_Assignee	\N
10025	10000	\N	9	\N	Current_Reporter	\N
10026	10000	\N	9	\N	All_Watchers	\N
10027	10000	\N	10	\N	Current_Assignee	\N
10028	10000	\N	10	\N	Current_Reporter	\N
10029	10000	\N	10	\N	All_Watchers	\N
10030	10000	\N	11	\N	Current_Assignee	\N
10031	10000	\N	11	\N	Current_Reporter	\N
10032	10000	\N	11	\N	All_Watchers	\N
10033	10000	\N	12	\N	Current_Assignee	\N
10034	10000	\N	12	\N	Current_Reporter	\N
10035	10000	\N	12	\N	All_Watchers	\N
10036	10000	\N	13	\N	Current_Assignee	\N
10037	10000	\N	13	\N	Current_Reporter	\N
10038	10000	\N	13	\N	All_Watchers	\N
10100	10000	\N	14	\N	Current_Assignee	\N
10101	10000	\N	14	\N	Current_Reporter	\N
10102	10000	\N	14	\N	All_Watchers	\N
10103	10000	\N	15	\N	Current_Assignee	\N
10104	10000	\N	15	\N	Current_Reporter	\N
10105	10000	\N	15	\N	All_Watchers	\N
10106	10000	\N	16	\N	Current_Assignee	\N
10107	10000	\N	16	\N	Current_Reporter	\N
10108	10000	\N	16	\N	All_Watchers	\N
10200	10000	\N	18	\N	Current_Assignee	\N
10201	10000	\N	18	\N	Current_Reporter	\N
10202	10000	\N	18	\N	All_Watchers	\N
10203	10000	\N	19	\N	Current_Assignee	\N
10204	10000	\N	19	\N	Current_Reporter	\N
10205	10000	\N	19	\N	All_Watchers	\N
\.


--
-- Data for Name: notificationinstance; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.notificationinstance (id, notificationtype, source, emailaddress, messageid) FROM stdin;
\.


--
-- Data for Name: notificationscheme; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.notificationscheme (id, name, description) FROM stdin;
10000	Default Notification Scheme	\N
\.


--
-- Data for Name: oauthconsumer; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.oauthconsumer (id, created, consumername, consumer_key, consumerservice, public_key, private_key, description, callback, signature_method, shared_secret) FROM stdin;
\.


--
-- Data for Name: oauthconsumertoken; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.oauthconsumertoken (id, created, token_key, token, token_secret, token_type, consumer_key) FROM stdin;
\.


--
-- Data for Name: oauthspconsumer; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.oauthspconsumer (id, created, consumer_key, consumername, public_key, description, callback, two_l_o_allowed, executing_two_l_o_user, two_l_o_impersonation_allowed, three_l_o_allowed) FROM stdin;
\.


--
-- Data for Name: oauthsptoken; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.oauthsptoken (id, created, token, token_secret, token_type, consumer_key, username, ttl, spauth, callback, spverifier, spversion, session_handle, session_creation_time, session_last_renewal_time, session_time_to_live) FROM stdin;
\.


--
-- Data for Name: optionconfiguration; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.optionconfiguration (id, fieldid, optionid, fieldconfig, sequence) FROM stdin;
10200	priority	1	10101	1
10201	priority	2	10101	2
10202	priority	3	10101	3
10203	priority	4	10101	4
10204	priority	5	10101	5
10300	issuetype	10000	10000	0
10301	issuetype	10001	10000	1
10306	issuetype	10002	10212	0
10307	issuetype	10003	10212	1
10308	issuetype	10001	10212	2
10309	issuetype	10004	10212	3
10310	issuetype	10000	10212	4
\.


--
-- Data for Name: os_currentstep; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.os_currentstep (id, entry_id, step_id, action_id, owner, start_date, due_date, finish_date, status, caller) FROM stdin;
10000	10000	11	0		2024-07-02 22:38:59.528+00	\N	\N	Backlog	\N
10001	10001	22	0		2024-07-02 22:38:59.781+00	\N	\N	Backlog	\N
10002	10002	11	0		2024-07-02 22:38:59.81+00	\N	\N	Backlog	\N
10003	10003	11	0		2024-07-02 22:38:59.836+00	\N	\N	Backlog	\N
10004	10004	11	0		2024-07-02 22:38:59.861+00	\N	\N	Backlog	\N
10005	10005	33	0		2024-07-02 22:38:59.885+00	\N	\N	Backlog	\N
10006	10006	33	0		2024-07-02 22:38:59.908+00	\N	\N	Backlog	\N
10007	10007	44	0		2024-07-02 22:38:59.931+00	\N	\N	Backlog	\N
10008	10008	44	0		2024-07-02 22:38:59.955+00	\N	\N	Backlog	\N
10009	10009	44	0		2024-07-02 22:38:59.977+00	\N	\N	Backlog	\N
10010	10010	44	0		2024-07-02 22:38:59.999+00	\N	\N	Backlog	\N
10011	10011	44	0		2024-07-02 22:39:00.037+00	\N	\N	Backlog	\N
10012	10012	44	0		2024-07-02 22:39:00.06+00	\N	\N	Backlog	\N
10013	10013	44	0		2024-07-02 22:39:00.082+00	\N	\N	Backlog	\N
10014	10014	44	0		2024-07-02 22:39:00.105+00	\N	\N	Backlog	\N
10015	10015	44	0		2024-07-02 22:39:00.128+00	\N	\N	Backlog	\N
\.


--
-- Data for Name: os_currentstep_prev; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.os_currentstep_prev (id, previous_id) FROM stdin;
\.


--
-- Data for Name: os_historystep; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.os_historystep (id, entry_id, step_id, action_id, owner, start_date, due_date, finish_date, status, caller) FROM stdin;
\.


--
-- Data for Name: os_historystep_prev; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.os_historystep_prev (id, previous_id) FROM stdin;
\.


--
-- Data for Name: os_wfentry; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.os_wfentry (id, name, initialized, state) FROM stdin;
10000	Software Simplified Workflow for Project TEST	\N	1
10001	Software Simplified Workflow for Project TEST	\N	1
10002	Software Simplified Workflow for Project TEST	\N	1
10003	Software Simplified Workflow for Project TEST	\N	1
10004	Software Simplified Workflow for Project TEST	\N	1
10005	Software Simplified Workflow for Project TEST	\N	1
10006	Software Simplified Workflow for Project TEST	\N	1
10007	Software Simplified Workflow for Project TEST	\N	1
10008	Software Simplified Workflow for Project TEST	\N	1
10009	Software Simplified Workflow for Project TEST	\N	1
10010	Software Simplified Workflow for Project TEST	\N	1
10011	Software Simplified Workflow for Project TEST	\N	1
10012	Software Simplified Workflow for Project TEST	\N	1
10013	Software Simplified Workflow for Project TEST	\N	1
10014	Software Simplified Workflow for Project TEST	\N	1
10015	Software Simplified Workflow for Project TEST	\N	1
\.


--
-- Data for Name: permissionscheme; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.permissionscheme (id, name, description) FROM stdin;
0	Default Permission Scheme	This is the default Permission Scheme. Any new projects that are created will be assigned this scheme.
10000	Default software scheme	Default scheme for Software projects.
\.


--
-- Data for Name: permissionschemeattribute; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.permissionschemeattribute (id, scheme, attribute_key, attribute_value) FROM stdin;
\.


--
-- Data for Name: pluginstate; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.pluginstate (pluginkey, pluginenabled) FROM stdin;
\.


--
-- Data for Name: pluginversion; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.pluginversion (id, pluginname, pluginkey, pluginversion, created) FROM stdin;
10029	Comment Panel Plugin	com.atlassian.jira.plugin.system.comment-panel	1.0	2024-07-02 22:35:13.797+00
10030	Atlassian Jira - Plugins - Development Integration Plugin	com.atlassian.jira.plugins.jira-development-integration-plugin	5.1000.1	2024-07-02 22:35:13.797+00
10031	Atlassian Remote Event Consumer Plugin	com.atlassian.plugins.atlassian-remote-event-consumer-plugin	7.0.1	2024-07-02 22:35:13.797+00
10032	scala-2.11-provider-plugin	com.atlassian.scala.plugins.scala-2.11-provider-plugin	0.15	2024-07-02 22:35:13.797+00
10033	JIRA Workflow Transition Tabs	com.atlassian.jira.plugin.system.workfloweditor.transition.tabs	1.0	2024-07-02 22:35:13.797+00
10034	Jira inform - batching plugin	com.atlassian.jira.plugins.inform.batching-plugin	3.0.4	2024-07-02 22:35:13.797+00
10035	Atlassian Plugins - Client-side Extensions - Runtime	com.atlassian.plugins.atlassian-clientside-extensions-runtime	1.2.9	2024-07-02 22:35:13.797+00
10036	JIRA Core Czech (Czech Republic) Language Pack	tac.jira core.languages.cs_CZ	9.13.0.v20231122094559	2024-07-02 22:35:13.797+00
10037	Renderer Plugin	com.atlassian.jira.plugin.system.jirarenderers	1.0	2024-07-02 22:35:13.797+00
10038	Atlassian Gadgets OAuth Service Provider Plugin	com.atlassian.gadgets.oauth.serviceprovider	8.1.3	2024-07-02 22:35:13.797+00
10039	querydsl-4.1.4-provider-plugin	com.atlassian.querydsl.plugins.querydsl-4.1.4-provider-plugin	1.5	2024-07-02 22:35:13.797+00
10040	rome	com.rometools.rome-1.18.0	1.18.0	2024-07-02 22:35:13.797+00
10041	Cleanup Hub	com.atlassian.plugins.cleanup-hub-plugin	1.0.9	2024-07-02 22:35:13.797+00
10042	JIRA Software Finnish (Finland) Language Pack	tac.jira software.languages.fi_FI	9.13.0.v20231122092030	2024-07-02 22:35:13.797+00
10043	JIRA Core Japanese (Japan) Language Pack	tac.jira core.languages.ja_JP	9.13.0.v20231122094559	2024-07-02 22:35:13.797+00
10044	JIRA Core Italian (Italy) Language Pack	tac.jira core.languages.it_IT	9.13.0.v20231122094559	2024-07-02 22:35:13.797+00
10045	Jira for Software Plugin	com.atlassian.jira.plugins.jira-software-plugin	9.12.4	2024-07-02 22:35:13.797+00
10080	Jira Cloud Migration Assistant	com.atlassian.jira.migration.jira-migration-plugin	1.9.17	2024-07-02 22:35:13.797+00
10081	Jira inform - batchers	com.atlassian.jira.plugins.inform.batchers	3.0.4	2024-07-02 22:35:13.797+00
10082	jira-optimizer-plugin	com.atlassian.jira.plugins.jira-optimizer-plugin	4.0.5	2024-07-02 22:35:13.797+00
10083	Analytics Whitelist Plugin	com.atlassian.analytics.analytics-whitelist	3.106	2024-07-02 22:35:13.797+00
10084	Atlassian Jira - Plugins - Invite User	com.atlassian.jira.jira-invite-user-plugin	3.0.4	2024-07-02 22:35:13.797+00
10085	Atlassian Jira - Plugins - Cluster Monitoring	com.atlassian.jira.jira-cluster-monitoring-plugin	9.12.4	2024-07-02 22:35:13.797+00
10086	JIRA Software Norwegian (Norway) Language Pack	tac.jira software.languages.no_NO	9.13.0.v20231122092030	2024-07-02 22:35:13.797+00
10087	Applinks - Plugin - Basic Authentication	com.atlassian.applinks.applinks-basicauth-plugin	9.0.15	2024-07-02 22:35:13.797+00
10088	Atlassian Jira - Plugins - Quick Search	com.atlassian.jira.plugins.jira-quicksearch-plugin	9.12.4	2024-07-02 22:35:13.797+00
10089	Functional Extensions Retry Inter-Ops	io.atlassian.fugue.retry-5.0.0	5.0.0	2024-07-02 22:35:13.797+00
10090	User Profile Links	jira.webfragments.user.profile.links	1.0	2024-07-02 22:35:13.797+00
10091	JIRA Software Italian (Italy) Language Pack	tac.jira software.languages.it_IT	9.13.0.v20231122092030	2024-07-02 22:35:13.797+00
10092	Admin Menu Sections	jira.webfragments.admin	1.0	2024-07-02 22:35:13.797+00
10093	wiki-editor	com.atlassian.jira.plugins.jira-wiki-editor	7.5.0	2024-07-02 22:35:13.797+00
10094	Atlassian OAuth Service Provider SPI	com.atlassian.oauth.atlassian-oauth-service-provider-spi	5.0.7	2024-07-02 22:35:13.797+00
10095	Top Navigation Bar	jira.top.navigation.bar	1.0	2024-07-02 22:35:13.797+00
10096	Applinks - Plugin - Trusted Apps	com.atlassian.applinks.applinks-trustedapps-plugin	9.0.15	2024-07-02 22:35:13.797+00
10097	Wiki Renderer Macros Plugin	com.atlassian.jira.plugin.system.renderers.wiki.macros	1.0	2024-07-02 22:35:13.797+00
10098	Issue Views Plugin	jira.issueviews	1.0	2024-07-02 22:35:13.797+00
10099	JIRA Core Icelandic (Iceland) Language Pack	tac.jira core.languages.is_IS	8.14.0.v20201110031400	2024-07-02 22:35:13.797+00
10100	Streams SPI	com.atlassian.streams.streams-spi	9.1.31	2024-07-02 22:35:13.797+00
10101	Apache ServiceMix :: Bundles :: spring-tx	org.apache.servicemix.bundles.spring-tx-5.3.29.1	5.3.29.1	2024-07-02 22:35:13.797+00
10102	Jira inform - event plugin	com.atlassian.jira.plugins.inform.event-plugin	3.0.4	2024-07-02 22:35:13.797+00
10103	Applinks - Plugin - CORS	com.atlassian.applinks.applinks-cors-plugin	9.0.15	2024-07-02 22:35:13.797+00
10104	Streams Third Party Provider Plugin	com.atlassian.streams.streams-thirdparty-plugin	9.1.31	2024-07-02 22:35:13.797+00
10105	Atlassian OAuth Service Provider Plugin	com.atlassian.oauth.serviceprovider	5.0.7	2024-07-02 22:35:13.797+00
10106	Atlassian Jira - Plugins - Common AppLinks Based Issue Link Plugin	com.atlassian.jira.jira-issue-link-applinks-common-plugin	9.12.4	2024-07-02 22:35:13.797+00
10107	jira-webresources-plugin	jira.webresources	1.0	2024-07-02 22:35:13.797+00
10108	Embedded Gadgets Plugin	com.atlassian.gadgets.embedded	8.1.3	2024-07-02 22:35:13.797+00
10109	Atlassian Jira - Plugins - Core Reports	com.atlassian.jira.jira-core-reports-plugin	9.12.4	2024-07-02 22:35:13.797+00
10110	Streams Plugin	com.atlassian.streams	9.1.31	2024-07-02 22:35:13.797+00
10111	Browse Project Operations Sections	jira.webfragments.browse.project.links	1.0	2024-07-02 22:35:13.797+00
10112	Jira Issue Collector Plugin	com.atlassian.jira.collector.plugin.jira-issue-collector-plugin	5.1.5	2024-07-02 22:35:13.797+00
10113	Atlassian Whitelist Core Plugin	com.atlassian.plugins.atlassian-whitelist-core-plugin	5.0.8	2024-07-02 22:35:13.797+00
10114	JIRA Core Russian (Russia) Language Pack	tac.jira core.languages.ru_RU	9.13.0.v20231122094559	2024-07-02 22:35:13.797+00
10115	Streams Core Plugin	com.atlassian.streams.core	9.1.31	2024-07-02 22:35:13.797+00
10116	Atlassian OAuth 2 Scopes - Plugin	com.atlassian.oauth2.oauth2-scopes-plugin	3.1.5	2024-07-02 22:35:13.797+00
10117	Atlassian Jira - Plugins - WebHooks Plugin	com.atlassian.jira.plugins.webhooks.jira-webhooks-plugin	9.12.4	2024-07-02 22:35:13.797+00
10118	Issue Operations Plugin	com.atlassian.jira.plugin.system.issueoperations	1.0	2024-07-02 22:35:13.797+00
10119	Gadget Directory Plugin	com.atlassian.gadgets.directory	8.1.3	2024-07-02 22:35:13.797+00
10120	Attach Image for JIRA	com.atlassian.plugins.jira-html5-attach-images	4.0.1	2024-07-02 22:35:13.797+00
10121	Jira Monitoring Plugin	com.atlassian.jira.jira-monitoring-plugin	06.1.0	2024-07-02 22:35:13.797+00
10122	Atlassian OAuth 2 Provider - Plugin	com.atlassian.oauth2.oauth2-provider-plugin	3.1.5	2024-07-02 22:35:13.797+00
10184	Soy Function Plugin	com.atlassian.jira.plugin.system.soyfunction	1.0	2024-07-02 22:35:13.797+00
10000	Jira Projects Plugin	com.atlassian.jira.jira-projects-plugin	8.1.7	2024-07-02 22:35:13.797+00
10001	Jira Software Application	com.atlassian.jira.jira-software-application	9.12.4	2024-07-02 22:35:13.797+00
10002	Atlassian OAuth Consumer Plugin	com.atlassian.oauth.consumer	5.0.7	2024-07-02 22:35:13.797+00
10003	Atlassian Jira - Plugins - My Jira Home	com.atlassian.jira.jira-my-home-plugin	9.12.4	2024-07-02 22:35:13.797+00
10004	JIRA Software English (United States) Language Pack	tac.jira software.languages.en_US	9.13.0.v20231122092030	2024-07-02 22:35:13.797+00
10005	Project Creation Plugin SPI for JIRA	com.atlassian.plugins.jira-project-creation	5.0.2	2024-07-02 22:35:13.797+00
10006	Atlassian Embedded Crowd - Administration Plugin	com.atlassian.crowd.embedded.admin	5.0.0-m02	2024-07-02 22:35:13.797+00
10007	Analytics Client Plugin	com.atlassian.analytics.analytics-client	8.2.15	2024-07-02 22:35:13.797+00
10008	JIRA Software Chinese (China) Language Pack	tac.jira software.languages.zh_CN	9.13.0.v20231122092030	2024-07-02 22:35:13.797+00
10009	Jira Index Analyzer	com.atlassian.jira.plugins.jira-index-analyzer-plugin	9.12.4	2024-07-02 22:35:13.797+00
10010	Jira Help Tips plugin	com.atlassian.plugins.helptips.jira-help-tips	9.12.4	2024-07-02 22:35:13.797+00
10011	Atlassian Navigation Links Plugin	com.atlassian.plugins.atlassian-nav-links-plugin	8.0.5	2024-07-02 22:35:13.797+00
10012	JIRA Core Romanian (Romania) Language Pack	tac.jira core.languages.ro_RO	8.14.0.v20201110031400	2024-07-02 22:35:13.797+00
10013	Atlassian Jira - Plugins - Issue Web Link	com.atlassian.jira.jira-issue-link-web-plugin	9.12.4	2024-07-02 22:35:13.797+00
10014	JIRA Core Slovak (Slovakia) Language Pack	tac.jira core.languages.sk_SK	8.14.0.v20201110031400	2024-07-02 22:35:13.797+00
10015	Whisper Messages Plugin	whisper.messages	1.0	2024-07-02 22:35:13.797+00
10016	Project Role Actors Plugin	com.atlassian.jira.plugin.system.projectroleactors	1.0	2024-07-02 22:35:13.797+00
10017	Atlassian Jira - Plugins - OAuth Service Provider SPI	com.atlassian.jira.oauth.serviceprovider	9.12.4	2024-07-02 22:35:13.797+00
10018	Keyboard Shortcuts Plugin	jira.keyboard.shortcuts	1.0	2024-07-02 22:35:13.797+00
10019	Atlassian Remote Event Common Plugin	com.atlassian.plugins.atlassian-remote-event-common-plugin	7.0.1	2024-07-02 22:35:13.797+00
10020	JIRA Password Policy Plugin	com.atlassian.jira.plugins.jira-password-policy-plugin	3.0.0	2024-07-02 22:35:13.797+00
10021	ROME: RSS/Atom syndication and publishing tools	com.springsource.com.sun.syndication-0.9.0	0.9.0	2024-07-02 22:35:13.797+00
10022	JIRA iCalendar Plugin	com.atlassian.jira.extra.jira-ical-feed	1.8.6	2024-07-02 22:35:13.797+00
10023	Jira Drag and Drop Attachment Plugin	com.atlassian.jira.plugins.jira-dnd-attachment-plugin	6.0.2	2024-07-02 22:35:13.797+00
10024	Apache Apache HttpClient OSGi bundle	org.apache.httpcomponents.httpclient-4.5.14	4.5.14	2024-07-02 22:35:13.797+00
10025	Atlassian Jira - Plugins - Post setup announcements plugin	com.atlassian.jira.jira-postsetup-announcements-plugin	9.12.4	2024-07-02 22:35:13.797+00
10026	Streams Inline Actions Plugin	com.atlassian.streams.actions	9.1.31	2024-07-02 22:35:13.797+00
10027	JIRA Software Spanish (Spain) Language Pack	tac.jira software.languages.es_ES	9.13.0.v20231122092030	2024-07-02 22:35:13.797+00
10028	JIRA Core Swedish (Sweden) Language Pack	tac.jira core.languages.sv_SE	9.13.0.v20231122094559	2024-07-02 22:35:13.797+00
10046	JIRA Core Polish (Poland) Language Pack	tac.jira core.languages.pl_PL	9.13.0.v20231122094559	2024-07-02 22:35:13.797+00
10047	Atlassian Jira - Plugins - Admin Navigation Component	com.atlassian.jira.jira-admin-navigation-plugin	9.12.4	2024-07-02 22:35:13.797+00
10048	Functional Extensions Scala Inter-Ops	io.atlassian.fugue.scala-5.0.0	5.0.0	2024-07-02 22:35:13.797+00
10049	JIRA Software Danish (Denmark) Language Pack	tac.jira software.languages.da_DK	9.13.0.v20231122092030	2024-07-02 22:35:13.797+00
10050	JIRA Core German (Germany) Language Pack	tac.jira core.languages.de_DE	9.13.0.v20231122094559	2024-07-02 22:35:13.797+00
10051	Atlassian Plugins - Web Resources - Implementation Plugin	com.atlassian.plugins.atlassian-plugins-webresource-plugin	6.0.5	2024-07-02 22:35:13.797+00
10052	Preset Filters Sections	jira.webfragments.preset.filters	1.0	2024-07-02 22:35:13.797+00
10053	Atlassian Jira - Plugins - Project Config Plugin	com.atlassian.jira.jira-project-config-plugin	9.12.4	2024-07-02 22:35:13.797+00
10054	Crowd System Password Encoders	crowd.system.passwordencoders	1.0	2024-07-02 22:35:13.797+00
10055	Atlassian UI Plugin	com.atlassian.auiplugin	9.3.18	2024-07-02 22:35:13.797+00
10056	Atlassian Jira - Plugins - Share Content Component	com.atlassian.jira.jira-share-plugin	9.12.4	2024-07-02 22:35:13.797+00
10057	Atlassian Jira - Plugins - Statistics plugin	com.atlassian.jira.jira-statistics-plugin	9.12.4	2024-07-02 22:35:13.797+00
10058	Atlassian Jira - Plugins - Remote Jira Link	com.atlassian.jira.jira-issue-link-remote-jira-plugin	9.12.4	2024-07-02 22:35:13.797+00
10059	Remote Link Aggregator Plugin	com.atlassian.plugins.remote-link-aggregator-plugin	3.0.0	2024-07-02 22:35:13.797+00
10060	Atlassian HealthCheck Common Module	com.atlassian.healthcheck.atlassian-healthcheck	7.0.1	2024-07-02 22:35:13.797+00
10061	Workbox - Common Plugin	com.atlassian.mywork.mywork-common-plugin	8.1.6	2024-07-02 22:35:13.797+00
10062	Jira Workflow Sharing Plugin	com.atlassian.jira.plugins.workflow.sharing.jira-workflow-sharing-plugin	2.5.2	2024-07-02 22:35:13.797+00
10063	Entity property conditions	system.entity.property.conditions	1.0	2024-07-02 22:35:13.797+00
10064	org.osgi:org.osgi.service.cm	org.osgi.service.cm-1.5.0.201505202024	1.5.0.201505202024	2024-07-02 22:35:13.797+00
10065	JIRA Software Korean (South Korea) Language Pack	tac.jira software.languages.ko_KR	9.13.0.v20231122092030	2024-07-02 22:35:13.797+00
10066	Atlassian Jira - Plugins - APDEX	com.atlassian.jira.jira-apdex-plugin	9.12.4	2024-07-02 22:35:13.797+00
10067	Advanced Roadmaps Team Management	com.atlassian.teams	9.12.4	2024-07-02 22:35:13.797+00
10068	JQL Functions	jira.jql.function	1.0	2024-07-02 22:35:13.797+00
10069	Atlassian Soy - Plugin	com.atlassian.soy.soy-template-plugin	6.0.7	2024-07-02 22:35:13.797+00
10070	JIRA Software Icelandic (Iceland) Language Pack	tac.jira software.languages.is_IS	8.15.0.v202103310031350	2024-07-02 22:35:13.797+00
10071	Mobile Plugin for Jira Data Center and Server	com.atlassian.jira.mobile.jira-mobile-rest	4.1.5	2024-07-02 22:35:13.797+00
10072	atlassian-failure-cache-plugin	com.atlassian.atlassian-failure-cache-plugin	3.0.0	2024-07-02 22:35:13.797+00
10073	Functional Extensions	io.atlassian.fugue-5.0.0	5.0.0	2024-07-02 22:35:13.797+00
10074	Atlassian Jira - Plugins - ATST Health Checks	com.atlassian.jira.jira-atst-healthcheck-plugin	9.12.4	2024-07-02 22:35:13.797+00
10075	Atlassian Jira - Plugins - View Issue Panels	com.atlassian.jira.jira-view-issue-plugin	9.12.4	2024-07-02 22:35:13.797+00
10076	Personal Access Tokens plugin	com.atlassian.pats.pats-plugin	1.4.5	2024-07-02 22:35:13.797+00
10077	JIRA Footer	jira.footer	1.0	2024-07-02 22:35:13.797+00
10078	Applinks - Plugin - Core	com.atlassian.applinks.applinks-plugin	9.0.15	2024-07-02 22:35:13.797+00
10079	Neko HTML	com.atlassian.bundles.nekohtml-1.9.22.2	1.9.22.2	2024-07-02 22:35:13.797+00
10123	Atlassian Jira - Plugins - Project Centric Issue Navigator	com.atlassian.jira.jira-projects-issue-navigator	19.1.1	2024-07-02 22:35:13.797+00
10124	jira-importers-plugin	com.atlassian.jira.plugins.jira-importers-plugin	12.0.5	2024-07-02 22:35:13.797+00
10125	Atlassian Plugins - JavaScript libraries	com.atlassian.plugin.jslibs	5.1.0	2024-07-02 22:35:13.797+00
10126	JIRA Software Portuguese (Brazil) Language Pack	tac.jira software.languages.pt_BR	9.13.0.v20231122092030	2024-07-02 22:35:13.797+00
10127	Jira Time Zone Detection plugin	com.atlassian.jira.jira-tzdetect-plugin	4.1.1	2024-07-02 22:35:13.797+00
10128	Atlassian Jira - Plugins - Diagnostics Plugin	com.atlassian.jira.diagnostics	9.12.4	2024-07-02 22:35:13.797+00
10129	JIRA Core Dutch (Netherlands) Language Pack	tac.jira core.languages.nl_NL	9.13.0.v20231122094559	2024-07-02 22:35:13.797+00
10130	JIRA Core Estonian (Estonia) Language Pack	tac.jira core.languages.et_EE	8.14.0.v20201110031400	2024-07-02 22:35:13.797+00
10131	Automation for Jira	com.codebarrel.addons.automation	9.0.3	2024-07-02 22:35:13.797+00
10132	JDOM DOM Processor	com.springsource.org.jdom-1.0.0	1.0.0	2024-07-02 22:35:13.797+00
10133	JIRA Core Chinese (China) Language Pack	tac.jira core.languages.zh_CN	9.13.0.v20231122094559	2024-07-02 22:35:13.797+00
10134	Atlassian Jira - Plugins - Feedback Plugin	com.atlassian.feedback.jira-feedback-plugin	9.12.4	2024-07-02 22:35:13.797+00
10135	Atlassian OAuth 2 Client - Plugin	com.atlassian.oauth2.oauth2-client-plugin	3.1.5	2024-07-02 22:35:13.797+00
10136	ActiveObjects Plugin - OSGi Bundle	com.atlassian.activeobjects.activeobjects-plugin	5.0.3	2024-07-02 22:35:13.797+00
10137	Atlassian Jira - Plugins - Header Plugin	com.atlassian.jira.jira-header-plugin	9.12.4	2024-07-02 22:35:13.797+00
10138	Issue Tab Panels Plugin	com.atlassian.jira.plugin.system.issuetabpanels	1.0	2024-07-02 22:35:13.797+00
10139	JIRA Feature Keys	jira.feature.keys	1.0	2024-07-02 22:35:13.797+00
10140	JIRA Streams Inline Actions Plugin	com.atlassian.streams.jira.inlineactions	9.1.31	2024-07-02 22:35:13.797+00
10141	Atlassian Jira - Plugins - Application Properties	com.atlassian.jira.jira-application-properties-plugin	9.12.4	2024-07-02 22:35:13.797+00
10142	Atlassian Jira - Plugins - Gadgets Plugin	com.atlassian.jira.gadgets	9.12.4	2024-07-02 22:35:13.797+00
10143	Atlassian Jira - Plugins - Analytics whitelist	com.atlassian.jira.jira-analytics-whitelist-plugin	9.12.4	2024-07-02 22:35:13.797+00
10144	jira-inline-issue-create-plugin	com.atlassian.jira.plugins.inline-create.jira-inline-issue-create-plugin	3.1.1	2024-07-02 22:35:13.797+00
10145	Jira front-end API	jira.frontend.api	9.12.4	2024-07-02 22:35:13.797+00
10146	Workbox - JIRA Provider Plugin	com.atlassian.mywork.mywork-jira-provider-plugin	8.1.6	2024-07-02 22:35:13.797+00
10147	JIRA Core Korean (South Korea) Language Pack	tac.jira core.languages.ko_KR	9.13.0.v20231122094559	2024-07-02 22:35:13.797+00
10148	Content Link Resolvers Plugin	com.atlassian.jira.plugin.wiki.contentlinkresolvers	1.0	2024-07-02 22:35:13.797+00
10149	Functional Optics Library	io.atlassian.fugue.optics-5.0.0	5.0.0	2024-07-02 22:35:13.797+00
10150	Atlassian Application Manager plugin	com.atlassian.upm.upm-application-plugin	6.1.9	2024-07-02 22:35:13.797+00
10151	JIRA Core Spanish (Spain) Language Pack	tac.jira core.languages.es_ES	9.13.0.v20231122094559	2024-07-02 22:35:13.797+00
10152	JIRA Software Russian (Russia) Language Pack	tac.jira software.languages.ru_RU	9.13.0.v20231122092030	2024-07-02 22:35:13.797+00
10153	JIRA Software Swedish (Sweden) Language Pack	tac.jira software.languages.sv_SE	9.13.0.v20231122092030	2024-07-02 22:35:13.797+00
10154	Atlassian Jira - Plugins - Credits Plugin	com.atlassian.jira.jira-credits-plugin	9.12.4	2024-07-02 22:35:13.797+00
10155	Jira Mobile	com.atlassian.jira.mobile	3.2.21	2024-07-02 22:35:13.797+00
10156	Atlassian Jira - Plugins - Onboarding	com.atlassian.jira.jira-onboarding-assets-plugin	9.12.4	2024-07-02 22:35:13.797+00
10157	FishEye Plugin	com.atlassian.jirafisheyeplugin	9.12.4	2024-07-02 22:35:13.797+00
10158	JIRA Software French (France) Language Pack	tac.jira software.languages.fr_FR	9.13.0.v20231122092030	2024-07-02 22:35:13.797+00
10159	Atlassian JIRA - Admin Helper Plugin	com.atlassian.jira.plugins.jira-admin-helper-plugin	6.1.3	2024-07-02 22:35:13.797+00
10160	Atlassian Plugins - DC Browser Metrics - Plugin	com.atlassian.plugins.browser.metrics.browser-metrics-plugin	10.3.2	2024-07-02 22:35:13.797+00
10161	JIRA Software German (Germany) Language Pack	tac.jira software.languages.de_DE	9.13.0.v20231122092030	2024-07-02 22:35:13.797+00
10162	Atlassian Jira - Plugins - Global Issue Navigator	com.atlassian.jira.jira-issue-nav-plugin	19.1.1	2024-07-02 22:35:13.797+00
10163	User Navigation Bar Sections	jira.webfragments.user.navigation.bar	1.0	2024-07-02 22:35:13.797+00
10164	Advanced Roadmaps for Jira	com.radiantminds.roadmaps-jira	9.12.4	2024-07-02 22:35:13.797+00
10165	Atlassian Troubleshooting and Support Tools	com.atlassian.troubleshooting.plugin-jira	1.50.2	2024-07-02 22:35:13.797+00
10166	Atlassian Data Pipeline Jira Plugin	com.atlassian.business.insights.jira-plugin	2.4.3	2024-07-02 22:35:13.797+00
10167	JIRA Global Permissions	jira.system.global.permissions	1.0	2024-07-02 22:35:13.797+00
10168	JIRA Software Slovak (Slovakia) Language Pack	tac.jira software.languages.sk_SK	8.15.0.v202103310031350	2024-07-02 22:35:13.797+00
10169	Atlassian Template Renderer API	com.atlassian.templaterenderer.api	5.0.4	2024-07-02 22:35:13.797+00
10170	JIRA Core Danish (Denmark) Language Pack	tac.jira core.languages.da_DK	9.13.0.v20231122094559	2024-07-02 22:35:13.797+00
10171	Atlassian JIRA - Plugins - File viewer plugin	com.atlassian.jira.jira-fileviewer-plugin	8.1.1	2024-07-02 22:35:13.797+00
10172	Atlassian Whitelist API Plugin	com.atlassian.plugins.atlassian-whitelist-api-plugin-5.0.8	5.0.8	2024-07-02 22:35:13.797+00
10173	Atlassian Pretty URLs Plugin	com.atlassian.prettyurls.atlassian-pretty-urls-plugin	4.1.1	2024-07-02 22:35:13.797+00
10174	JIRA Attachment Archive File Processors	jira.system.attachment.processors	1.0	2024-07-02 22:35:13.797+00
10175	Atlassian Jira - Plugins - Admin Upgrades	com.atlassian.jira.jira-admin-updates-plugin	9.12.4	2024-07-02 22:35:13.797+00
10176	Atlassian Cluster Monitoring Plugin	com.atlassian.cluster.monitoring.cluster-monitoring-plugin	4.1.11	2024-07-02 22:35:13.797+00
10177	Atlassian Universal Plugin Manager Plugin	com.atlassian.upm.atlassian-universal-plugin-manager-plugin	6.1.9	2024-07-02 22:35:13.797+00
10178	SSO for Atlassian Data Center	com.atlassian.plugins.authentication.atlassian-authentication-plugin	4.2.19	2024-07-02 22:35:13.797+00
10179	Atlassian Whitelist UI Plugin	com.atlassian.plugins.atlassian-whitelist-ui-plugin	5.0.8	2024-07-02 22:35:13.797+00
10180	JIRA Core Portuguese (Brazil) Language Pack	tac.jira core.languages.pt_BR	9.13.0.v20231122094559	2024-07-02 22:35:13.797+00
10181	Atlassian Jira - Plugins - Frontend Features	com.atlassian.jira.jira-frontend-plugin	9.12.4	2024-07-02 22:35:13.797+00
10182	jira-capabilities-plugin	jira.capabilities	1.0	2024-07-02 22:35:13.797+00
10183	Atlassian JIRA - Plugins - Quick Edit Plugin	com.atlassian.jira.jira-quick-edit-plugin	6.0.3	2024-07-02 22:35:13.797+00
10185	Universal Plugin Manager - Role-Based Licensing Implementation Plugin	com.atlassian.upm.role-based-licensing-plugin	6.1.9	2024-07-02 22:35:13.797+00
10186	Jira Core Project Templates Plugin	com.atlassian.jira-core-project-templates	8.1.5	2024-07-02 22:35:13.797+00
10187	Functional Extensions Guava Inter-Ops	io.atlassian.fugue.guava-5.0.0	5.0.0	2024-07-02 22:35:13.797+00
10188	Atlassian Data Pipeline Core Plugin	com.atlassian.business.insights.core-plugin	2.4.2	2024-07-02 22:35:13.797+00
10189	Atlassian REST - Module Types	com.atlassian.plugins.rest.atlassian-rest-module	7.0.12	2024-07-02 22:35:13.797+00
10190	Crowd REST API - Application Management	crowd-rest-application-management	1.0	2024-07-02 22:35:13.797+00
10191	jira-issue-nav-components	com.atlassian.jira.jira-issue-nav-components	19.1.1	2024-07-02 22:35:13.797+00
10192	jquery	com.atlassian.plugins.jquery	2.2.4.11	2024-07-02 22:35:13.797+00
10193	Atlassian Jira - Plugins - Auditing Plugin [Audit Log]	com.atlassian.jira.plugins.jira-auditing-plugin	9.12.4	2024-07-02 22:35:13.797+00
10194	JIRA Remote Link Aggregator Plugin	com.atlassian.plugins.jira-remote-link-aggregator-plugin	3.0.0	2024-07-02 22:35:13.797+00
10195	Streams API	com.atlassian.streams.streams-api	9.1.31	2024-07-02 22:35:13.797+00
10196	Apache Apache HttpCore OSGi bundle	org.apache.httpcomponents.httpcore-4.4.15	4.4.15	2024-07-02 22:35:13.797+00
10197	Atlassian Jira - Plugins - Atlassian Notifications Plugin	com.atlassian.jira.jira-whisper-plugin	9.12.4	2024-07-02 22:35:13.797+00
10198	Atlassian HTTP Client, Apache HTTP components impl	com.atlassian.httpclient.atlassian-httpclient-plugin	3.0.4	2024-07-02 22:35:13.797+00
10199	Jira DVCS Connector Plugin	com.atlassian.jira.plugins.jira-bitbucket-connector-plugin	6.1.4	2024-07-02 22:35:13.797+00
10200	JSON in Java	json-20231013.0.0	20231013.0.0	2024-07-02 22:35:13.797+00
10201	JIRA Software Hungarian (Hungary) Language Pack	tac.jira software.languages.hu_HU	9.13.0.v20231122092030	2024-07-02 22:35:13.797+00
10202	Atlassian Audit Plugin	com.atlassian.audit.atlassian-audit-plugin	1.15.1	2024-07-02 22:35:13.797+00
10203	Atlassian Awareness Capability	com.atlassian.plugins.atlassian-awareness-capability	0.0.8	2024-07-02 22:35:13.797+00
10204	Atlassian Plugins - Web Resources REST	com.atlassian.plugins.atlassian-plugins-webresource-rest	6.0.5	2024-07-02 22:35:13.797+00
10205	Custom Field Types & Searchers	com.atlassian.jira.plugin.system.customfieldtypes	1.0	2024-07-02 22:35:13.797+00
10206	Atlassian Profiling - API Adaptor Plugin	com.atlassian.profiling.atlassian-profiling-adaptor-plugin	4.9.1	2024-07-02 22:35:13.797+00
10207	Project Creation Capability Product REST Plugin	com.atlassian.plugins.atlassian-project-creation-plugin	5.0.2	2024-07-02 22:35:13.797+00
10208	Atlassian Jira - Plugins - REST Plugin	com.atlassian.jira.rest	9.12.4	2024-07-02 22:35:13.797+00
10209	Atlassian Spring Scanner Runtime	com.atlassian.plugin.atlassian-spring-scanner-runtime	3.0.3	2024-07-02 22:35:13.797+00
10210	JIRA Software Czech (Czech Republic) Language Pack	tac.jira software.languages.cs_CZ	9.13.0.v20231122092030	2024-07-02 22:35:13.797+00
10211	Opensocial Plugin	com.atlassian.gadgets.opensocial	8.1.3	2024-07-02 22:35:13.797+00
10212	Atlassian Jira - Plugins - Confluence Link	com.atlassian.jira.jira-issue-link-confluence-plugin	9.12.4	2024-07-02 22:35:13.797+00
10213	ROME, RSS and atOM utilitiEs for Java	rome.rome-1.0	1.0	2024-07-02 22:35:13.797+00
10214	User Format	jira.user.format	1.0	2024-07-02 22:35:13.797+00
10215	JIRA Core Finnish (Finland) Language Pack	tac.jira core.languages.fi_FI	9.13.0.v20231122094559	2024-07-02 22:35:13.797+00
10216	JIRA Software Japanese (Japan) Language Pack	tac.jira software.languages.ja_JP	9.13.0.v20231122092030	2024-07-02 22:35:13.797+00
10217	View Project Operations Sections	jira.webfragments.view.project.operations	1.0	2024-07-02 22:35:13.797+00
10218	atlassian-servlet-plugin	com.atlassian.web.atlassian-servlet-plugin	6.0.1	2024-07-02 22:35:13.797+00
10219	Crowd REST API	crowd-rest-plugin	1.0	2024-07-02 22:35:13.797+00
10220	JIRA Software Polish (Poland) Language Pack	tac.jira software.languages.pl_PL	9.13.0.v20231122092030	2024-07-02 22:35:13.797+00
10221	Atlassian OAuth Consumer SPI	com.atlassian.oauth.atlassian-oauth-consumer-spi	5.0.7	2024-07-02 22:35:13.797+00
10222	Atlassian Jira - Plugins - Post-Upgrade Landing Page	com.atlassian.jira.plugins.jira-post-upgrade-landing-page-plugin	9.12.4	2024-07-02 22:35:13.797+00
10223	JIRA Core Hungarian (Hungary) Language Pack	tac.jira core.languages.hu_HU	9.13.0.v20231122094559	2024-07-02 22:35:13.797+00
10224	Atlassian Spring Scanner Annotations	com.atlassian.plugin.atlassian-spring-scanner-annotation	3.0.3	2024-07-02 22:35:13.797+00
10225	jackson-module-scala-2.10-provider	com.atlassian.scala.plugins.jackson-module-scala-2.10-provider-plugin	0.5	2024-07-02 22:35:13.797+00
10226	User anonymization in Jira Core	com.atlassian.jira.user.anonymize	1.0	2024-07-02 22:35:13.797+00
10227	Rich Text Editor for JIRA	com.atlassian.jira.plugins.jira-editor-plugin	7.5.0	2024-07-02 22:35:13.797+00
10228	Web Resources Plugin Jira Core	jira.core	1.0	2024-07-02 22:35:13.797+00
10229	Workflow Plugin	com.atlassian.jira.plugin.system.workflow	1.0	2024-07-02 22:35:13.797+00
10230	JIRA Software Dutch (Netherlands) Language Pack	tac.jira software.languages.nl_NL	9.13.0.v20231122092030	2024-07-02 22:35:13.797+00
10231	Icon Types Plugin	jira.icontypes	1.0	2024-07-02 22:35:13.797+00
10232	JIRA Core Norwegian (Norway) Language Pack	tac.jira core.languages.no_NO	9.13.0.v20231122094559	2024-07-02 22:35:13.797+00
10233	Atlassian WebHooks Plugin	com.atlassian.webhooks.atlassian-webhooks-plugin	3.3.11	2024-07-02 22:35:13.797+00
10234	Help Paths Plugin	jira.help.paths	1.0	2024-07-02 22:35:13.797+00
10235	Jira Base URL Plugin	com.atlassian.jira.jira-baseurl-plugin	3.3.0	2024-07-02 22:35:13.797+00
10236	Atlassian Jira - Plugins - Look And Feel Logo Upload Plugin	com.atlassian.jira.lookandfeel	9.12.4	2024-07-02 22:35:13.797+00
10237	Issue Status Plugin	com.atlassian.plugins.issue-status-plugin	2.2.4	2024-07-02 22:35:13.797+00
10238	Gadget Spec Publisher Plugin	com.atlassian.gadgets.publisher	8.1.3	2024-07-02 22:35:13.797+00
10239	Atlassian Jira - Plugins - OAuth Consumer SPI	com.atlassian.jira.oauth.consumer	9.12.4	2024-07-02 22:35:13.797+00
10240	Jira Agile	com.pyxis.greenhopper.jira	9.12.4	2024-07-02 22:35:13.797+00
10241	JIRA Software Estonian (Estonia) Language Pack	tac.jira software.languages.et_EE	8.15.0.v202103310031350	2024-07-02 22:35:13.797+00
10242	JIRA Core French (France) Language Pack	tac.jira core.languages.fr_FR	9.13.0.v20231122094559	2024-07-02 22:35:13.797+00
10243	Renderer Component Factories Plugin	com.atlassian.jira.plugin.wiki.renderercomponentfactories	1.0	2024-07-02 22:35:13.797+00
10244	Atlassian LESS Transformer Plugin	com.atlassian.plugins.less-transformer-plugin	5.0.5	2024-07-02 22:35:13.797+00
10245	Pocketknife Feature Flags Plugin	com.atlassian.pocketknife.featureflags-plugin	0.5.4	2024-07-02 22:35:13.797+00
10246	Jira Bamboo Plugin	com.atlassian.jira.plugin.ext.bamboo	9.12.4	2024-07-02 22:35:13.797+00
10247	Atlassian Jira - Plugins - Transition Trigger Plugin	com.atlassian.jira.plugins.jira-transition-triggers-plugin	9.12.4	2024-07-02 22:35:13.797+00
10248	Atlassian Front-End Runtime Plugin	com.atlassian.frontend.atlassian-frontend-runtime-plugin	0.5.0	2024-07-02 22:35:13.797+00
10249	Atlassian Bot Session Killer	com.atlassian.labs.atlassian-bot-killer	1.7.10	2024-07-02 22:35:13.797+00
10250	User Profile Panels	jira.user.profile.panels	1.0	2024-07-02 22:35:13.797+00
10251	scala-2.10-provider-plugin	com.atlassian.scala.plugins.scala-2.10-provider-plugin	0.16	2024-07-02 22:35:13.797+00
10252	JIRA Software Romanian (Romania) Language Pack	tac.jira software.languages.ro_RO	8.15.0.v202103310031350	2024-07-02 22:35:13.797+00
10253	Atlassian Jira - Plugins - ActiveObjects SPI	com.atlassian.jira.jira-activeobjects-spi-plugin	9.12.4	2024-07-02 22:35:13.797+00
10254	Atlassian Rate Limiting - Plugin	com.atlassian.ratelimiting.rate-limiting-plugin	2.1.7	2024-07-02 22:35:13.797+00
10255	JIRA Project Permissions	jira.system.project.permissions	1.0	2024-07-02 22:35:13.797+00
10256	Wallboard Plugin	com.atlassian.jirawallboard.atlassian-wallboard-plugin	6.0.0-b9977b5	2024-07-02 22:35:13.797+00
10257	Atlassian Jira - Plugins - User Profile Plugin	com.atlassian.jira.jira-user-profile-plugin	5.0.0	2024-07-02 22:35:13.797+00
10258	Project Templates Plugin	com.atlassian.jira.project-templates-plugin	8.1.5	2024-07-02 22:35:13.797+00
10259	Atlassian Notifications	com.atlassian.whisper.atlassian-whisper-plugin	6.0.4	2024-07-02 22:35:13.797+00
10260	Filter Deletion Warning Plugin	jira.filter.deletion.warning	1.0	2024-07-02 22:35:13.797+00
10261	Jira Software Monitor Plugin	com.atlassian.jira.plugins.jira-software-monitor-plugin	9.12.4	2024-07-02 22:35:13.797+00
10262	English (United States) Language Pack	com.atlassian.jira.jira-languages.en_US	9.12.4	2024-07-02 22:35:13.797+00
10263	Atlassian Jira - Plugins - LESS integration	com.atlassian.jira.jira-less-integration	9.12.4	2024-07-02 22:35:13.797+00
10264	Atlassian Jira - Plugins - SAL Plugin	com.atlassian.sal.jira	9.12.4	2024-07-02 22:35:13.797+00
10265	Atlassian Diagnostics - Plugin	com.atlassian.diagnostics.atlassian-diagnostics-plugin	3.1.1	2024-07-02 22:35:13.797+00
10266	Atlassian Template Renderer Velocity 1.6 Plugin	com.atlassian.templaterenderer.atlassian-template-renderer-velocity1.6-plugin	5.0.4	2024-07-02 22:35:13.797+00
10267	Atlassian Jira - Plugins - Mail Plugin	com.atlassian.jira.jira-mail-plugin	17.0.7	2024-07-02 22:35:13.797+00
10268	Atlassian Jira - Plugins - Closure Template Renderer	com.atlassian.jira.jira-soy-plugin	9.12.4	2024-07-02 22:35:13.797+00
10269	Jira Workflow Designer Plugin	com.atlassian.jira.plugins.jira-workflow-designer	9.1.2	2024-07-02 22:35:13.797+00
10270	Gadget Dashboard Plugin	com.atlassian.gadgets.dashboard	8.1.3	2024-07-02 22:35:13.797+00
10271	Atlassian - Administration - Quick Search - JIRA	com.atlassian.administration.atlassian-admin-quicksearch-jira	2.3.3	2024-07-02 22:35:13.797+00
10272	Advanced Roadmaps plans	com.atlassian.jpo	9.12.4	2024-07-02 22:35:13.797+00
10273	Web Panel Plugin	jira.webpanels	1.0	2024-07-02 22:35:13.797+00
10274	Applinks - Plugin - OAuth	com.atlassian.applinks.applinks-oauth-plugin	9.0.15	2024-07-02 22:35:13.797+00
10275	JIRA browser metrics integration plugin	com.atlassian.jira.plugins.jira-browser-metrics	3.1.2	2024-07-02 22:35:13.797+00
10276	JIRA Activity Stream Plugin	com.atlassian.streams.streams-jira-plugin	9.1.31	2024-07-02 22:35:13.797+00
10277	English (United Kingdom) Language Pack	com.atlassian.jira.jira-languages.en_UK	9.12.4	2024-07-02 22:35:13.797+00
10278	Static Assets (CDN) Plugin	com.atlassian.plugins.static-assets-url	2.0.1	2024-07-02 22:35:13.797+00
10279	JIRA Usage Hints	jira.usage.hints	1.0	2024-07-02 22:35:13.797+00
\.


--
-- Data for Name: portalpage; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.portalpage (id, username, pagename, description, sequence, fav_count, layout, ppversion) FROM stdin;
10000	\N	System Dashboard	\N	0	0	AA	0
\.


--
-- Data for Name: portletconfiguration; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.portletconfiguration (id, portalpage, portlet_id, column_number, positionseq, gadget_xml, color, dashboard_module_complete_key) FROM stdin;
10000	10000	\N	0	0	\N	\N	com.atlassian.jira.gadgets:introduction-dashboard-item
10002	10000	\N	1	0	rest/gadgets/1.0/g/com.atlassian.jira.gadgets:assigned-to-me-gadget/gadgets/assigned-to-me-gadget.xml	\N	\N
10003	10000	\N	1	1	rest/gadgets/1.0/g/com.atlassian.streams.streams-jira-plugin:activitystream-gadget/gadgets/activitystream-gadget.xml	\N	\N
\.


--
-- Data for Name: priority; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.priority (id, sequence, pname, description, iconurl, status_color) FROM stdin;
1	1	Highest	This problem will block progress.	/images/icons/priorities/highest.png	#ff7452
2	2	High	Serious problem that could block progress.	/images/icons/priorities/high.png	#ff8f73
3	3	Medium	Has the potential to affect progress.	/images/icons/priorities/medium.png	#ffab00
4	4	Low	Minor problem or easily worked around.	/images/icons/priorities/low.png	#0065ff
5	5	Lowest	Trivial problem with little or no impact on progress.	/images/icons/priorities/lowest.png	#2684ff
\.


--
-- Data for Name: productlicense; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.productlicense (id, license) FROM stdin;
10000	AAAB4Q0ODAoPeNqVUsFu2kAUvPsrLPXSHozWNhBAstTEbMEEbIJNmkq5PMzDbGPW1u4aSr6+tgFBS4rU487qzbyZN5+iAvVRkerE0s27nt3uNU3d7Ue6Raym5goExTLeB4VOhRjkziC2NmYxconRPkcfNui4wWRCZ653P9Z+MgGN4z9dsmraoX5EZ9OZF1LNLzYLFMFqLlFIxzBPVPRXzsT+QqdjEOtAlotsWcSqUT0Mma3UDgQ2IFZsi44SBWphsZCxYHktViN0C2kB53dNVLKDi1yhOIDpQXoIcu1MXOJ+e3KfWsHCbE3SAXS9dtzddcMheV//WCbviTeng53rfaergb94JMtF9Hgf8oiq6QjeXp2TEa/vjL1+SH1jbBG7Q5rN1i0boQJRLbSCVJZGUGxRlBQP0+GLMX8JbKM56AQGeXiOtDfcP5ehVZ7MNiF3pGPbppYIRL7O8hzFjdinhYjXIPHvQ15O18nkgslTqtR3/vTxgdZHFejj+Rqj0q0eHt3qn6sT6IcbfHnt6eczaRNgJcqBx//fhatSXS56WZQbHP8oxylxSwtEApzJY6lQKsYTzc24KgVouX3qbEDEmWwkgAq+xhmvVDKRcWzE2eagfbVpjV6teCPco2IN3xb8DZaVU/4wLAIUGf6z+ESNkFUt/3akTFWWW/UAlHsCFBOWDLOkOTKL9YnGUFRj+xLvnF85X02mq
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.project (id, pname, url, lead, description, pkey, pcounter, assigneetype, avatar, originalkey, projecttype) FROM stdin;
10000	test	\N	JIRAUSER10000	\N	TEST	16	3	10324	TEST	software
\.


--
-- Data for Name: project_key; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.project_key (id, project_id, project_key) FROM stdin;
10000	10000	TEST
\.


--
-- Data for Name: projectcategory; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.projectcategory (id, cname, description) FROM stdin;
\.


--
-- Data for Name: projectchangedtime; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.projectchangedtime (project_id, issue_changed_time) FROM stdin;
\.


--
-- Data for Name: projectrole; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.projectrole (id, name, description) FROM stdin;
10002	Administrators	A project role that represents administrators in a project
\.


--
-- Data for Name: projectroleactor; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.projectroleactor (id, pid, projectroleid, roletype, roletypeparameter) FROM stdin;
10002	\N	10002	atlassian-group-role-actor	jira-administrators
10100	10000	10002	atlassian-group-role-actor	jira-administrators
\.


--
-- Data for Name: projectversion; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.projectversion (id, project, vname, description, sequence, released, archived, url, startdate, releasedate) FROM stdin;
10000	10000	1.0	\N	1	true	\N	\N	\N	\N
\.


--
-- Data for Name: propertydata; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.propertydata (id, propertyvalue) FROM stdin;
\.


--
-- Data for Name: propertydate; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.propertydate (id, propertyvalue) FROM stdin;
10354	2024-07-02 22:38:25.121+00
\.


--
-- Data for Name: propertydecimal; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.propertydecimal (id, propertyvalue) FROM stdin;
\.


--
-- Data for Name: propertyentry; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.propertyentry (id, entity_name, entity_id, property_key, propertytype) FROM stdin;
6	jira.properties	1	jira.avatar.user.anonymous.id	5
7	jira.properties	1	jira.scheme.default.issue.type	5
9	jira.properties	1	jira.whitelist.disabled	1
10	jira.properties	1	jira.whitelist.rules	6
11	jira.properties	1	jira.option.timetracking	1
12	jira.properties	1	jira.timetracking.estimates.legacy.behaviour	1
13	jira.properties	1	jira.version	5
14	jira.properties	1	jira.downgrade.minimum.version	5
15	jira.properties	1	jira.option.allowunassigned	1
16	jira.properties	1	jira.path.index.use.default.directory	1
21	com.atlassian.jira.plugins.jira-workflow-designer	1	jira.workflow.layout:8a6044147cf2c19c02d099279cfbfd47	6
22	jira.properties	1	jira.onboarding.app_user.id.threshold	5
23	jira.properties	1	post.migration.page.displayed	1
1	jira.properties	1	jira.version.patched	5
2	jira.properties	1	jira.avatar.issuetype.subtask.default.id	5
3	jira.properties	1	jira.avatar.default.id	5
4	jira.properties	1	jira.avatar.issuetype.default.id	5
5	jira.properties	1	jira.avatar.user.default.id	5
10100	jira.properties	1	webwork.i18n.encoding	5
10101	jira.properties	1	jira.sid.key	5
10102	jira.properties	1	com.atlassian.jira.migration.jira-migration-plugin:emailConfig	5
10103	BambooServerProperties	1	bamboo.config.version	2
10104	GreenHopper.Run.History	1	lastRunVersion	6
10105	GreenHopper.Run.History	2	2024-07-02T22:35:05.559Z	6
10106	jira.properties	1	com.atlassian.audit.plugin:audit-config:retention:period	5
10107	jira.properties	1	AO_550953_#	5
10108	jira.properties	1	ops.bar.group.size.override.opsbar-transitions	5
10109	jira.properties	1	AO_60DB71_#	5
10110	jira.properties	1	com.atlassian.jira.plugins.inform.jira-inform-plugin:batching.interval.minutes	5
10111	jira.properties	1	com.atlassian.plugins.mail:mark-as-seen	5
10112	jira.properties	1	AO_E8B6CC_#	5
10113	jira.properties	1	dvcs.connector.bitbucket.url	5
10114	jira.properties	1	dvcs.connector.github.url	5
10115	jira.plugin.devstatus.datastorage	1	upgrade.state	5
10116	jira.properties	1	AO_A415DF_#	5
10117	jira.properties	1	com.atlassian.jira.util.index.IndexingCounterManagerImpl.counterValue	3
10118	jira.properties	1	jvm.system.timezone	5
10119	jira.properties	1	jira.webresource.superbatch.flushcounter	5
10120	jira.properties	1	AO_4AEACD_#	5
10121	jira.properties	1	jira.title	5
10122	jira.properties	1	AO_21D670_#	5
10125	com.atlassian.jira.user.flag.FlagDismissalServiceImpl	1	com.atlassian.jira.flag.resets	6
10127	jira.properties	1	jira.i18n.language.index	5
10128	jira.properties	1	jira.scheme.default.priority	5
10129	jira.properties	1	jira.webresource.flushcounter	5
10130	jira.properties	1	AO_589059_#	5
10131	jira.properties	1	crowd.encryption.encryptor.default	5
10132	jira.properties	1	crowd.encryption.encryptor.AES.keyPath	5
10133	jira.properties	1	jira.monitoring.jmx.enabled	1
10200	jira.properties	1	mailsetting.jira.mail.send.disabled.modifiedBy	5
10201	jira.properties	1	mailsetting.jira.mail.send.disabled.modifiedDate	5
10202	jira.properties	1	jira.baseurl	5
10203	jira.properties	1	jira.mode	5
10204	jira.properties	1	jira.option.allowattachments	1
10205	jira.properties	1	jira.path.attachments	5
10206	jira.properties	1	jira.path.attachments.use.default.directory	1
10207	jira.properties	1	webwork.multipart.maxSize	5
10208	ServiceConfig	10001	USE_DEFAULT_DIRECTORY	5
10209	jira.properties	1	jira.path.backup	5
10210	jira.properties	1	com.atlassian.jira.migration.jira-migration-plugin:cloudType	5
10211	jira.properties	1	AO_6FF49D_#	5
10212	jira.properties	1	jira.setup	5
10213	jira.properties	1	jira.initial.build.number	5
10214	jira.properties	1	jira.option.voting	1
10215	jira.properties	1	jira.option.watching	1
10216	jira.properties	1	jira.option.issuelinking	1
10217	jira.properties	1	jira.option.emailvisible	5
10300	jira.properties	1	jira.option.allowsubtasks	1
10301	jira.properties	1	com.atlassian.plugins.atlassian-whitelist-api-plugin:whitelist.enabled	5
10302	jira.properties	1	com.atlassian.jira.gadgets:build	5
10303	jira.properties	1	com.atlassian.jira.plugins.jira-bitbucket-connector-plugin:build	5
10304	GreenHopper.UpgradeHistory	1	2024-07-02T22:38:07.691Z	6
10305	GreenHopper.UpgradeHistory	2	2024-07-02T22:38:07.694Z	6
10306	GreenHopper.properties	1	GreenHopper.Upgrade.Latest.Upgraded.Version	3
10307	jira.properties	1	com.pyxis.greenhopper.jira:build	5
10308	GreenHopper.UpgradeHistory	1	2024-07-02T22:38:07.697Z	6
10309	GreenHopper.UpgradeHistory	2	2024-07-02T22:38:07.700Z	6
10310	GreenHopper.UpgradeHistory	1	2024-07-02T22:38:07.703Z	6
10311	GreenHopper.UpgradeHistory	2	2024-07-02T22:38:07.704Z	6
10312	GreenHopper.UpgradeHistory	1	2024-07-02T22:38:07.706Z	6
10313	GreenHopper.UpgradeHistory	2	2024-07-02T22:38:07.717Z	6
10314	GreenHopper.UpgradeHistory	1	2024-07-02T22:38:07.720Z	6
10315	GreenHopper.UpgradeHistory	2	2024-07-02T22:38:07.727Z	6
10316	GreenHopper.UpgradeHistory	1	2024-07-02T22:38:07.730Z	6
10317	GreenHopper.UpgradeHistory	2	2024-07-02T22:38:07.732Z	6
10318	GreenHopper.UpgradeHistory	1	2024-07-02T22:38:07.734Z	6
10319	GreenHopper.UpgradeHistory	2	2024-07-02T22:38:07.735Z	6
10320	jira.properties	1	com.atlassian.crowd.embedded.admin:build	5
10321	jira.properties	1	com.atlassian.plugins.atlassian-whitelist-core-plugin:build	5
10322	jira.properties	1	com.atlassian.sal.jira:build	5
10323	jira.properties	1	com.atlassian.jira.plugin.ext.bamboo:build	5
10324	jira.properties	1	com.atlassian.jira.jira-mail-plugin:build	5
10325	jira.properties	1	com.atlassian.plugins.custom_apps.hasCustomOrder	5
10326	jira.properties	1	com.atlassian.plugins.atlassian-nav-links-plugin:build	5
10327	jira.properties	1	com.atlassian.jira.plugins.jira-workflow-designer:build	5
10328	jira.properties	1	com.atlassian.jira.plugins.webhooks.jira-webhooks-plugin:build	5
10329	jira.properties	1	com.atlassian.jirawallboard.atlassian-wallboard-plugin:build	5
10330	jira.properties	1	com.atlassian.upm.atlassian-universal-plugin-manager-plugin:build	5
10331	jira.properties	1	com.atlassian.jira.lookandfeel:isDefaultFavicon	5
10332	jira.properties	1	com.atlassian.jira.lookandfeel:usingCustomFavicon	5
10333	jira.properties	1	com.atlassian.jira.lookandfeel:customDefaultFaviconURL	5
10334	jira.properties	1	com.atlassian.jira.lookandfeel:customDefaultFaviconHiresURL	5
10335	jira.properties	1	com.atlassian.jira.lookandfeel:faviconWidth	5
10336	jira.properties	1	com.atlassian.jira.lookandfeel:faviconHeight	5
10337	jira.properties	1	com.atlassian.jira.lookandfeel:build	5
10338	jira.properties	1	com.atlassian.plugins.authentication.atlassian-authentication-plugin:build	5
10339	jira.properties	1	com.atlassian.plugins.authentication.sso.config.sso-type	5
10340	jira.properties	1	com.atlassian.plugins.authentication.sso.config.show-login-form	5
10341	jira.properties	1	com.atlassian.plugins.authentication.sso.config.show-login-form-for-jsm	5
10342	jira.properties	1	com.atlassian.jira.project-templates-plugin:build	5
10343	jira.properties	1	com.atlassian.upm:notifications:notification-plugin.request	5
10344	jira.properties	1	com.atlassian.upm:notifications:notification-edition.mismatch	5
10348	jira.properties	1	com.atlassian.upm:notifications:notification-maintenance.nearlyexpired	5
10349	jira.properties	1	com.atlassian.upm:notifications:notification-license.expired	5
10350	jira.properties	1	com.atlassian.upm:notifications:notification-license.nearlyexpired	5
10351	GreenHopper.properties	1	GreenHopper.LexoRank.Default.customfield.id	3
10352	GreenHopper.properties	1	GreenHopper.EpicLink.Default.customfield.id	3
10353	admin.message.manager	1	user	5
10354	admin.message.manager	1	time	7
10355	admin.message.manager	1	task	5
10356	CustomField	10101	jira.translation.custom.fieldcustomfield_10101.name.en_UK	5
10357	CustomField	10101	jira.translation.custom.fieldcustomfield_10101.desc.en_UK	5
10358	CustomField	10101	jira.translation.custom.fieldcustomfield_10101.name.en	5
10359	CustomField	10101	jira.translation.custom.fieldcustomfield_10101.desc.en	5
10360	CustomField	10101	jira.translation.custom.fieldcustomfield_10101.name.en_US	5
10361	CustomField	10101	jira.translation.custom.fieldcustomfield_10101.desc.en_US	5
10362	GreenHopper.properties	1	GreenHopper.EpicStatus.Default.customfield.id	3
10363	CustomField	10102	jira.translation.custom.fieldcustomfield_10102.name.en_UK	5
10364	CustomField	10102	jira.translation.custom.fieldcustomfield_10102.desc.en_UK	5
10365	CustomField	10102	jira.translation.custom.fieldcustomfield_10102.name.en	5
10366	CustomField	10102	jira.translation.custom.fieldcustomfield_10102.desc.en	5
10367	CustomField	10102	jira.translation.custom.fieldcustomfield_10102.name.en_US	5
10368	CustomField	10102	jira.translation.custom.fieldcustomfield_10102.desc.en_US	5
10369	GreenHopper.properties	1	GreenHopper.EpicLabel.Default.customfield.id	3
10370	CustomField	10103	jira.translation.custom.fieldcustomfield_10103.name.en_UK	5
10371	CustomField	10103	jira.translation.custom.fieldcustomfield_10103.desc.en_UK	5
10372	CustomField	10103	jira.translation.custom.fieldcustomfield_10103.name.en	5
10373	CustomField	10103	jira.translation.custom.fieldcustomfield_10103.desc.en	5
10374	CustomField	10103	jira.translation.custom.fieldcustomfield_10103.name.en_US	5
10375	CustomField	10103	jira.translation.custom.fieldcustomfield_10103.desc.en_US	5
10376	GreenHopper.properties	1	GreenHopper.EpicColor.Default.customfield.id	3
10377	CustomField	10104	jira.translation.custom.fieldcustomfield_10104.name.en_UK	5
10378	CustomField	10104	jira.translation.custom.fieldcustomfield_10104.desc.en_UK	5
10379	CustomField	10104	jira.translation.custom.fieldcustomfield_10104.name.en	5
10380	CustomField	10104	jira.translation.custom.fieldcustomfield_10104.desc.en	5
10381	CustomField	10104	jira.translation.custom.fieldcustomfield_10104.name.en_US	5
10382	CustomField	10104	jira.translation.custom.fieldcustomfield_10104.desc.en_US	5
10383	GreenHopper.properties	1	GreenHopper.Sprint.Default.customfield.id	3
10384	GreenHopper.properties	1	GreenHopper.Sprint.Index.Check.Necessary	5
10385	CustomField	10105	jira.translation.custom.fieldcustomfield_10105.name.en_UK	5
10386	CustomField	10105	jira.translation.custom.fieldcustomfield_10105.desc.en_UK	5
10387	CustomField	10105	jira.translation.custom.fieldcustomfield_10105.name.en	5
10345	jira.properties	1	com.atlassian.upm:notifications:notification-evaluation.expired	5
10346	jira.properties	1	com.atlassian.upm:notifications:notification-evaluation.nearlyexpired	5
10347	jira.properties	1	com.atlassian.upm:notifications:notification-maintenance.expired	5
10388	CustomField	10105	jira.translation.custom.fieldcustomfield_10105.desc.en	5
10389	CustomField	10105	jira.translation.custom.fieldcustomfield_10105.name.en_US	5
10390	CustomField	10105	jira.translation.custom.fieldcustomfield_10105.desc.en_US	5
10391	GreenHopper.properties	1	GreenHopper.JIRA60.Version.Migration	1
10392	GreenHopper.properties	1	JIRA.Software.Simplified.Workflow.Upgraded	1
10393	jira.properties	1	com.atlassian.upm:notifications:notification-update	5
10394	GreenHopper.properties	1	GreenHopper.Epic.Default.issuetype.id	5
10395	IssueType	10000	jira.translation.issuetype10000.en_UK	5
10396	IssueType	10000	jira.translation.issuetype10000.en	5
10397	IssueType	10000	jira.translation.issuetype10000.en_US	5
10398	GreenHopper.properties	1	GreenHopper.Story.Default.issuetype.id	5
10399	GreenHopper.properties	1	GreenHopper.StoryPoints.Default.customfield.id	3
10400	GreenHopper.properties	1	GreenHopper.Epic.Default.linktype.id	3
10401	jira.properties	1	com.atlassian.analytics.client.configuration..policy_acknowledged	5
10402	jira.properties	1	com.atlassian.analytics.client.configuration.uuid	5
10403	jira.properties	1	com.atlassian.analytics.client.configuration.serverid	5
10404	jira.properties	1	com.atlassian.analytics.client.configuration..analytics_enabled	5
10405	jira.properties	1	com.atlassian.troubleshooting.thready.configuration.enabled	5
10406	jpo-team-management	1	com.atlassian.teams:rm-teams-custom-field-team	3
10407	jira-portfolio	1	com.atlassian.jpo:jpo-custom-field-parent	3
10408	jira-portfolio	1	com.atlassian.jpo:jpo-custom-field-baseline-start	3
10409	jira-portfolio	1	com.atlassian.jpo:jpo-custom-field-baseline-end	3
10410	jira-portfolio	1	com.atlassian.jpo:jpo-custom-field-original-story-points	3
10412	jira.properties	1	com.atlassian.streams.InlineActivityStream:loaded.from.jira.projects	5
10413	jira.properties	1	com.atlassian.plugins.oauth2.provider.jwt.secret	5
10414	jira.properties	1	jira-header-plugin.studio-tab-migration-complete	5
10415	fisheye-jira-plugin.properties	1	Upgrade Conditions Applied	5
10416	fisheye-jira-plugin.properties	1	FISH-375-fixed	5
10417	fisheye-jira-plugin.properties	1	fisheye.ual.migration.complete	5
10418	fisheye-jira-plugin.properties	1	fisheye.ual.crucible.enabled.property.fix.complete	5
10419	fisheye-jira-plugin.properties	1	Perforce Update Applied	5
10420	ApplicationUser	10000	jira.onboarding.first.use.flow.started	5
10421	jira.properties	1	com.atlassian.jira.onboarding.postsetup.AppPropertiesPostSetupAnnouncementStore.all	6
10422	ApplicationUser	10000	newsletter.signup.first.view	3
10423	jira.properties	1	com.atlassian.analytics.client.configuration..logged_base_analytics_data	5
10424	ApplicationUser	10000	jira.onboarding.first.use.flow.current.sequence	5
10425	ApplicationUser	10000	jira.onboarding.first.use.flow.completed	1
10426	jira.properties	1	com.pyxis.greenhopper.jira:default.permission.scheme.id	5
10427	ApplicationUser	10000	com.atlassian.jira.jira-projects-plugin:release-page.badge	2
10428	ApplicationUser	10000	last-visited-item.10000	5
10500	jira.properties	1	com.atlassian.jira.upgrade.untranslatedkeyfixer.disabled	5
10501	ApplicationUser	10000	com.atlassian.jira.flag.dismissals	6
10502	ApplicationUser	10000	jira.onboarding.first.use.flow.resolved	1
10503	jira.properties	1	org.apache.shindig.common.crypto.BlobCrypter:key	5
10504	ApplicationUser	10000	jira.user.suppressedTips.qs-onboarding-tip	1
10505	user.format.mapping	1	fullName	5
10600	ApplicationUser	10000	class com.atlassian.jira.web.action.AbstractPluggableTabPanelAction	6
10411	jira.properties	1	com.atlassian.upm.log.PluginSettingsAuditLogService:log:upm_audit_log_v3	6
10700	user.format.mapping	1	profileLink	5
10701	ApplicationUser	10000	atl.jira.admin.current.project	5
10702	ApplicationUser	10000	atl.jira.admin.current.project.tab	5
10703	ApplicationUser	10000	atl.jira.admin.current.project.return.url	5
10704	ApplicationUser	10000	jira.user.suppressedTips.permission-helper-helptip	1
10705	ApplicationUser	10000	jira.user.suppressedTips.add.new.users	1
\.


--
-- Data for Name: propertynumber; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.propertynumber (id, propertyvalue) FROM stdin;
9	0
11	1
12	0
15	1
16	1
23	1
10103	22
10133	1
10204	1
10206	1
10214	1
10215	1
10216	1
10117	1
10300	1
10306	52
10351	10100
10352	10101
10362	10102
10369	10103
10376	10104
10383	10105
10391	1
10392	1
10399	10106
10400	10200
10406	10107
10407	10108
10408	10109
10409	10110
10410	10111
10422	1719959914150
10425	1
10502	1
10504	1
10704	1
10705	1
10427	3
\.


--
-- Data for Name: propertystring; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.propertystring (id, propertyvalue) FROM stdin;
10212	true
10213	9120004
10217	show
10302	1
10303	3
10394	10000
10395	Epic\nCreated by Jira Software - do not edit or delete. Issue type for a big user story that needs to be broken down.
10396	Epic\nCreated by Jira Software - do not edit or delete. Issue type for a big user story that needs to be broken down.
10397	Epic\nCreated by Jira Software - do not edit or delete. Issue type for a big user story that needs to be broken down.
10127	english-moderate-stemming
10128	10101
10129	1dlckms
10131	AES_CBC_PKCS5Padding
10307	52
10132	KEY_DIR/javax.crypto.spec.SecretKeySpec_1719959714244
1	9120004
10320	3
13	9.12.4
14	7.1.2
10301	true
10321	4
10200	
10201	1719959714322
10322	2
10323	1
10324	2
10325	false
10326	1
10327	1
10398	10001
10328	3
10329	6086
10330	5
10331	false
10332	false
10333	/favicon.ico
10334	/images/64jira.png
10335	64
10336	64
10337	1
10412	true
10130	27
10202	http://localhost:8080
10203	private
10205	/var/atlassian/application-data/jira/data/attachments
10207	10485760
10209	/var/atlassian/application-data/jira/export
10210	{"STANDARD":true,"FEDRAMP":false}
10339	NONE
10402	645eef33-e7ad-49b3-9ba3-8acad4c49c99
10403	BPHX-UXO3-4G8O-0BVT
10340	true
10341	true
10338	6
10342	2001
10211	10
10208	true
10119	4
10344	#java.util.List\n
10345	#java.util.List\n
10346	#java.util.List\n
10347	#java.util.List\n
10348	#java.util.List\n
10349	#java.util.List\n
10350	#java.util.List\n
2	10316
3	10011
4	10300
5	10122
6	10123
7	10000
22	0
10100	UTF-8
10101	BPHX-UXO3-4G8O-0BVT
10102	{"tombstoneScope":"BEFORE_DAY","duplicateMergeScope":"BEFORE_DAY","tombstoneDate":"1900-01-01","duplicateMergeDate":"1900-01-01"}
10106	P20Y
10107	1
10108	0
10109	1
10110	1
10111	true
10356	Epic Link
10357	Choose an epic to assign this issue to.
10358	Epic Link
10359	Choose an epic to assign this issue to.
10360	Epic Link
10361	Choose an epic to assign this issue to.
10113	https://bitbucket.org
10114	https://github.com
10404	true
10405	true
10363	Epic Status
10364	Epic Status field for Jira Software use only.
10365	Epic Status
10366	Epic Status field for Jira Software use only.
10112	18
10115	UPGRADED
10367	Epic Status
10368	Epic Status field for Jira Software use only.
10353	
10355	Portfolio custom fields searching
10118	Etc/UTC
10370	Epic Name
10371	Provide a short name to identify this epic.
10372	Epic Name
10373	Provide a short name to identify this epic.
10374	Epic Name
10375	Provide a short name to identify this epic.
10413	091253644fd98779aaf357e49651d93173f7c798a78cdb74da8c931072921e30
10414	migrated
10377	Epic Colour
10378	Epic Colour field for Jira Software use only.
10116	1940
10120	1
10121	Jira
10122	1
10379	Epic Colour
10380	Epic Colour field for Jira Software use only.
10381	Epic Colour
10382	Epic Colour field for Jira Software use only.
10415	1
10416	1
10384	true
10385	Sprint
10386	Jira Software sprint field
10387	Sprint
10388	Jira Software sprint field
10389	Sprint
10390	Jira Software sprint field
10417	1
10418	1
10419	1
10420	cyoaFirstUseFlow
10423	true
10424	cyoa:return
10426	10000
10500	true
10401	true
10343	#java.util.List\n
10428	com.pyxis.greenhopper.jira:project-sidebar-work-kanban
10503	cmhzICYCl/HlGvNbu/6o/BzGxSAue0CQ06Kjj80B8ac=
10505	jira.user.format:full-name-user-format
10393	#java.util.List\ncom.codebarrel.addons.automation\ncom.atlassian.jira.migration.jira-migration-plugin\ncom.atlassian.plugins.authentication.atlassian-authentication-plugin\ncom.atlassian.troubleshooting.plugin-jira
10700	jira.user.format:profile-link-user-format
10701	TEST
10702	permissions
10703	/plugins/servlet/project-config/TEST/permissions
\.


--
-- Data for Name: propertytext; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.propertytext (id, propertyvalue) FROM stdin;
10	http://www.atlassian.com/*\n
21	{\n    "edgeMap": {\n        "1DEDB66F-FE5C-EDFD-54D0-4D19CDC8CECA": {\n            "actionId": 5,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1806.5,\n                    "y": 434.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1801.0,\n                    "y": 115.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1801.0,\n                "y": 115.0\n            },\n            "endStepId": 4,\n            "id": "1DEDB66F-FE5C-EDFD-54D0-4D19CDC8CECA",\n            "label": "Resolve Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1776.85,\n                "y": 355.25\n            },\n            "lineType": "straight",\n            "startNodeId": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1806.5,\n                "y": 434.0\n            },\n            "startStepId": 5\n        },\n        "3DF7CEC8-9FBC-C0D0-AFB1-4D19CE6EA230": {\n            "actionId": 2,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1469.5,\n                    "y": 113.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1614.0,\n                    "y": 226.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1614.0,\n                "y": 226.0\n            },\n            "endStepId": 6,\n            "id": "3DF7CEC8-9FBC-C0D0-AFB1-4D19CE6EA230",\n            "label": "Close Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1492.25,\n                "y": 154.25\n            },\n            "lineType": "straight",\n            "startNodeId": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1469.5,\n                "y": 113.0\n            },\n            "startStepId": 1\n        },\n        "483797F1-1BF4-5E0F-86C6-4D19CE6023A2": {\n            "actionId": 5,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1469.5,\n                    "y": 113.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1763.0,\n                    "y": 113.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1763.0,\n                "y": 113.0\n            },\n            "endStepId": 4,\n            "id": "483797F1-1BF4-5E0F-86C6-4D19CE6023A2",\n            "label": "Resolve Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1551.0,\n                "y": 104.0\n            },\n            "lineType": "straight",\n            "startNodeId": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1469.5,\n                "y": 113.0\n            },\n            "startStepId": 1\n        },\n        "517D7F32-20FB-309E-8639-4D19CE2ACB54": {\n            "actionId": 5,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1434.0,\n                    "y": 435.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1435.0,\n                    "y": 490.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1947.0,\n                    "y": 494.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1950.0,\n                    "y": 118.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1763.0,\n                    "y": 113.0\n                }\n            ],\n            "controlPoints": [\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1435.0,\n                    "y": 490.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1947.0,\n                    "y": 494.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1950.0,\n                    "y": 118.0\n                }\n            ],\n            "endNodeId": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1763.0,\n                "y": 113.0\n            },\n            "endStepId": 4,\n            "id": "517D7F32-20FB-309E-8639-4D19CE2ACB54",\n            "label": "Resolve Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1631.25,\n                "y": 479.5\n            },\n            "lineType": "poly",\n            "startNodeId": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1434.0,\n                "y": 435.0\n            },\n            "startStepId": 3\n        },\n        "58BD4605-5FB9-84EA-6952-4D19CE7B454B": {\n            "actionId": 1,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1470.0,\n                    "y": 16.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1469.5,\n                    "y": 113.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1469.5,\n                "y": 113.0\n            },\n            "endStepId": 1,\n            "id": "58BD4605-5FB9-84EA-6952-4D19CE7B454B",\n            "label": "Create Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1475.5,\n                "y": 48.5\n            },\n            "lineType": "straight",\n            "startNodeId": "15174530-AE75-04E0-1D9D-4D19CD200835",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1470.0,\n                "y": 16.0\n            },\n            "startStepId": 1\n        },\n        "92D3DEFD-13AC-06A7-E5D8-4D19CE537791": {\n            "actionId": 4,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1439.5,\n                    "y": 116.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1393.0,\n                    "y": 116.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1390.0,\n                    "y": 434.0\n                }\n            ],\n            "controlPoints": [\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1393.0,\n                    "y": 116.0\n                }\n            ],\n            "endNodeId": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1390.0,\n                "y": 434.0\n            },\n            "endStepId": 3,\n            "id": "92D3DEFD-13AC-06A7-E5D8-4D19CE537791",\n            "label": "Start Progress",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1323.65,\n                "y": 193.75\n            },\n            "lineType": "poly",\n            "startNodeId": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1439.5,\n                "y": 116.0\n            },\n            "startStepId": 1\n        },\n        "C049EE11-C5BB-F93B-36C3-4D19CDF12B8F": {\n            "actionId": 3,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1677.0,\n                    "y": 227.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1767.05,\n                    "y": 230.05\n                },\n                {\n                    "positiveController": null,\n                    "x": 1773.5,\n                    "y": 425.0\n                }\n            ],\n            "controlPoints": [\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1767.05,\n                    "y": 230.05\n                }\n            ],\n            "endNodeId": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1773.5,\n                "y": 425.0\n            },\n            "endStepId": 5,\n            "id": "C049EE11-C5BB-F93B-36C3-4D19CDF12B8F",\n            "label": "Reopen Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1703.85,\n                "y": 218.5\n            },\n            "lineType": "poly",\n            "startNodeId": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1677.0,\n                "y": 227.0\n            },\n            "startStepId": 6\n        },\n        "C9EA1792-2332-8B56-A04D-4D19CD725367": {\n            "actionId": 301,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1465.0,\n                    "y": 436.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1469.5,\n                    "y": 113.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1469.5,\n                "y": 113.0\n            },\n            "endStepId": 1,\n            "id": "C9EA1792-2332-8B56-A04D-4D19CD725367",\n            "label": "Stop Progress",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1407.8,\n                "y": 308.5\n            },\n            "lineType": "straight",\n            "startNodeId": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1465.0,\n                "y": 436.0\n            },\n            "startStepId": 3\n        },\n        "CAF37138-6321-E03A-8E41-4D19CDD7DC78": {\n            "actionId": 2,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1764.5,\n                    "y": 430.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1614.0,\n                    "y": 226.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1614.0,\n                "y": 226.0\n            },\n            "endStepId": 6,\n            "id": "CAF37138-6321-E03A-8E41-4D19CDD7DC78",\n            "label": "Close Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1677.65,\n                "y": 365.0\n            },\n            "lineType": "straight",\n            "startNodeId": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1764.5,\n                "y": 430.0\n            },\n            "startStepId": 5\n        },\n        "E1F8462A-8B0A-87EA-4F70-4D19CE423C83": {\n            "actionId": 2,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1488.0,\n                    "y": 430.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1614.0,\n                    "y": 226.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1614.0,\n                "y": 226.0\n            },\n            "endStepId": 6,\n            "id": "E1F8462A-8B0A-87EA-4F70-4D19CE423C83",\n            "label": "Close Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1492.0,\n                "y": 345.0\n            },\n            "lineType": "straight",\n            "startNodeId": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1488.0,\n                "y": 430.0\n            },\n            "startStepId": 3\n        },\n        "E27D8EB8-8E49-430B-8FCB-4D19CE127171": {\n            "actionId": 3,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1840.0,\n                    "y": 130.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1846.5,\n                    "y": 428.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1846.5,\n                "y": 428.0\n            },\n            "endStepId": 5,\n            "id": "E27D8EB8-8E49-430B-8FCB-4D19CE127171",\n            "label": "Reopen Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1814.05,\n                "y": 169.5\n            },\n            "lineType": "straight",\n            "startNodeId": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1840.0,\n                "y": 130.0\n            },\n            "startStepId": 4\n        },\n        "F79E742D-A9E4-0124-D7D4-4D19CDE48C9C": {\n            "actionId": 4,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1806.5,\n                    "y": 434.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1434.0,\n                    "y": 435.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1434.0,\n                "y": 435.0\n            },\n            "endStepId": 3,\n            "id": "F79E742D-A9E4-0124-D7D4-4D19CDE48C9C",\n            "label": "Start Progress",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1607.25,\n                "y": 423.5\n            },\n            "lineType": "straight",\n            "startNodeId": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1806.5,\n                "y": 434.0\n            },\n            "startStepId": 5\n        },\n        "FD6BA267-475B-70B3-8AA4-4D19CE00BCD1": {\n            "actionId": 701,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1763.0,\n                    "y": 113.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1614.0,\n                    "y": 226.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1614.0,\n                "y": 226.0\n            },\n            "endStepId": 6,\n            "id": "FD6BA267-475B-70B3-8AA4-4D19CE00BCD1",\n            "label": "Close Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1635.75,\n                "y": 152.25\n            },\n            "lineType": "straight",\n            "startNodeId": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1763.0,\n                "y": 113.0\n            },\n            "startStepId": 4\n        }\n    },\n    "nodeMap": {\n        "0740FFFA-2AA1-C90A-38ED-4D19CD61899B": {\n            "id": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "inLinkIds": [\n                "F79E742D-A9E4-0124-D7D4-4D19CDE48C9C",\n                "92D3DEFD-13AC-06A7-E5D8-4D19CE537791"\n            ],\n            "isInitialAction": false,\n            "label": "In Progress",\n            "outLinkIds": [\n                "C9EA1792-2332-8B56-A04D-4D19CD725367",\n                "517D7F32-20FB-309E-8639-4D19CE2ACB54",\n                "E1F8462A-8B0A-87EA-4F70-4D19CE423C83"\n            ],\n            "rect": {\n                "height": 45.0,\n                "positiveController": null,\n                "width": 146.0,\n                "x": 1373.0,\n                "y": 419.0\n            },\n            "stepId": 3\n        },\n        "15174530-AE75-04E0-1D9D-4D19CD200835": {\n            "id": "15174530-AE75-04E0-1D9D-4D19CD200835",\n            "inLinkIds": [],\n            "isInitialAction": true,\n            "label": "Create Issue",\n            "outLinkIds": [\n                "58BD4605-5FB9-84EA-6952-4D19CE7B454B"\n            ],\n            "rect": {\n                "height": 45.0,\n                "positiveController": null,\n                "width": 157.0,\n                "x": 1405.0,\n                "y": 0.0\n            },\n            "stepId": 1\n        },\n        "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34": {\n            "id": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "inLinkIds": [\n                "CAF37138-6321-E03A-8E41-4D19CDD7DC78",\n                "E1F8462A-8B0A-87EA-4F70-4D19CE423C83",\n                "FD6BA267-475B-70B3-8AA4-4D19CE00BCD1",\n                "3DF7CEC8-9FBC-C0D0-AFB1-4D19CE6EA230"\n            ],\n            "isInitialAction": false,\n            "label": "Closed",\n            "outLinkIds": [\n                "C049EE11-C5BB-F93B-36C3-4D19CDF12B8F"\n            ],\n            "rect": {\n                "height": 45.0,\n                "positiveController": null,\n                "width": 120.0,\n                "x": 1569.0,\n                "y": 210.0\n            },\n            "stepId": 6\n        },\n        "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D": {\n            "id": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "inLinkIds": [\n                "517D7F32-20FB-309E-8639-4D19CE2ACB54",\n                "1DEDB66F-FE5C-EDFD-54D0-4D19CDC8CECA",\n                "483797F1-1BF4-5E0F-86C6-4D19CE6023A2"\n            ],\n            "isInitialAction": false,\n            "label": "Resolved",\n            "outLinkIds": [\n                "FD6BA267-475B-70B3-8AA4-4D19CE00BCD1",\n                "E27D8EB8-8E49-430B-8FCB-4D19CE127171"\n            ],\n            "rect": {\n                "height": 44.0,\n                "positiveController": null,\n                "width": 137.0,\n                "x": 1709.0,\n                "y": 97.0\n            },\n            "stepId": 4\n        },\n        "778534F4-7595-88B6-45E1-4D19CD518712": {\n            "id": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "inLinkIds": [\n                "C9EA1792-2332-8B56-A04D-4D19CD725367",\n                "58BD4605-5FB9-84EA-6952-4D19CE7B454B"\n            ],\n            "isInitialAction": false,\n            "label": "Open",\n            "outLinkIds": [\n                "92D3DEFD-13AC-06A7-E5D8-4D19CE537791",\n                "483797F1-1BF4-5E0F-86C6-4D19CE6023A2",\n                "3DF7CEC8-9FBC-C0D0-AFB1-4D19CE6EA230"\n            ],\n            "rect": {\n                "height": 45.0,\n                "positiveController": null,\n                "width": 106.0,\n                "x": 1429.5,\n                "y": 97.0\n            },\n            "stepId": 1\n        },\n        "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB": {\n            "id": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "inLinkIds": [\n                "E27D8EB8-8E49-430B-8FCB-4D19CE127171",\n                "C049EE11-C5BB-F93B-36C3-4D19CDF12B8F"\n            ],\n            "isInitialAction": false,\n            "label": "Reopened",\n            "outLinkIds": [\n                "1DEDB66F-FE5C-EDFD-54D0-4D19CDC8CECA",\n                "CAF37138-6321-E03A-8E41-4D19CDD7DC78",\n                "F79E742D-A9E4-0124-D7D4-4D19CDE48C9C"\n            ],\n            "rect": {\n                "height": 45.0,\n                "positiveController": null,\n                "width": 142.0,\n                "x": 1749.5,\n                "y": 418.0\n            },\n            "stepId": 5\n        }\n    },\n    "rootIds": [\n        "15174530-AE75-04E0-1D9D-4D19CD200835"\n    ],\n    "width": 1136\n}\n
10105	<map>\n  <entry>\n    <string>pluginVersion</string>\n    <string>9.12.4</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2024-07-02T22:35:05.557Z</string>\n  </entry>\n  <entry>\n    <string>buildDate</string>\n    <string>2024-02-12T13:11:09.962Z</string>\n  </entry>\n  <entry>\n    <string>latestUpgradeTaskRun</string>\n    <string>0</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>fd3a32b58a88f577</string>\n  </entry>\n</map>
10125	{"com.atlassian.jira.reindex.required":1719959905122}
10304	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>9.12.4</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2024-07-02T22:38:07.691Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>46</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>fd3a32b58a88f577</string>\n  </entry>\n</map>
10305	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>2</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>9.12.4</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2024-07-02T22:38:07.694Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>46</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>fd3a32b58a88f577</string>\n  </entry>\n</map>
10308	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>9.12.4</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2024-07-02T22:38:07.697Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>47</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>fd3a32b58a88f577</string>\n  </entry>\n</map>
10309	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>2</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>9.12.4</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2024-07-02T22:38:07.700Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>47</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>fd3a32b58a88f577</string>\n  </entry>\n</map>
10310	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>9.12.4</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2024-07-02T22:38:07.703Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>48</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>fd3a32b58a88f577</string>\n  </entry>\n</map>
10311	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>9.12.4</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2024-07-02T22:38:07.704Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>48</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>fd3a32b58a88f577</string>\n  </entry>\n</map>
10312	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>9.12.4</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2024-07-02T22:38:07.706Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>49</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>fd3a32b58a88f577</string>\n  </entry>\n</map>
10313	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>11</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>9.12.4</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2024-07-02T22:38:07.717Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>49</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>fd3a32b58a88f577</string>\n  </entry>\n</map>
10314	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>9.12.4</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2024-07-02T22:38:07.720Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>50</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>fd3a32b58a88f577</string>\n  </entry>\n</map>
10315	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>6</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>9.12.4</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2024-07-02T22:38:07.727Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>50</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>fd3a32b58a88f577</string>\n  </entry>\n</map>
10316	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>9.12.4</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2024-07-02T22:38:07.730Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>51</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>fd3a32b58a88f577</string>\n  </entry>\n</map>
10317	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>9.12.4</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2024-07-02T22:38:07.732Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>51</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>fd3a32b58a88f577</string>\n  </entry>\n</map>
10318	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>9.12.4</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2024-07-02T22:38:07.734Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>52</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>fd3a32b58a88f577</string>\n  </entry>\n</map>
10319	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>0</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>9.12.4</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2024-07-02T22:38:07.735Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>52</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>fd3a32b58a88f577</string>\n  </entry>\n</map>
10421	app.properties.setup=FULLFILLED;create.user.mail.properties.setup=ANNOUNCED;database.setup=AWAITS;mail.properties.setup=ANNOUNCE
10600	com.atlassian.pats.pats-plugin:jira-user-personal-access-tokens
10104	<map>\n  <entry>\n    <string>pluginVersion</string>\n    <string>9.12.4</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2024-07-03T17:24:28.840Z</string>\n  </entry>\n  <entry>\n    <string>buildDate</string>\n    <string>2024-02-12T13:11:09.962Z</string>\n  </entry>\n  <entry>\n    <string>latestUpgradeTaskRun</string>\n    <string>0</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>fd3a32b58a88f577</string>\n  </entry>\n</map>
10411	#java.util.List\n{"userKey":"JIRA","date":1720027485593,"i18nKey":"upm.auditLog.upm.startup","entryType":"UPM_STARTUP","params":[]}\n{"userKey":"JIRA","date":1719962108945,"i18nKey":"upm.auditLog.upm.startup","entryType":"UPM_STARTUP","params":[]}\n{"userKey":"JIRA","date":1719959905132,"i18nKey":"upm.auditLog.upm.startup","entryType":"UPM_STARTUP","params":[]}
10501	{"com.atlassian.jira.tzdetect.-28800000,-25200000":1719962131754,"com.atlassian.jira.reindex.required":1719962148330}
\.


--
-- Data for Name: qrtz_calendars; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.qrtz_calendars (id, calendar_name, calendar) FROM stdin;
\.


--
-- Data for Name: qrtz_cron_triggers; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.qrtz_cron_triggers (id, trigger_id, cronexperssion) FROM stdin;
\.


--
-- Data for Name: qrtz_fired_triggers; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.qrtz_fired_triggers (id, entry_id, trigger_id, trigger_listener, fired_time, trigger_state) FROM stdin;
\.


--
-- Data for Name: qrtz_job_details; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.qrtz_job_details (id, job_name, job_group, class_name, is_durable, is_stateful, requests_recovery, job_data) FROM stdin;
\.


--
-- Data for Name: qrtz_job_listeners; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.qrtz_job_listeners (id, job, job_listener) FROM stdin;
\.


--
-- Data for Name: qrtz_simple_triggers; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.qrtz_simple_triggers (id, trigger_id, repeat_count, repeat_interval, times_triggered) FROM stdin;
\.


--
-- Data for Name: qrtz_trigger_listeners; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.qrtz_trigger_listeners (id, trigger_id, trigger_listener) FROM stdin;
\.


--
-- Data for Name: qrtz_triggers; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.qrtz_triggers (id, trigger_name, trigger_group, job, next_fire, trigger_state, trigger_type, start_time, end_time, calendar_name, misfire_instr) FROM stdin;
\.


--
-- Data for Name: reindex_component; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.reindex_component (id, request_id, affected_index, entity_type) FROM stdin;
10100	10000	ISSUE	NONE
10101	10000	COMMENT	NONE
10102	10000	CHANGEHISTORY	NONE
10103	10000	WORKLOG	NONE
10104	10001	ISSUE	NONE
10105	10001	COMMENT	NONE
10106	10001	CHANGEHISTORY	NONE
10107	10001	WORKLOG	NONE
\.


--
-- Data for Name: reindex_request; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.reindex_request (id, type, request_time, start_time, completion_time, status, execution_node_id, query) FROM stdin;
10000	IMMEDIATE	2024-07-02 22:35:14.051+00	2024-07-02 22:38:07.58+00	2024-07-02 22:38:07.624+00	COMPLETE	\N	\N
10001	IMMEDIATE	2024-07-02 22:35:14.282+00	2024-07-02 22:38:07.58+00	2024-07-02 22:38:07.624+00	COMPLETE	\N	\N
\.


--
-- Data for Name: remembermetoken; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.remembermetoken (id, created, token, username) FROM stdin;
\.


--
-- Data for Name: remotelink; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.remotelink (id, issueid, globalid, title, summary, url, iconurl, icontitle, relationship, resolved, statusname, statusdescription, statusiconurl, statusicontitle, statusiconlink, statuscategorykey, statuscategorycolorname, applicationtype, applicationname) FROM stdin;
\.


--
-- Data for Name: replicatedindexoperation; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.replicatedindexoperation (id, index_time, node_id, affected_index, entity_type, affected_ids, versions, operation, filename) FROM stdin;
\.


--
-- Data for Name: resolution; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.resolution (id, sequence, pname, description, iconurl) FROM stdin;
10000	1	Done	Work has been completed on this issue.	\N
10001	2	Won't Do	This issue won't be actioned.	\N
10002	3	Duplicate	The problem is a duplicate of an existing issue.	\N
10003	4	Cannot Reproduce	All attempts at reproducing this issue failed, or not enough information was available to reproduce the issue. Reading the code produces no clues as to why this behavior would occur. If more information appears later, please reopen the issue.	\N
\.


--
-- Data for Name: rundetails; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.rundetails (id, job_id, start_time, run_duration, run_outcome, info_message) FROM stdin;
10007	atlassian.audit.cache.build	2024-07-02 22:35:14.336+00	16	S	
11224	LastAccessedTimeBatcherJob	2024-07-03 17:45:25.465+00	11	S	
11225	com.codebarrel.jira.plugin.automation.schedule.RuleInsightsUpdateScheduler.MINUTE.job	2024-07-03 17:45:45.45+00	20	S	
11226	com.atlassian.jira.plugins.inform.batching.cron.BatchNotificationJobSchedulerImpl	2024-07-03 17:45:45.537+00	9	S	
10103	LocalPluginLicenseNotificationJob-job	2024-07-02 22:38:08.006+00	25	S	
10962	jira-migration-analytics-events-dispatcher-job-id	2024-07-03 17:29:26.911+00	25	S	Analytics event dispatching job finished without sending events due to valid container token missing
11227	com.codebarrel.jira.plugin.automation.schedule.RulePollerServiceLauncher.job	2024-07-03 17:45:46.202+00	7	S	
11228	SettingsReloaderJob	2024-07-03 17:45:46.282+00	7	S	
11229	com.codebarrel.jira.plugin.automation.schedule.RuleScheduleServiceLauncher.job	2024-07-03 17:45:46.282+00	7	S	
11230	CompatibilityPluginScheduler.JobId.LEXO_RANK_SCHEDULER_JOB	2024-07-03 17:45:46.364+00	5	S	
10963	com.atlassian.jira.versioning.VersioningCleanupService	2024-07-03 17:29:33.716+00	20	S	
11231	com.atlassian.jira.plugin.cluster.monitoring.internal.job.ApplicationStatusCollector	2024-07-03 17:45:46.366+00	4	S	
11232	com.atlassian.jira.plugins.dvcs.scheduler.hooks.migration.HookMigrationJobRunner:job	2024-07-03 17:45:46.368+00	11	S	
11233	class com.atlassian.scheduler.core.util.JobRunnerRegistry:com.atlassian.cluster.monitoring.cluster-monitoring-plugin:runtime-information	2024-07-03 17:45:46.414+00	3	S	
11234	JiraPluginScheduler:LEXO_RANK_STATS_COLLECTOR_JOB	2024-07-03 17:45:46.461+00	0	S	
11235	com.atlassian.plugins.authentication.impl.basicauth.job.UpdateBasicAuthConfigJob:job	2024-07-03 17:45:46.5+00	1	S	
11236	com.atlassian.jira.plugin.ext.bamboo.service.PlanStatusUpdateJob-job	2024-07-03 17:45:46.5+00	2	S	
11043	jira-migration-analytics-server-analysis-job-id	2024-07-03 17:34:26.917+00	231	S	
10218	82ce7c56-95bd-4822-bca8-6a2251afbd07	2024-07-02 23:15:21.853+00	29	S	
10220	29c19f98-f7ef-419a-a1c0-ecb9ba2fb9b6	2024-07-02 23:15:21.854+00	7952	S	
10343	8ca680f3-6dc9-4b72-973e-0ec53ac44f40	2024-07-02 23:18:21.771+00	113	S	
10346	com.atlassian.diagnostics.internal.analytics.DailyAlertAnalyticsJob	2024-07-02 23:19:00.002+00	26	S	
10802	data-provider-cleanup	2024-07-03 17:24:46.321+00	16	S	
11127	com.atlassian.jira.plugins.dvcs.scheduler.DvcsScheduler:job	2024-07-03 17:39:45.531+00	16	S	
10805	com.atlassian.jira.service.JiraService:10002	2024-07-03 17:24:46.34+00	22	S	
10806	PluginRequestCheckJob-job	2024-07-03 17:24:46.344+00	20	S	
10807	com.atlassian.jira.service.JiraService:10200	2024-07-03 17:24:46.36+00	15	S	
10810	com.atlassian.jira.cache.monitor.CacheStatisticsMonitor	2024-07-03 17:24:46.398+00	5	S	
10811	com.atlassian.jira.user.UserHistoryDatabaseCompactor	2024-07-03 17:24:46.406+00	0	S	
10812	com.atlassian.greenhopper.manager.lexorank.LexoRankCleanupScheduler	2024-07-03 17:24:46.409+00	18	S	
11130	RateLimitReaperJob	2024-07-03 17:39:46.255+00	2	S	
10814	com.atlassian.troubleshooting.jira.scheduler.CustomisationsCheckScheduler:job	2024-07-03 17:24:46.431+00	33	S	
10815	InstanceTopologyJob-job	2024-07-03 17:24:46.366+00	99	S	
10816	BundledUpdateCheckJob-job	2024-07-03 17:24:46.466+00	2	S	
10817	applink-status-analytics-job	2024-07-03 17:24:46.467+00	5	S	
10820	ConfigurationLoggerJob	2024-07-03 17:24:46.475+00	3	S	
10822	38c3b7dd-445b-4856-ad13-a66f15c84fd7	2024-07-03 17:24:46.48+00	26	S	
10823	com.atlassian.jira.service.JiraService:10001	2024-07-03 17:24:46.37+00	3482	S	
10824	PluginUpdateCheckJob-job	2024-07-03 17:24:46.342+00	4747	S	
10825	ade403d4-e9ef-45c6-8a31-bc1e2c6ac937	2024-07-03 17:24:46.487+00	7452	S	
10826	com.atlassian.analytics.client.upload.RemoteFilterRead:job	2024-07-03 17:24:55.584+00	471	S	
10827	OidcDiscoveryRefresh:SingleRun	2024-07-03 17:24:56.129+00	14	S	
11203	jira-export-errors-dispatcher-job-id	2024-07-03 17:44:26.907+00	8	S	User has not agreed with sending errors.
11204	com.codebarrel.jira.plugin.automation.schedule.RuleInsightsUpdateScheduler.HOUR.job	2024-07-03 17:44:45.434+00	18	S	
10831	com.atlassian.jira.plugins.software.monitor.ApplicationPluginsEnablerJobRunner	2024-07-03 17:25:32.252+00	37	S	
10900	com.atlassian.jira.upgrade.UpgradeService	2024-07-03 17:25:34.576+00	59	S	
11205	com.codebarrel.jira.plugin.automation.schedule.RuleInsightsUpdateScheduler.DAY.job	2024-07-03 17:44:45.434+00	18	S	
10904	JiraPluginScheduler:com.atlassian.troubleshooting.healthcheck.scheduler.HealthCheckSchedulerImpl:job	2024-07-03 17:25:45.529+00	695	S	
11209	HistoryFlushJob	2024-07-03 17:44:46.257+00	1	S	
10914	HistoryCleanupJob	2024-07-03 17:25:56.253+00	9	S	
11212	data-provider-poll	2024-07-03 17:44:46.324+00	5	S	
11216	class com.atlassian.scheduler.core.util.JobRunnerRegistry:com.atlassian.cluster.monitoring.cluster-monitoring-plugin:system-information	2024-07-03 17:44:46.39+00	1	S	
11219	com.atlassian.crowd.manager.directory.monitor.DirectoryMonitorRefresherStarter-job	2024-07-03 17:44:46.492+00	5	S	
11222	com.atlassian.jira.service.JiraService:10000	2024-07-03 17:45:00.002+00	1	S	
11223	JfrScheduledDumpTask	2024-07-03 17:45:00.002+00	80	S	
10942	5df72db2-615e-4243-8344-6baa3a63807c	2024-07-03 17:27:46.325+00	126	S	
\.


--
-- Data for Name: schemeissuesecurities; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.schemeissuesecurities (id, scheme, security, sec_type, sec_parameter) FROM stdin;
\.


--
-- Data for Name: schemeissuesecuritylevels; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.schemeissuesecuritylevels (id, name, description, scheme) FROM stdin;
\.


--
-- Data for Name: schemepermissions; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.schemepermissions (id, scheme, permission, perm_type, perm_parameter, permission_key) FROM stdin;
10025	0	32	projectrole	10002	MANAGE_WATCHERS
10026	0	34	projectrole	10002	EDIT_ALL_COMMENTS
10027	0	35	applicationRole		EDIT_OWN_COMMENTS
10028	0	36	projectrole	10002	DELETE_ALL_COMMENTS
10029	0	37	applicationRole		DELETE_OWN_COMMENTS
10030	0	38	projectrole	10002	DELETE_ALL_ATTACHMENTS
10031	0	39	applicationRole		DELETE_OWN_ATTACHMENTS
10033	0	29	applicationRole		VIEW_DEV_TOOLS
10101	\N	44	group	jira-administrators	\N
10200	0	45	applicationRole		VIEW_READONLY_WORKFLOW
10300	0	46	applicationRole		TRANSITION_ISSUES
10000	\N	0	group	jira-administrators	\N
10004	0	23	projectrole	10002	ADMINISTER_PROJECTS
10005	0	10	applicationRole		BROWSE_PROJECTS
10006	0	11	applicationRole		CREATE_ISSUES
10007	0	15	applicationRole		ADD_COMMENTS
10008	0	19	applicationRole		CREATE_ATTACHMENTS
10009	0	13	applicationRole		ASSIGN_ISSUES
10010	0	17	applicationRole		ASSIGNABLE_USER
10011	0	14	applicationRole		RESOLVE_ISSUES
10012	0	21	applicationRole		LINK_ISSUES
10013	0	12	applicationRole		EDIT_ISSUES
10014	0	16	projectrole	10002	DELETE_ISSUES
10015	0	18	applicationRole		CLOSE_ISSUES
10016	0	25	applicationRole		MOVE_ISSUES
10017	0	28	applicationRole		SCHEDULE_ISSUES
10018	0	30	projectrole	10002	MODIFY_REPORTER
10019	0	20	applicationRole		WORK_ON_ISSUES
10020	0	43	projectrole	10002	DELETE_ALL_WORKLOGS
10021	0	42	applicationRole		DELETE_OWN_WORKLOGS
10022	0	41	projectrole	10002	EDIT_ALL_WORKLOGS
10023	0	40	applicationRole		EDIT_OWN_WORKLOGS
10024	0	31	applicationRole		VIEW_VOTERS_AND_WATCHERS
10401	0	\N	projectrole	10002	MANAGE_SPRINTS_PERMISSION
10402	10000	\N	applicationRole	\N	BROWSE_PROJECTS
10403	10000	\N	applicationRole	\N	CREATE_ISSUES
10404	10000	\N	applicationRole	\N	EDIT_ISSUES
10405	10000	\N	applicationRole	\N	ASSIGN_ISSUES
10406	10000	\N	applicationRole	\N	RESOLVE_ISSUES
10407	10000	\N	applicationRole	\N	ADD_COMMENTS
10408	10000	\N	projectrole	10002	DELETE_ISSUES
10409	10000	\N	applicationRole	\N	ASSIGNABLE_USER
10410	10000	\N	applicationRole	\N	CLOSE_ISSUES
10411	10000	\N	applicationRole	\N	CREATE_ATTACHMENTS
10412	10000	\N	applicationRole	\N	WORK_ON_ISSUES
10413	10000	\N	applicationRole	\N	LINK_ISSUES
10414	10000	\N	projectrole	10002	ADMINISTER_PROJECTS
10415	10000	\N	applicationRole	\N	MOVE_ISSUES
10416	10000	\N	applicationRole	\N	SCHEDULE_ISSUES
10417	10000	\N	projectrole	10002	MODIFY_REPORTER
10418	10000	\N	applicationRole	\N	VIEW_VOTERS_AND_WATCHERS
10419	10000	\N	projectrole	10002	MANAGE_WATCHERS
10420	10000	\N	projectrole	10002	EDIT_ALL_COMMENTS
10421	10000	\N	applicationRole	\N	EDIT_OWN_COMMENTS
10422	10000	\N	projectrole	10002	DELETE_ALL_COMMENTS
10423	10000	\N	applicationRole	\N	DELETE_OWN_COMMENTS
10424	10000	\N	projectrole	10002	DELETE_ALL_ATTACHMENTS
10425	10000	\N	applicationRole	\N	DELETE_OWN_ATTACHMENTS
10426	10000	\N	applicationRole	\N	EDIT_OWN_WORKLOGS
10427	10000	\N	projectrole	10002	EDIT_ALL_WORKLOGS
10428	10000	\N	applicationRole	\N	DELETE_OWN_WORKLOGS
10429	10000	\N	projectrole	10002	DELETE_ALL_WORKLOGS
10430	10000	\N	applicationRole	\N	VIEW_READONLY_WORKFLOW
10431	10000	\N	applicationRole	\N	TRANSITION_ISSUES
10432	10000	\N	applicationRole	\N	VIEW_DEV_TOOLS
10433	10000	\N	applicationRole	\N	MANAGE_SPRINTS_PERMISSION
10434	10000	\N	applicationRole	\N	START_STOP_SPRINTS_PERMISSION
10435	10000	\N	applicationRole	\N	EDIT_SPRINT_NAME_AND_GOAL_PERMISSION
\.


--
-- Data for Name: searchrequest; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.searchrequest (id, filtername, authorname, description, username, groupname, projectid, reqcontent, fav_count, filtername_lower) FROM stdin;
10000	Filter for TEST board	JIRAUSER10000	\N	JIRAUSER10000	\N	\N	project = TEST ORDER BY Rank ASC	0	filter for test board
\.


--
-- Data for Name: securityproperty; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.securityproperty (property_key, propertyvalue) FROM stdin;
\.


--
-- Data for Name: sequence_value_item; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.sequence_value_item (seq_name, seq_id) FROM stdin;
ProductLicense	10100
Group	10110
LicenseRoleGroup	10100
GlobalPermissionEntry	10200
LicenseRoleDefault	10100
ReindexComponent	10200
TaskIdSequence	10100
FieldLayoutItem	10200
SchemePermissions	10500
CustomField	10200
FieldConfiguration	10300
FieldConfigScheme	10300
FieldConfigSchemeIssueType	10400
ConfigurationContext	10300
ManagedConfigurationItem	10200
IssueType	10100
OptionConfiguration	10400
IssueLinkType	10300
EventType	10000
FieldLayout	10100
GadgetUserPreference	10100
NotificationScheme	10100
OAuthConsumer	10100
PortalPage	10100
PortletConfiguration	10100
Priority	10000
ProjectRole	10100
Project	10100
UpgradeTaskHistory	10100
UpgradeTaskHistoryAuditLog	10100
Feature	10200
ColumnLayout	10100
ColumnLayoutItem	10100
EntityPropertyIndexDocument	10100
ProjectKey	10100
ProjectRoleActor	10200
PluginVersion	10300
UpgradeHistory	10200
ReindexRequest	10100
Avatar	10600
Notification	10300
ServiceConfig	10300
UpgradeVersionHistory	10100
ListenerConfig	10300
GenericConfiguration	10200
FieldScreen	10100
FieldScreenTab	10200
FieldScreenLayoutItem	10300
FieldScreenScheme	10100
FieldScreenSchemeItem	10200
IssueTypeScreenScheme	10100
IssueTypeScreenSchemeEntity	10200
Resolution	10100
CustomFieldOption	10100
Status	10100
Workflow	10200
WorkflowScheme	10200
WorkflowSchemeEntity	10200
SearchRequest	10100
SharePermissions	10200
PermissionScheme	10100
EntityProperty	10100
Version	10100
OSWorkflowEntry	10100
OSCurrentStep	10100
Issue	10100
Action	10100
ChangeGroup	10100
ChangeItem	10100
UserHistoryItem	10300
ClusteredJob	10500
IndexBackupSequence	10100
OSPropertyEntry	10800
ApplicationUser	10200
User	10200
UserAttribute	10400
Membership	10200
RunDetails	11300
\.


--
-- Data for Name: serviceconfig; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.serviceconfig (id, delaytime, clazz, servicename, cron_expression) FROM stdin;
10000	60000	com.atlassian.jira.service.services.mail.MailQueueService	Mail Queue Service	0 * * * * ?
10002	86400000	com.atlassian.jira.service.services.auditing.AuditLogCleaningService	Audit log cleaning service	0 0 0 * * ?
10200	86400000	com.atlassian.jira.index.ha.IndexSnapshotService	JIRA Index Snapshot Service	0 0 2 ? * *
10001	43200000	com.atlassian.jira.service.services.export.ExportService	Backup Service	0 35 10/12 * * ?
\.


--
-- Data for Name: sharepermissions; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.sharepermissions (id, entityid, entitytype, sharetype, param1, param2, rights) FROM stdin;
10000	10000	PortalPage	global	\N	\N	1
10100	10000	SearchRequest	project	10000	\N	1
\.


--
-- Data for Name: tempattachmentsmonitor; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.tempattachmentsmonitor (temporary_attachment_id, form_token, file_name, content_type, file_size, created_time) FROM stdin;
\.


--
-- Data for Name: trackback_ping; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.trackback_ping (id, issue, url, title, blogname, excerpt, created) FROM stdin;
\.


--
-- Data for Name: trustedapp; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.trustedapp (id, application_id, name, public_key, ip_match, url_match, timeout, created, created_by, updated, updated_by) FROM stdin;
\.


--
-- Data for Name: upgradehistory; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.upgradehistory (id, upgradeclass, targetbuild, status, downgradetaskrequired) FROM stdin;
10000	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build70100	70100	complete	Y
10100	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build70101	70101	complete	N
10101	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build70102	70102	complete	N
10102	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build71001	71001	complete	N
10103	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build72001	72001	complete	N
10104	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build72002	72002	complete	N
10105	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build73002	73002	complete	N
\.


--
-- Data for Name: upgradetaskhistory; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.upgradetaskhistory (id, upgrade_task_factory_key, build_number, status, upgrade_type) FROM stdin;
10024	host	75004	COMPLETED	SERVER
10025	host	75005	COMPLETED	SERVER
10026	host	76001	COMPLETED	SERVER
10027	host	77001	COMPLETED	SERVER
10028	host	710001	COMPLETED	SERVER
10029	host	711001	COMPLETED	SERVER
10030	host	712001	COMPLETED	SERVER
10000	com.atlassian.audit.atlassian-audit-plugin	1	COMPLETED	SERVER
10001	com.atlassian.audit.atlassian-audit-plugin	2	COMPLETED	SERVER
10002	com.atlassian.audit.atlassian-audit-plugin	3	COMPLETED	SERVER
10003	com.atlassian.audit.atlassian-audit-plugin	4	COMPLETED	SERVER
10004	com.atlassian.jira.jira-issue-nav-components	1	COMPLETED	SERVER
10005	com.atlassian.jira.plugins.inform.batching-plugin	1	COMPLETED	SERVER
10006	com.atlassian.jira.plugins.inform.batching-plugin	2	COMPLETED	SERVER
10007	com.atlassian.jira.jira-mail-plugin	1	COMPLETED	SERVER
10008	com.atlassian.jira.plugins.jira-bitbucket-connector-plugin	1	COMPLETED	SERVER
10009	com.atlassian.jira.plugins.jira-bitbucket-connector-plugin	2	COMPLETED	SERVER
10010	com.atlassian.jira.plugins.jira-development-integration-plugin	1	COMPLETED	SERVER
10011	com.atlassian.jira.plugins.jira-development-integration-plugin	2	COMPLETED	SERVER
10012	com.atlassian.jira.plugins.jira-development-integration-plugin	3	COMPLETED	SERVER
10031	host	800000	COMPLETED	SERVER
10032	host	800003	COMPLETED	SERVER
10033	host	800004	COMPLETED	SERVER
10019	host	73010	COMPLETED	SERVER
10020	host	73011	COMPLETED	SERVER
10021	host	74002	COMPLETED	SERVER
10022	host	75002	COMPLETED	SERVER
10023	host	75003	COMPLETED	SERVER
10034	host	800005	COMPLETED	SERVER
10035	host	800006	COMPLETED	SERVER
10036	host	800007	COMPLETED	SERVER
10037	host	800009	COMPLETED	SERVER
10038	host	801000	COMPLETED	SERVER
10039	host	804000	COMPLETED	SERVER
10040	host	810001	COMPLETED	SERVER
10041	host	811001	COMPLETED	SERVER
10042	host	812001	COMPLETED	SERVER
10043	host	814000	COMPLETED	SERVER
10044	host	814001	COMPLETED	SERVER
10045	host	815001	COMPLETED	SERVER
10046	host	819000	COMPLETED	SERVER
10047	host	822000	COMPLETED	SERVER
10048	host	900000	COMPLETED	SERVER
10049	host	900001	COMPLETED	SERVER
10050	host	901000	COMPLETED	SERVER
10051	host	960000	COMPLETED	SERVER
\.


--
-- Data for Name: upgradetaskhistoryauditlog; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.upgradetaskhistoryauditlog (id, upgrade_task_factory_key, build_number, status, upgrade_type, timeperformed, action) FROM stdin;
10000	com.atlassian.audit.atlassian-audit-plugin	1	COMPLETED	SERVER	2024-07-02 22:35:07.115+00	upgrade
10001	com.atlassian.audit.atlassian-audit-plugin	2	COMPLETED	SERVER	2024-07-02 22:35:07.12+00	upgrade
10002	com.atlassian.audit.atlassian-audit-plugin	3	COMPLETED	SERVER	2024-07-02 22:35:07.183+00	upgrade
10003	com.atlassian.audit.atlassian-audit-plugin	4	COMPLETED	SERVER	2024-07-02 22:35:07.186+00	upgrade
10004	com.atlassian.jira.jira-issue-nav-components	1	COMPLETED	SERVER	2024-07-02 22:35:07.72+00	upgrade
10005	com.atlassian.jira.plugins.inform.batching-plugin	1	COMPLETED	SERVER	2024-07-02 22:35:08.221+00	upgrade
10006	com.atlassian.jira.plugins.inform.batching-plugin	2	COMPLETED	SERVER	2024-07-02 22:35:08.225+00	upgrade
10007	com.atlassian.jira.jira-mail-plugin	1	COMPLETED	SERVER	2024-07-02 22:35:08.728+00	upgrade
10008	com.atlassian.jira.plugins.jira-bitbucket-connector-plugin	1	COMPLETED	SERVER	2024-07-02 22:35:09.793+00	upgrade
10009	com.atlassian.jira.plugins.jira-bitbucket-connector-plugin	2	COMPLETED	SERVER	2024-07-02 22:35:09.843+00	upgrade
10010	com.atlassian.jira.plugins.jira-development-integration-plugin	1	COMPLETED	SERVER	2024-07-02 22:35:10.217+00	upgrade
10011	com.atlassian.jira.plugins.jira-development-integration-plugin	2	COMPLETED	SERVER	2024-07-02 22:35:10.227+00	upgrade
10012	com.atlassian.jira.plugins.jira-development-integration-plugin	3	COMPLETED	SERVER	2024-07-02 22:35:10.316+00	upgrade
10013	host	70101	COMPLETED	SERVER	2024-07-02 22:35:13.953+00	upgrade
10014	host	70102	COMPLETED	SERVER	2024-07-02 22:35:13.958+00	upgrade
10015	host	71001	COMPLETED	SERVER	2024-07-02 22:35:13.964+00	upgrade
10016	host	72001	COMPLETED	SERVER	2024-07-02 22:35:13.97+00	upgrade
10017	host	72002	COMPLETED	SERVER	2024-07-02 22:35:13.979+00	upgrade
10018	host	73002	COMPLETED	SERVER	2024-07-02 22:35:13.981+00	upgrade
10019	host	73010	COMPLETED	SERVER	2024-07-02 22:35:13.987+00	upgrade
10020	host	73011	COMPLETED	SERVER	2024-07-02 22:35:13.989+00	upgrade
10021	host	74002	COMPLETED	SERVER	2024-07-02 22:35:13.992+00	upgrade
10022	host	75002	COMPLETED	SERVER	2024-07-02 22:35:13.994+00	upgrade
10023	host	75003	COMPLETED	SERVER	2024-07-02 22:35:13.996+00	upgrade
10024	host	75004	COMPLETED	SERVER	2024-07-02 22:35:13.997+00	upgrade
10025	host	75005	COMPLETED	SERVER	2024-07-02 22:35:13.999+00	upgrade
10026	host	76001	COMPLETED	SERVER	2024-07-02 22:35:14.008+00	upgrade
10027	host	77001	COMPLETED	SERVER	2024-07-02 22:35:14.014+00	upgrade
10028	host	710001	COMPLETED	SERVER	2024-07-02 22:35:14.023+00	upgrade
10029	host	711001	COMPLETED	SERVER	2024-07-02 22:35:14.03+00	upgrade
10030	host	712001	COMPLETED	SERVER	2024-07-02 22:35:14.035+00	upgrade
10031	host	800000	COMPLETED	SERVER	2024-07-02 22:35:14.037+00	upgrade
10032	host	800003	COMPLETED	SERVER	2024-07-02 22:35:14.048+00	upgrade
10033	host	800004	COMPLETED	SERVER	2024-07-02 22:35:14.07+00	upgrade
10034	host	800005	COMPLETED	SERVER	2024-07-02 22:35:14.076+00	upgrade
10035	host	800006	COMPLETED	SERVER	2024-07-02 22:35:14.08+00	upgrade
10036	host	800007	COMPLETED	SERVER	2024-07-02 22:35:14.083+00	upgrade
10037	host	800009	COMPLETED	SERVER	2024-07-02 22:35:14.09+00	upgrade
10038	host	801000	COMPLETED	SERVER	2024-07-02 22:35:14.099+00	upgrade
10039	host	804000	COMPLETED	SERVER	2024-07-02 22:35:14.102+00	upgrade
10040	host	810001	COMPLETED	SERVER	2024-07-02 22:35:14.103+00	upgrade
10041	host	811001	COMPLETED	SERVER	2024-07-02 22:35:14.105+00	upgrade
10042	host	812001	COMPLETED	SERVER	2024-07-02 22:35:14.111+00	upgrade
10043	host	814000	COMPLETED	SERVER	2024-07-02 22:35:14.129+00	upgrade
10044	host	814001	COMPLETED	SERVER	2024-07-02 22:35:14.265+00	upgrade
10045	host	815001	COMPLETED	SERVER	2024-07-02 22:35:14.267+00	upgrade
10046	host	819000	COMPLETED	SERVER	2024-07-02 22:35:14.272+00	upgrade
10047	host	822000	COMPLETED	SERVER	2024-07-02 22:35:14.277+00	upgrade
10048	host	900000	COMPLETED	SERVER	2024-07-02 22:35:14.281+00	upgrade
10049	host	900001	COMPLETED	SERVER	2024-07-02 22:35:14.287+00	upgrade
10050	host	901000	COMPLETED	SERVER	2024-07-02 22:35:14.289+00	upgrade
10051	host	960000	COMPLETED	SERVER	2024-07-02 22:35:14.293+00	upgrade
\.


--
-- Data for Name: upgradeversionhistory; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.upgradeversionhistory (id, timeperformed, targetbuild, targetversion) FROM stdin;
10000	2024-07-02 22:35:14.297+00	960000	9.12.4
\.


--
-- Data for Name: userassociation; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.userassociation (source_name, sink_node_id, sink_node_entity, association_type, sequence, created) FROM stdin;
\.


--
-- Data for Name: userbase; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.userbase (id, username, password_hash) FROM stdin;
\.


--
-- Data for Name: userhistoryitem; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.userhistoryitem (id, entitytype, entityid, username, lastviewed, data) FROM stdin;
10200	Assignee	JIRAUSER10000	JIRAUSER10000	1719962377748	\N
10100	Dashboard	10000	JIRAUSER10000	1720028529859	\N
10001	Project	10000	JIRAUSER10000	1720028647462	\N
10000	RapidView	1	JIRAUSER10000	1720028664874	TEST board
\.


--
-- Data for Name: userpickerfilter; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.userpickerfilter (id, customfield, customfieldconfig, enabled) FROM stdin;
\.


--
-- Data for Name: userpickerfiltergroup; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.userpickerfiltergroup (id, userpickerfilter, groupname) FROM stdin;
\.


--
-- Data for Name: userpickerfilterrole; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.userpickerfilterrole (id, userpickerfilter, projectroleid) FROM stdin;
\.


--
-- Data for Name: versioncontrol; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.versioncontrol (id, vcsname, vcsdescription, vcstype) FROM stdin;
\.


--
-- Data for Name: votehistory; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.votehistory (id, issueid, votes, "timestamp") FROM stdin;
\.


--
-- Data for Name: workflowscheme; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.workflowscheme (id, name, description) FROM stdin;
10000	classic	classic
10100	TEST: Software Simplified Workflow Scheme	Generated by JIRA Software version 9.12.4. This workflow scheme is managed internally by Jira Software. Do not manually modify this workflow scheme.
\.


--
-- Data for Name: workflowschemeentity; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.workflowschemeentity (id, scheme, workflow, issuetype) FROM stdin;
10000	10000	classic default workflow	0
10100	10100	Software Simplified Workflow for Project TEST	0
\.


--
-- Data for Name: worklog; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.worklog (id, issueid, author, grouplevel, rolelevel, worklogbody, created, updateauthor, updated, startdate, timeworked) FROM stdin;
\.


--
-- Data for Name: worklog_version; Type: TABLE DATA; Schema: public; Owner: jira
--

COPY public.worklog_version (worklog_id, parent_issue_id, update_time, index_version, deleted) FROM stdin;
\.


--
-- PostgreSQL database dump complete
--

