ALTER USER integrations SET TimeZone TO 'Europe/London';
ALTER USER integrations SET search_path TO dbo;

--------------- SCHEMA
CREATE SCHEMA dbo AUTHORIZATION integrations;