\set ON_ERROR_STOP on

-- Création des rôles

SELECT 'CREATE ROLE trombi_admin LOGIN PASSWORD ''ADMINMDP'''
WHERE NOT EXISTS (
    SELECT 1
    FROM pg_roles
    WHERE rolname = 'trombi_admin'
)\gexec

ALTER ROLE trombi_admin
    NOSUPERUSER
    NOCREATEDB
    NOCREATEROLE;

SELECT 'CREATE ROLE trombi_user LOGIN PASSWORD ''USERMDP'''
WHERE NOT EXISTS (
    SELECT 1
    FROM pg_roles
    WHERE rolname = 'trombi_user'
)\gexec

ALTER ROLE trombi_user
    NOSUPERUSER
    NOCREATEDB
    NOCREATEROLE;


-- Création de la base

SELECT 'CREATE DATABASE trombifunscope OWNER trombi_admin'
WHERE NOT EXISTS (
    SELECT 1
    FROM pg_database
    WHERE datname = 'trombifunscope'
)\gexec

ALTER DATABASE trombifunscope OWNER TO trombi_admin;

REVOKE ALL PRIVILEGES
ON DATABASE trombifunscope
FROM PUBLIC;

GRANT CONNECT
ON DATABASE trombifunscope
TO trombi_admin, trombi_user;


-- Attribution des droits

\connect trombifunscope

REVOKE ALL ON SCHEMA public FROM PUBLIC;

GRANT USAGE, CREATE
ON SCHEMA public
TO trombi_admin;

GRANT USAGE
ON SCHEMA public
TO trombi_user;

GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA public
TO trombi_user;

GRANT USAGE
ON ALL SEQUENCES IN SCHEMA public
TO trombi_user;

ALTER DEFAULT PRIVILEGES
FOR ROLE trombi_admin
IN SCHEMA public
GRANT SELECT, INSERT, UPDATE, DELETE
ON TABLES
TO trombi_user;

ALTER DEFAULT PRIVILEGES
FOR ROLE trombi_admin
IN SCHEMA public
GRANT USAGE
ON SEQUENCES
TO trombi_user;