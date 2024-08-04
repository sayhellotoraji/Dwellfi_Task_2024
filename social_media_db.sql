Drop schema Social_Media_DB; 

Create Database Social_Media_DB;
USE Social_Media_DB;

CREATE TABLE User (
    id INT NOT NULL,
    firstName VARCHAR(12) NOT NULL,
    lastName VARCHAR(12) NOT NULL,
    dob DATE NOT NULL,
    sex ENUM('Male', 'Female', 'Transgender') NOT NULL,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(24) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO User VALUES(1,'Rajasekar', 'T','1996-11-03','Male','raj@gmail.com','1234'),
(2,'Mohan', 'T', '2000-08-03','Male','mohan@gmail.com','2345');


CREATE TABLE Post (
    id INT NOT NULL,
    userId INT NOT NULL,
    content VARCHAR(50) NOT NULL,
    # media field add later 
    postedDate DATE NOT NULL,
    postedTime TIME NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (userId)
        REFERENCES User (id)
);

INSERT INTO Post VALUES(1, 1, 'First Post', NOW(), NOW());
    
    
CREATE TABLE Comments (
    id INT NOT NULL,
    postId INT NOT NULL,
    userId INT NOT NULL,
    content VARCHAR(50) NOT NULL,
    commentedDate DATE NOT NULL,
    commentedTime TIME NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (postId)
        REFERENCES Post (id),
    FOREIGN KEY (userId)
        REFERENCES User (id)
);

INSERT INTO Comments VALUES(1,1,2, 'Good Start', NOW(), NOW());


CREATE TABLE Likes (
    id INT NOT NULL,
    postId INT NOT NULL,
    userId INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (postId)
        REFERENCES Post (id),
    FOREIGN KEY (userId)
        REFERENCES User (id)
);

INSERT INTO Likes VALUES(1,1,2);


CREATE TABLE Message (
    id INT NOT NULL,
    senderId INT NOT NULL,
    receiverId INT NOT NULL,
    content VARCHAR(50) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (senderId)
        REFERENCES User (id),
    FOREIGN KEY (receiverId)
        REFERENCES User (id)
);

INSERT INTO Message VALUES(1,1,2,'Welcome to the app');


SELECT * FROM User;
SELECT * FROM Post;
SELECT * FROM Comments;
SELECT * FROM Likes;
SELECT * FROM Message;
    







  