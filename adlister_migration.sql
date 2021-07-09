USE adlister_db;


DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;


CREATE TABLE  users(
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       username varchar(50),
                       email VARCHAR (50),
                       password VARCHAR(50) NOT NULL,
                       PRIMARY KEY (id)
);

INSERT INTO users (username, email, password)
VALUES ('JimBob', 'jimbob@jimbob.com', '12345'),
       ('BilBo', 'baggins@lotr.com', 'precious');

CREATE TABLE  ads(
                     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                     user_id INT UNSIGNED NOT NULL,
                     title VARCHAR (50),
                     description VARCHAR(120) NOT NULL,
                     PRIMARY KEY (id),
                     FOREIGN KEY (user_id) REFERENCES users(id)
                        ON DELETE CASCADE
);

INSERT INTO ads (user_id, title, description)
VALUES (1, 'Honda Civic for sale', 'Very clean garage kept low mileage'),
       (2, 'Ring for sale', 'Ordinary gold 24k ring in good condition'),
       (2, 'Robe for sale', 'Grey robe slightly used smells of magic');
