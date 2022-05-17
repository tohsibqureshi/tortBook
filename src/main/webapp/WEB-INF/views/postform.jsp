<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/post.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$(".btn").click(function() {
			$("input[type='text'], textarea").val("");
		});
	});
</script>
</head>
<body>

	<div class="wrapper">
		<div class="content">
			<h1>CREATE TORT</h1>
			<p>Aware with us by sending your Post.</p>
		</div>
</br>
		<form class="form" action="/addReport" method="post">

			<div class="top-form">
				<div class="inner-form">
					<div class="label">Informant Name</div></br>
<input type="text" name="informantName" value="${vUser.name}" id="full-name" class="input-text" placeholder="Your Name" required>
				</div>
				<div class="inner-form">
					<div class="label">Suspect Name</div></br>
					<input type="text" name="suspectName" placeholder="Suspect Name" required="required">
				</div>
				<div class="inner-form">
					<div class="label">Date of Incident</div></br>
					<input type="text" name="iDate" placeholder="03/03/2019" required="required">
				</div>
			</div>

			<div class="middle-form">
				<div class="inner-form">
				</br>
					<div class="label">Place</div>
					
						<select type="text" name="place" style="border: thick;"
							class="form-control">
							<option value="Chandan Nagar">Chandan Nagar</option>
							<option value="Vijay Nagar">Vijay Nagar</option>
							<option value="Rajendra Nagar">Rajendra Nagar</option>
							<option value="Bhavarkua">Bhavarkua</option>
						</select>

					</div>
				</div>

				<div class="bottom-form">
					<div class="inner-form">
						<div class="label">Description</div></br>
						<textarea name="description" placeholder="Your Description" required="required"></textarea>
					</div>
				</div>

				<div >
					<input type="submit" class="formbtn" name="Post" value="Post">
				</div>
			</div>
		</form>
	${msg}
</body>
</html>