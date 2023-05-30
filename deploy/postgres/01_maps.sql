--------------- DDL MAPS
CREATE SEQUENCE IF NOT EXISTS fflink_common_data.maps_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE IF EXISTS fflink_common_data.maps_id_seq
    OWNER TO integrations;

GRANT ALL ON SEQUENCE fflink_common_data.maps_id_seq TO integrations;

CREATE TABLE IF NOT EXISTS fflink_common_data.maps
(
    id integer NOT NULL DEFAULT nextval('fflink_common_data.maps_id_seq'::regclass),
    a_system character varying(200) COLLATE pg_catalog."default" NOT NULL DEFAULT 'FARFETCH'::character varying,
    a_def character varying(200) COLLATE pg_catalog."default" NOT NULL,
    a_value character varying(2000) COLLATE pg_catalog."default",
    b_system character varying(200) COLLATE pg_catalog."default" NOT NULL,
    b_def character varying(200) COLLATE pg_catalog."default" NOT NULL,
    b_value character varying(2000) COLLATE pg_catalog."default",
    store_id integer NOT NULL DEFAULT 0,
    software character varying(200) COLLATE pg_catalog."default",
    dt_create timestamp without time zone DEFAULT now(),
    dt_clean timestamp without time zone,
    dt_update timestamp without time zone,
    username character varying(200) COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS fflink_common_data.maps
    OWNER to integrations;

GRANT ALL ON TABLE fflink_common_data.maps TO integrations;

CREATE INDEX IF NOT EXISTS ix_maps_ab
    ON fflink_common_data.maps USING btree
    (a_system COLLATE pg_catalog."default", a_def COLLATE pg_catalog."default", b_value COLLATE pg_catalog."default", b_system COLLATE pg_catalog."default", b_def COLLATE pg_catalog."default", store_id)
    TABLESPACE pg_default;

CREATE INDEX IF NOT EXISTS ix_maps_ba
    ON fflink_common_data.maps USING btree
    (a_system COLLATE pg_catalog."default", a_def COLLATE pg_catalog."default", a_value COLLATE pg_catalog."default", b_system COLLATE pg_catalog."default", b_def COLLATE pg_catalog."default", store_id)
    TABLESPACE pg_default;

CREATE INDEX IF NOT EXISTS ix_maps_bsys_bdef_adef_avl
    ON fflink_common_data.maps USING btree
    (b_system COLLATE pg_catalog."default", b_def COLLATE pg_catalog."default", a_def COLLATE pg_catalog."default", a_value COLLATE pg_catalog."default", b_value COLLATE pg_catalog."default")
    TABLESPACE pg_default;

CREATE INDEX IF NOT EXISTS ix_maps_store_id
    ON fflink_common_data.maps USING btree
    (store_id)
    TABLESPACE pg_default;