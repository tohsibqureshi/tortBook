<link rel="css/index.css">
    <link rel="stylesheet" href="css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
	<!--banner image-->
	<div class="banner_image"  style="background-image: url('img/p3.jpg');">
             
		<div class="banner_content">
                
			<h1>TortBook<br> <span>Your Post Take A Center Stage.<span></h1>
                                    <p>Tortbook Provide A Platform To <b>RAISE</b> Your Voice Aganist Crime.</p>
                                    
		</div>	
	</div>
	

	<!--//banner image-->

	<!--//recent post-->
	 <div class="testimonials">
      <div class="inner">
        <h1>TORTS</h1>
        <div class="border"></div>

        <div class="row">
<c:forEach items="${rList}" var="list">

          <div class="col">
            <div class="testimonial">
               <a href="/uprofile${list.report_no}" target="_blank"  ><img src="upload/${list.image}" alt=""></a>
              <a href="/more${list.report_no}" target="_blank"  ><div class="name">${list.uName}</div>
            

              <p class="pa">
				${list.description } MORE... 
              </p></a>
            </div>
          </div>

       </c:forEach>
 
       <script type="text/javascript">
					function add_chatinline() {
						var hccid = 35583965;
						var nt = document.createElement("script");
						nt.async = true;
						nt.src = "https://mylivechat.com/chatinline.aspx?hccid="
								+ hccid;
						var ct = document.getElementsByTagName("script")[0];
						ct.parentNode.insertBefore(nt, ct);
					}
					add_chatinline();
				</script>
            </div>
          </div>
        </div>
    
	