--create table users(username varchar_ignore case(50) not null primary key,password varchar_ignorecase(500) not null,enabled boolean not null);
--create table authorities (username varchar_ignore case(50) not null,authority varchar_ignorecase(50) not null,constraint fk_authorities_users foreign key(username) references users(username));
--create unique index ix_auth_username on authorities (username,authority);

DROP TABLE IF EXISTS authorities;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    username VARCHAR(50) NOT NULL PRIMARY KEY,
    password VARCHAR(500) NOT NULL,
    enabled BOOLEAN NOT NULL
);

CREATE TABLE authorities (
    username VARCHAR(50) NOT NULL,
    authority VARCHAR(500) NOT NULL,
    CONSTRAINT fk_authorities_users FOREIGN KEY (username) REFERENCES users (username),
    PRIMARY KEY (username, authority)  -- Composite primary key
);

CREATE UNIQUE INDEX ix_auth_username ON authorities (username, authority);
