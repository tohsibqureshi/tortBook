<!DOCTYPE html>
<html>
<head>
<script src="js/jquery.min.js"></script>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style>
a.list-group-item {
	height: auto;
	min-height: 500px;
}

a.list-group-item.active small {
	color: #fff;
}

.stars {
	margin: 20px auto 1px;
}
</style>
</head>
<!------ Include the above in your HEAD tag ---------->
<body>
	<div class="container">
		<h1 class="text-center"></h1>



		<div class="row">
			<div class="well">
				<div class="list-group">
					<a href="/uprofile${report.report_no}" target="_blank" class="list-group-item active">
						<div class="media col-md-3">
							<figure class="pull-left">
								<img class="media-object img-rounded img-responsive"
									src="upload/${report.image}" alt="">
							</figure>
						</div>



						<div class="col-md-6">
						<h2 class="list-group-item-heading">
								${report.uName}</h2>
							<h4 class="list-group-item-heading">Report no :-
								${report.report_no}<sub style="color: yellow;"> Fraud on - ${Report.iDate }</sub></h4>
								</br>
							<p class="list-group-item-text">${report.description }</p>
						</div>
						<div class="col-md-3 text-center">
							<h2>
								<small>Suspect Name :- ${report.suspectName} </small>
							</h2>

							<div class="stars">
								<span class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star-empty"></span>
							</div>

						</div>
					</a> </a>
				</div>
			</div>
		</div>

	</div>
	<div id="disqus_thread"></div>
	<script>
		/**
		 *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
		 *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/
		/*
		 var disqus_config = function () {
		 this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
		 this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
		 };
		 */
		(function() { // DON'T EDIT BELOW THIS LINE
			var d = document, s = d.createElement('script');
			s.src = 'https://tortbook.disqus.com/embed.js';
			s.setAttribute('data-timestamp', +new Date());
			(d.head || d.body).appendChild(s);
		})();
	</script>
	<noscript>
		Please enable JavaScript to view the <a
			href="https://disqus.com/?ref_noscript">comments powered by
			Disqus.</a>
	</noscript>

</body>
</html>