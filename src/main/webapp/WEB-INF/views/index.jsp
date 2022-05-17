<!DOCTYPE html>
<html lang="en">
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<!--font-awesome-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
<!--cutom stylesheet-->
<link rel="stylesheet" href="css/index.css">


<title>${title}</title>

</head>
<body>





	<div class="main_container">

	
		<%@include file="./shared/nav.jsp"%>




		<div>


			<c:if test="${userClickHome==true}">
				<%@include file="home.jsp"%>
			</c:if>

			<c:if test="${userClickAbout==true}">
				<%@include file="about.jsp"%>
			</c:if>
			<c:if test="${userClickContact==true}">
				<%@include file="contact.jsp"%>
			</c:if>

			<c:if test="${userClickSignup==true}">
				<%@include file="signup1.jsp"%>
			</c:if>

			<c:if test="${userClickLogin==true}">
				<%@include file="login.jsp"%>
			</c:if>

			<c:if test="${userClickPostform==true}">
				<%@include file="postform.jsp"%>
			</c:if>
			<c:if test="${userClickTimeline==true}">
				<%@include file="timeline.jsp"%>
			</c:if>
				<c:if test="${userClickProfile==true}">
				<%@include file="profile.jsp"%>
			</c:if>
		<c:if test="${userClickMore==true}">
				<%@include file="more.jsp"%>
			</c:if>
			<c:if test="${userClickUProfile==true}">
				<%@include file="uprofile.jsp"%>
			</c:if>
			<c:if test="${userClickEdit==true}">
				<%@include file="edit.jsp"%>
			</c:if>
		</div>
		<!-- /.container -->
		<%@include file="./shared/footer.jsp"%>


		<!-- /.container -->

		<!-- JavaScript -->
		<script src="js/jquery-1.10.2.js"></script>
		<script src="js/bootstrap.js"></script>
		<script src="js/myapp.js"></script>
	</div>
</body>

</html>