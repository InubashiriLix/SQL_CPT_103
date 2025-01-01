## Relational Database Management System

- relational database management system (RDBNS) are based on the relational model
- DBMS is a server application runs on the server
- the client application runs communicates with the server application (DBMS)

example: the DBMS is a website that provide a form to record data from client and store it in the table / DB, and the client can request the data from the DBMS, or create a new data, or update the data, or delete the data.

## Database Language (SQL there)

- Database has its own language to communicate with the DBMS, such lang is called SQL (Structured Query Language)
- flow control is also concluded in the SQL

- SQL has three important part:
  1. data definition language (DDL): to create, alter, and delete tables and other objects in the database
  2. data manipulation language (DML): to insert, update, delete, and retrieve data from the tables
  3. data control language (DCL): to grant and revoke permissions to access the database

- NOTE: our content will only focus on the DDL and DML

### format of SQL

- the SQL is no case sensitive for example,
    <?sql
   CREATE == create, `stirb` == STIRB == `STIRB` = stIrB

- the table names, column names can be configured to be case-sensitive by surrounding them with ()
    <?sql
    CREATE TBLAE (StirbFurMich)

### create a database

use
    <?sql
    CREATE SCHEMA database_name;
    or
    CREATE DATABASE database_name;
the upper two commands are the same

a schema consists of tables, views, domains, assertions, collations, translations and character sets
    <?sql
    CREATE TABLE table_name ()
