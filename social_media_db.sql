Drop schema Social_Media_DB; 

Create Database Social_Media_DB;
USE Social_Media_DB;

CREATE TABLE user (
    id INT NOT NULL,
    first_name VARCHAR(12) NOT NULL,
    last_name VARCHAR(12) NOT NULL,
    dob DATE NOT NULL,
    sex ENUM('Male', 'Female', 'Transgender') NOT NULL,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(24) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO user VALUES(1,'Rajasekar', 'T','1996-11-03','Male','raj@gmail.com','1234'),
(2,'Mohan', 'T', '2000-08-03','Male','mohan@gmail.com','2345');


CREATE TABLE post (
    id INT NOT NULL,
    user_id INT NOT NULL,
    content VARCHAR(50) NOT NULL,
    # media field add later 
    posted_date DATE NOT NULL,
    posted_time TIME NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id)
        REFERENCES user (id)
);

INSERT INTO post VALUES(1, 1, 'First Post', NOW(), NOW());
    
    
CREATE TABLE comments (
    id INT NOT NULL,
    post_id INT NOT NULL,
    user_id INT NOT NULL,
    content VARCHAR(50) NOT NULL,
    commented_date DATE NOT NULL,
    commented_time TIME NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (post_id)
        REFERENCES post (id),
    FOREIGN KEY (user_id)
        REFERENCES user (id)
);

INSERT INTO comments VALUES(1,1,2, 'Good Start', NOW(), NOW());


CREATE TABLE likes (
    id INT NOT NULL,
    post_id INT NOT NULL,
    user_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (post_id)
        REFERENCES post (id),
    FOREIGN KEY (user_id)
        REFERENCES user (id)
);

INSERT INTO likes VALUES(1,1,2);


CREATE TABLE message (
    id INT NOT NULL,
    sender_id INT NOT NULL,
    receiver_id INT NOT NULL,
    content VARCHAR(50) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (sender_id)
        REFERENCES user (id),
    FOREIGN KEY (receiver_id)
        REFERENCES user (id)
);

INSERT INTO message VALUES(1,1,2,'Welcome to the app');


SELECT * FROM user;
SELECT * FROM post;
SELECT * FROM comments;
SELECT * FROM likes;
SELECT * FROM message;
    







  