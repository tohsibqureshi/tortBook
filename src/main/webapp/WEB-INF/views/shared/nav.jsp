<link rel="css/index.css">
	<!--navbar-->
	 <div class="header">
            <div class="logo" title="TORTBOOK"><a href="/"><img src="img/logo1.png"  height="40px" width="150px" ></a></div>
            <input type="checkbox" id="chk">
            <label for="chk" class="show-menu-btn">
                <i class="fas fa-ellipsis-h"></i>
                
            </label>
            
            <ul class="menu">
            	<c:if test="${vUser.lu!=true}">
                	<a href="/">Home</a>
                </c:if>
                <c:if test="${vUser.lu==true}">
                	 <a href="/mytimeline">My Timeline</a>
                </c:if>
            
                <a href="/about">About</a>
                <a href="/contact">Contact Us</a>
                <c:if test="${vUser.lu!=true}">
                	 <a href="/login">Login</a>
                	 <a href="/signup">SignUp</a>
                </c:if>
                <c:if test="${vUser.lu==true}">
                	 <a href="/profile"> My Profile</a>
                </c:if>
                <c:if test="${vUser.lu==true}">
                	 <a href="/logout">Logout</a><img src="upload/${vUser.image}"  style="align-self: stretch;border-radius: 50%;float: right;line-height: 10px;margin-top: 10px;" height="40px" width="40px" >
               
                </c:if>
                 <label for="chk" class="hide-menu-btn">
                <i class="fas fa-times"></i>    
                </label>
           </ul>
        </div>
	<!--//navbar-->
