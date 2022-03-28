CREATE table clients (
                         id integer,
                         user varchar(255),
                         fullName varchar(255),
                         iin bigint,
                         passport bigint,
                         cr_date varchar(255),
                         disc varchar(255),
                         add_inf varchar(255),
                         address varchar(255),
                         phoneNumber bigint,
                         prop varchar(255)
);

CREATE TABLE user (
                      login varchar(255),
                      password varchar(255),
                      role varchar(255),
                      enabled varchar(255)
);