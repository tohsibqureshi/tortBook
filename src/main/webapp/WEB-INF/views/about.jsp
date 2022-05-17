<!DOCTYPE html>
<html lang="en " dir="ltr">
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/rabout.css">
<meta name="viewport" content="width=device-width,initial-sclae=1.0">
</head>
<body>

	<div class="about-section">
		<div class="inner-width">
		</br>
			<h1>About Us</h1>
			<div class="border"></div>
			<div class="about-section-row">
				<div class="about-section-col">
					<div class="about">
						<p style="color: #000000">
							The aim of this application is to spread awareness among normal
							public having accessibility to internet to know about the crimes
							spreading across the areas,where they live.This application will
							guide people for their saftey.It is a very handy tool to and is
							very easy to use.<span id="dots">...</span><span id="more">People
								can come here and check for the latest types of criminals
								offences occurring near them and also send post,that they can
								protect themselves.</span>
						</p>
						<button type="button" id="read" onclick="read()">Read
							More</button>
		</br></br></br>
						<script type="text/javascript">
							var i = 0;
							function read() {
								if (!i) {
									document.getElementById("more").style.display = "inline";
									document.getElementById("dots").style.display = "none";
									document.getElementById("read").innerHTML = "Read Less";
									i = 1;
								} else {
									document.getElementById("more").style.display = "none";
									document.getElementById("dots").style.display = "inline";
									document.getElementById("read").innerHTML = "Read More";
									i = 0;
								}
							}
						</script>

					</div>
				</div>
			</div>
		</div>

	</div>


</body>
</html>