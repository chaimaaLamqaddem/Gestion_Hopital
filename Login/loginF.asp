<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="Login/login_frame.css">
	<title>login page</title>
</head>
<body>
	<div class="h"><img src="Login/logo.png" width="110" height="110">
	<h2>Care Hospital</h2>
</div> 


	
	<div class="frame">

		<img src="Login/im3.png" width="450" height="450" class="img">
					<nav>
	<ul>
	 <li id="a1" onclick="">Administrateur</li>
	 <li id="a2" onclick="">Medecin</li>
	 <li id="a3" onclick="">Secritaire</li>
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
			<img src="Login/im1.png" width="450" height="450" class="img">
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
		
	</script>

</body>
</html>