<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>TORTBOOK</title>
	
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<!-- Font-->
	<link rel="stylesheet" type="text/css" href="css/rsignupfont.css">
	<!-- Main Style Css -->
    <link rel="stylesheet" href="css/rrsignup.css"/>
</head>




<body class="form-v91">
	<div class="page-content1">
		<div class="form-v9-content1" style="background-image: url('img/form-v9.jpg')">
			<form class="form-detail1" action="/addRecord" method="post">
				<h2>Signup</h2>
				<div class="form-row-total1">
					<div class="form-row1">
						<input type="text" name="name" id="full-name1" class="input-text1" placeholder="Your Name" required>
					</div>
					<div class="form-row1">
						<input type="text" name="email" id="your-email1" class="input-text1" placeholder="Your Email" required pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}">
					</div>
				</div>
				<div class="form-row-total1">
					<div class="form-row1">
						<input type="text" name="username" id="username1" class="input-text1" placeholder="Username" required>
					</div>
					<div class="form-row1">
						<input type="password" name="password" id="password1" class="input-text1" placeholder="Password" required>
					</div>
				</div>
				<input type="text" name="image" value="pp.png" style="display: none;">
				<div class="form-row-last1">
					<input type="submit" name="signup" class="signup1" value="Signup">
				</div>
			</form>
		</div>
	</div>

</body>

</html>