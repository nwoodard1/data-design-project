INSERT INTO `user`(userId, userActivationToken ,userHandle, userEmail,userBilling,userShipping,userPaypal) VALUES (UNHEX("4f4f58e80aa5404fba3c5b9a6b1d4caa"),"nananananananananananananananana","sabby_chav3", "sabby_chav3@gmail.com", "P.O. Box 989 Albuquerque, NM 87123", "1908 Marquette Ave NW Albuquerque, NM 87123", "8ae25c9551064737b030a91f6efa09c9");
INSERT INTO item (itemId, itemDescription, itemPhoto, itemInventory, itemUserId, itemPrice) VALUES (UNHEX("7191463162de4211a04a1fa7b2d9bf6e"), "Free People Smock style dress, color:black", "978596181cdc4b63b6d20b0e283e9b5f", "65f4accf0bbc4c2d8389488d16474c9b", "sabby_chav3", "49.99");
INSERT INTO review (reviewId, reviewUserId, reviewContent, reviewUploadDate, reviewItemId) VALUES (UNHEX("37ce679069ed433da68088043ed05b54"),"nananananananananananananananana", "sabby_chav3", "I recieved this product in a timely manner and it fits and looks great!", NOW(), sabby_chav3);

UPDATE user SET userHandle = "sabrina_chavez24", userEmail = "sabrina_chavez24@gmail.com" WHERE  userId = (UNHEX ("4f4f58e80aa5404fba3c5b9a6b1d4caa"));

DELETE FROM review WHERE reviewId = (UNHEX ("37ce679069ed433da68088043ed05b54"));

SELECT reviewId, reviewUserId, reviewContent, reviewUploadDate, reviewItemId from review WHERE reviewUserId = (UNHEX ("37ce679069ed433da68088043ed05b54")) = true;

SELECT review.reviewUserId, item.itemUserId
FROM review
INNER JOIN item ON review.reviewUserId = item.itemUserId
WHERE reviewContent = "I recieved this product in a timely manner and it fits and looks great!";
SELECT count(reviewContent) FROM review;