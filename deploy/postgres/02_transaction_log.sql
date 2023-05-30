-- SCHEMA: fflink_analytics

CREATE SCHEMA IF NOT EXISTS fflink_analytics
    AUTHORIZATION integrations;

GRANT USAGE ON SCHEMA fflink_analytics TO integrations;

-- SEQUENCE: fflink_analytics.transaction_log_seq

CREATE SEQUENCE IF NOT EXISTS fflink_analytics.transaction_log_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE fflink_analytics.transaction_log_seq
    OWNER TO integrations;

GRANT ALL ON SEQUENCE fflink_analytics.transaction_log_seq TO integrations;

-- Table: fflink_analytics.transaction_log

CREATE TABLE IF NOT EXISTS fflink_analytics.transaction_log
(
    id_transaction_log integer NOT NULL DEFAULT nextval('fflink_analytics.transaction_log_seq'::regclass),
    create_date timestamp with time zone,
    event_id uuid NOT NULL,
    tenant integer,
    merchant_code character varying(100) COLLATE pg_catalog."default",
    transaction_type character varying(100) COLLATE pg_catalog."default" NOT NULL,
    external_business_id character varying(100) COLLATE pg_catalog."default",
    internal_business_id character varying(100) COLLATE pg_catalog."default",
    transaction_status character varying(100) COLLATE pg_catalog."default" NOT NULL,
    error_code text COLLATE pg_catalog."default",
    error_desc text COLLATE pg_catalog."default",
    partner character varying(100) COLLATE pg_catalog."default" NOT NULL,
    initial_payload jsonb,
    final_payload jsonb,
    payload_version character varying(100) COLLATE pg_catalog."default",
    extra_data jsonb,
    source character varying(250) COLLATE pg_catalog."default",
    CONSTRAINT transaction_log_pkey PRIMARY KEY (id_transaction_log)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS fflink_analytics.transaction_log
    OWNER to integrations;

GRANT ALL ON TABLE fflink_analytics.transaction_log TO integrations;

-- Index: transaction_log_date_idx

CREATE INDEX IF NOT EXISTS transaction_log_date_idx
    ON fflink_analytics.transaction_log USING btree
    (create_date ASC NULLS LAST)
    TABLESPACE pg_default;

-- Index: transaction_log_externalbi_idx

CREATE INDEX IF NOT EXISTS transaction_log_externalbi_idx
    ON fflink_analytics.transaction_log USING btree
    (external_business_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

-- Index: transaction_log_partner_idx

CREATE INDEX IF NOT EXISTS transaction_log_partner_idx
    ON fflink_analytics.transaction_log USING btree
    (partner COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;