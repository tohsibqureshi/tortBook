<%@taglib uri="http://www.springframework.org/tags/form" prefix="s"%>

<div class="container">
	<div class="row">
</br></br></br>

		<head>
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<!-- Page level plugin CSS-->
<link href="vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">
<!-- Custom styles for this template-->
<link href="css/sb-admin.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<!-- Bootstrap core JavaScript-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Page level plugin JavaScript-->
<script src="vendor/chart.js/Chart.min.js"></script>
<script src="vendor/datatables/jquery.dataTables.js"></script>
<script src="vendor/datatables/dataTables.bootstrap4.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
	rel="stylesheet" />
<!-- Demo scripts for this page-->
<script src="js/demo/datatables-demo.js"></script>
<script src="js/demo/chart-area-demo.js"></script>
<style>
#btnSearch, #btnClear {
	display: inline-block;
	vertical-align: top;
}
</style>
		</head>

		<br> <br>
		<div class="container">
			<div class="row">

				<div class="col-md-offset-2 col-md-8">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4>
								<b>Update Profile 
							</h4>
						</div>
						<div class="panel-body"></div>
						<form class="form-horizontal" action="/update" method="post"
							enctype="multipart/form-data">



									<input style="display: none;" type="text" id="id" name="id" value="${vUser.id}"/>

<input  style="display: none;" type="text" id="id" name="lu" value="1"/>
							<input style="display: none;" type="text" id="id" name="password" value="${vUser.password}"/>
							
							
								
							<div class="form-group">
								<label class="control-label col-md-3" for="name">Name:</label>
								<div class="col-md-8">
									<input type="text" id="name" name="name" value="${vUser.name}"
										placeholder="Enter Stock" class="form-control" />

								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-md-3" for="name">Username:</label>
								<div class="col-md-8">
									<input type="text" id="name" name="username"
										 value="${vUser.username}" class="form-control" />

								</div>
							</div>
						
							<div class="form-group">
								<label class="control-label col-md-3" for="name">Email:</label>
								<div class="col-md-8">
									<input type="text" id="name" name="email" readonly="readonly"
										 value="${ vUser.email}" class="form-control" />

								</div>
							</div>	
							







							<div class="form-group">
								<label class="control-label col-md-3" for="name">
									Upload Profile :</label>
								<div class="col-md-8">
									<input type="file" name="file" value="upload/${vUser}" />
								</div>
							</div>



							<div class="row">
								<div class="col-sm-12 text-center">
									<button id="btnSearch"
										class="btn btn-primary btn-md center-block"
										Style="width: 100px;">Submit</button>
									<button id="btnClear"
										class="btn btn-danger btn-md center-block"
										Style="width: 100px;">Cancel</button>
								</div>
							</div>
</br>

						</form>


					</div>
				</div>

			</div>
		</div>
</br></br></br>
</br>
	</div>
</div>