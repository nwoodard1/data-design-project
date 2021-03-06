
AlTER DATABASE nwoodard1 CHARACTER SET utf8 COLLATE utf8_unicode_ci;

DROP TABLE IF EXISTS review;
DROP TABLE IF EXISTS item;
DROP TABLE IF EXISTS user;

CREATE TABLE `user`(
	userId BINARY(16) NOT NULL,
	userActivationToken CHAR (32),
	userHandle VARCHAR (32) NOT NULL,
	userEmail VARCHAR (128),
	userBilling VARCHAR (128) NOT NULL,
	userShipping VARCHAR (128) NOT NULL,
	userPaypal VARCHAR (128) NOT NULL,
	UNIQUE (userEmail),
	PRIMARY KEY (userId)
);

CREATE TABLE item(
	itemId BINARY(16) NOT NULL,
	itemDescription VARCHAR (150) NOT NULL,
	itemPhoto VARCHAR (128) NOT NULL,
	itemInventory VARCHAR(128) NOT NULL,
	itemUserId BINARY (16) NOT NULL,
	itemPrice SMALLINT NOT NULL,
INDEX (itemUserId),
FOREIGN KEY (itemUserId) REFERENCES user(userId),
PRIMARY KEY (itemId)
);

CREATE TABLE review(
	reviewId BINARY(16) NOT NULL,
	reviewUserId BINARY (16) NOT NULL,
	reviewContent VARCHAR (150) NOT NULL,
	reviewUploadDate DATETIME (6) NOT NULL,
	reviewItemId BINARY (16) NOT NULL,
	INDEX (reviewUserId, reviewItemId),
	FOREIGN KEY (reviewUserId) REFERENCES user(userId),
	FOREIGN KEY (reviewItemId) REFERENCES item(itemId),
	PRIMARY KEY (reviewId)
	);





