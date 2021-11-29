CREATE DATABASE flights;

USE flights;

CREATE TABLE flight(
     no INT,
     frm VARCHAR(20),
     too VARCHAR(20),
     distance INT,
     departs VARCHAR(20),
     arrives VARCHAR(20),
     price REAL,
     PRIMARY KEY (no) );


CREATE TABLE aircraft(
     aid INT,
     aname VARCHAR(20),
     cruisingrange INT,
     PRIMARY KEY (aid) );


CREATE TABLE employees(
     eid INT,
     ename VARCHAR(20),
     salary INT,
     PRIMARY KEY (eid) );


CREATE TABLE certified(
     eid INT,
     aid INT,
     PRIMARY KEY (eid,aid),
     FOREIGN KEY (eid) REFERENCES employees (eid),
     FOREIGN KEY (aid) REFERENCES aircraft (aid) );