<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
	<meta charset="utf-8">
	<title>TORTBOOK</title>
	<link rel="stylesheet"  href="css/rcontact.css">
	<meta name="viewport" content="width=device-width,initial-scale=1">
</head>
<body>




<div class="contact-section">
</br>	</br></br>
	<h1>Get In Touch</h1>
	<div class="border"></div>
	<form class="contact-form" action="/addmsg" method="post">
		<input name="name" type="text" class="contact-form-text" placeholder="Your Name" required="required">
		<input name="email" type="email" class="contact-form-text" placeholder="Your Email" required="required">
		<input name="phone" type="text" class="contact-form-text" placeholder="Your Phone" required="required">
		<textarea name="messege" class="contact-form-text" placeholder="Your Message" required="required"></textarea>
		<input type="submit" class="contact-form-btn" value="Send">
		${msg}
	</form>

</br></br></br>
</div>


</body>
</html>