<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>TORTBOOK</title>
	<link rel="stylesheet" href="css/rlogin.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
</head>
<body>
${msg}
${wMsg }
<div class="wrapper">
  <form class="loginform" action="/checkvaliduser" method="post">
      <div class="title">
          Login 
      </div>
      <div class="input-form username">
          <input type="text" name="username" class="input" placeholder="Username">
          <i class="fas fa-user"></i>
      </div>
     
      <div class="input-form password">
          <input type="password" name="password" class="input" placeholder="Password">
          <i class="fas fa-key"></i>
      </div>
      <div >
					<input class="btn" type="submit" class="formbtn" name="Log In" value="Log In">
				</div>
      
  </form>
</div>	
	
</body>
</html>






















</body>
</html>