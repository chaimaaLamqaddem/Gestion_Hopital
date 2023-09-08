<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="Login/login_frame.css">
	<title>login page</title>
	<style>
	*{
	margin: 0;
	padding: 0;
	box-sizing: content-box;
}
body{
	background-color: rgb(70, 162, 223);
	background-size:cover;
	font-family: sans-serif;



}




.frame{
	
  height: 80vh;
  width: 100vw;
  display: flex;

}


.img{
	margin-top: 10px;
	margin-left: 20px;
}
ul{
	justify-content:center ;
    align-items: center;
   position: absolute;
    list-style: none;
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	margin-left: 10rem;
	margin-top: -40px;
	border-top-left-radius: 20px;
	border-top-right-radius: 20px;
	border-bottom-left-radius: 20px;
	border-bottom-right-radius: 20px;
	background-color: aliceblue;
	
}



nav ul li {
	
	float: left;
	color: rgb(24, 17, 240);
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	line-height: 20px;
	font-size: 20px;
	border-top-left-radius: 20px;
	border-top-right-radius: 20px;
	border-bottom-left-radius: 20px;
	border-bottom-right-radius: 20px;
	background-color: transparent;
	/* border: solid rgb(244, 240, 240) 5px; */
	cursor: pointer;

}
	




body nav ul li:hover{
	display: block;
	background-color:rgb(48, 4, 241);
	border-top-left-radius: 20px;
	border-top-right-radius: 20px;
	border-bottom-left-radius: 20px;
	border-bottom-right-radius: 20px;
	cursor: pointer;
	color:white;
	
	border-color: white;
	

 
}


.form{
	margin:70px;
	width: 370px;
	height: 400px;
	margin-left: 190px;
	margin-top: 40px;
	border: solid rgb(62, 10, 249) 1px;
	border-radius: 20%;
	box-shadow: 0 0 4px 4px rgb(12, 4, 236);
	background-color: white;
	

}



.form img {
  position: relative;
  top: -0px;
  left: calc(50% - 50px);
  width: 100px;
  background: rgba(255,255,255, 0.8);
  border-radius: 50%;
}
.form h2{
	text-align: center;
	font-size: 35px;
	margin-bottom: 2rem;
	color: rgb(85, 13, 240);

}


.form .input-btn{
	position: relative;
	left: 15px;
}
.form .input-btn input{
	width: 90%;
	padding: 10px 0;
	font-size: 1rem;
	letter-spacing: 1px;
	margin-bottom: 10px;
	border: none;
	border-bottom: 1px solid rgb(79, 6, 223);
	outline: none;
	background-color: transparent;
	color: inherit;

}
.form .input-btn label{
	position: absolute;
	color: rgb(41, 10, 220);
	top: 0px;
	left: 10px;
	padding: 10px 0;
	font-size: 1rem;
	pointer-events:none;
    transition: .3s ease-out;


}
.form .input-btn input:focus +label,
.form .input-btn input:valid +label{
	transform: translateY(-18px);
	color: rgb(20, 46, 241);
	font-size: .8rem;
}

.submit-btn{
	display: block;
	margin-left: auto;
	border: none;
	outline: none;
	background:rgb(25, 5, 240);
	font-size: 1rem;
	margin-right: auto;
	margin-top: 20px;
	margin-bottom: 12px;
	letter-spacing: 1px;
	padding: 10px 20px;
	border-radius: 5px;
	cursor: pointer;
	color: white;
	align-content: center;
	
	

}

.forgot-pass{
	color: rgb(41, 14, 244) ;
	text-align: center;
	background-color: transparent;
	margin-left: 130px;
	align-content: center;



}

forgot-pass:hover:not(.active){
	display: inline-block;
	background-color: transparent;

}


#forgot-pass{
	position: absolute;
	display: flex;
	justify-content: center;
	align-items: center;
	
	top: 0;
	left: 0;
	right: 0;
	height: 0;
	z-index: 1;
	background: rgb(5, 5, 243);
	opacity: 0;
	transition: 0.6s;

}

.h{
	display: flex;
  align-items: center;
  margin-top: 4px;

}
.h img{
	margin-left: 40px;
}

#forgot-pass h2{
	text-align: center;
	font-size: 30px;
	margin-top: 25px;
	margin-bottom: 2rem;
	color: rgb(9, 29, 245);

}



#forgot-pass:target{
	height: 100%;
	opacity: 1;



}

.close {
  position: absolute;
  right: 1.5rem;
  top: 0.5rem;
  font-size: 2rem;
  font-weight: 900;
  text-decoration: none;
  color: rgb(243, 243, 247);


  color: rgb(6, 6, 250);
}



	</style>
</head>
<body>

	<div class="h"><img src="Login/logo.png" width="110" height="110">
	<h2><a href="/HOSPITALPROJECT/ss" target="_blank" >CareHospital</a></h2>     
    </div> 


	
	<div class="frame">

		<img src="Login/im3.png" width="450" height="450" class="img">
					<nav>
	<ul>
	 <li id="a1" onclick="redirectToSite()"><a href="/HOSPITALPROJECT/SiteHopital/index.html" target="_blank" >Site</a></li>
	 <li id="a2" onclick="">Medecin</li>
	 <li id="a3" onclick="">Secretaire</li>
	 <li id="a4" onclick="">Caissier</li>
	</ul>
</nav>

		<form action="Login/LoginA.asp" name="LoginFrame" id="LoginFrame" class="form">


			<img src="Login/avatar.png" width="50" height="50">
			<h2> Login</h2>
			<div class="input-btn"> 
				<input type="text" name="Username" id="Username" value="<%=Session("Login")%>" required>
				<label for="Username"> Nom utilisateur</label>
			</div>
			<div class="input-btn"> 
				<input type="Password" name="Password" id="Password" value="<%=Session("Password")%>" required>
				<label for="Password"> Mot de passe</label>
			</div>
			<div class="input-btn"> 
				<input type="text" name="unite" id="unite"  required>
				<label for="unite"> Role</label>
			</div>
			<div>
			<%If (Len(Session("Message")) > 0) Then%>
									<b><font color="red"><%=Session("Message")%></font></b>
							<%End If%>
			</div>
	<input type="submit" name="login" value ="Login" class="submit-btn" onclick="verification()">
			

		</form>

		<div id="forgot-pass" >
			<img src="/HOSPITALPROJECT/Login/im1.png" width="450" height="450" class="img">
			<form action="" class="form">
				<a href="#" class="close">&times;</a>
				<h2>Reset Password</h2>
				<div class="input-btn">
				<input type="email" name="email" id="email">
				<label for="email">Email</label>
				</div>
				<input type="submit" name="submit" value="submit" class="submit-btn">
			</form>
		</div>
	</div>
	<script src="Login/login_frame.js">
		
function redirectToSite() {
  window.location.href = "/HOSPITALPROJECT/SiteHospital/index.html";
}
</script>


</body>
</html>