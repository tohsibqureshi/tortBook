
<strong><h4 align="right"><a href="/postForm">CREATE TORT</a></h4></strong>



<!DOCTYPE html>
<html>
    <head>
        <script src="js/jquery.min.js"></script>
      <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style>
    a.list-group-item {
    height:auto;
    min-height:220px;
}
a.list-group-item.active small {
    color:#fff;
}

.stars {
    margin:20px auto 1px;    
}
</style>
    </head>
<!------ Include the above in your HEAD tag ---------->
<body>
<div class="container">
<h1 class="text-center">TORTS</h1>
    <c:forEach items="${rList}" var="list" >

    
   
    <div class="row">
		<div class="well">
        <div class="list-group">
          <a href="/more${list.report_no}" target="_blank" class="list-group-item active">
                <div class="media col-md-3">
                    <figure class="pull-left">
                        <img class="media-object img-rounded img-responsive"  src="upload/${list.image}" alt="" >
                    </figure>
                </div>
              
          
              
                <div class="col-md-6">
                 <h2 class="list-group-item-heading">  ${list.uName} </h2>
                    <h4 class="list-group-item-heading"><sub style="color: yellow;"> Fraud on - ${list.iDate }</sub></h4>
                    <p class="list-group-item-text"> ${list.description }
                    </p>
                </div>
                <div class="col-md-3 text-center">
                    <h2> <small>Suspect Name :- ${list.suspectName} </small></h2>
                   
                    <div class="stars">
                        <span class="glyphicon glyphicon-star"></span>
                        <span class="glyphicon glyphicon-star"></span>
                        <span class="glyphicon glyphicon-star"></span>
                        <span class="glyphicon glyphicon-star"></span>
                        <span class="glyphicon glyphicon-star-empty"></span>
                    </div>
                   
                </div>
          </a>
         
          </a>
        </div>
        </div>
	</div>
</c:forEach>
</div>
    </body>
</html>