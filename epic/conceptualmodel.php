<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Conceptual Model</title>
	</head>
	<body>
		<h1><strong>Conceptual Model</strong></h1>
		<p>
		<h2><strong>USER:</strong></h2>
		<ul>
			<li>userId</li>
			<li>userEmail</li>
			<li>userBilling</li>
			<li>userShipping</li>
			<li>userPaypal</li>
		</ul>
		<h2><strong>REVIEW:</strong></h2>
		<ul>
			<li>reviewId</li>
			<li>reviewUserId</li>
			<li>reviewContent</li>
			<li>reviewUploadDate</li>
			<li>reviewItemId</li>
		</ul>
		<h2><strong>ITEM:</strong></h2>
		<ul>
			<li>itemId</li>
			<li>itemDescription</li>
			<li>itemPhoto</li>
			<li>itemInventory</li>
			<li>itemUserId</li>
			<li>itemPrice</li>
		</ul>
		<h2><strong>RELATIONS:</strong></h2>
		<ul>
			<li>one user can buy and review many items (1-n)</li>
			<li>one item can have many reviews (1-n) </li>
		</ul>
