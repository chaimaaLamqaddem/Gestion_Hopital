let cl1=document.getElementById("a1");
let cl2=document.getElementById("a2");
let cl3=document.getElementById("a3");
let cl4=document.getElementById("a4");
let cl=document.querySelector('body');


cl1.onclick=() => {
	cl1.style.background ='rgb(73, 73, 253)';
	cl1.style.color='white';
	cl.style.background='rgb(50, 50, 205)';
	cl2.style.background ='white';
	cl3.style.background ='white';
	cl4.style.background ='white';
	cl2.style.color='rgb(15, 15, 240)';
	cl3.style.color='rgb(15, 15, 240)';
	cl4.style.color='rgb(15, 15, 240)';
}

cl2.onclick=() => {
	cl2.style.background ='rgb(73, 73, 253)';
	cl2.style.color='white';
	cl.style.background='rgb(47, 47, 250)';
	cl1.style.background ='white';
	cl3.style.background ='white';
	cl4.style.background ='white';
	cl1.style.color='rgb(15, 15, 240)';
	cl3.style.color='rgb(15, 15, 240)';
	cl4.style.color='rgb(15, 15, 240)';
}

cl3.onclick=() => {
	cl3.style.background ='rgb(73, 73, 253)';
	cl3.style.color='white';
	cl.style.background='rgb(94, 94, 252)';
	cl2.style.background ='white';
	cl1.style.background ='white';
	cl4.style.background ='white';
	cl2.style.color='rgb(15, 15, 240)';
	cl1.style.color='rgb(15, 15, 240)';
	cl4.style.color='rgb(15, 15, 240)';
}

cl4.onclick=() => {
	cl4.style.background ='rgb(73, 73, 253)';
	cl4.style.color='white';
	cl.style.background='rgb(50, 50, 251)';
	cl2.style.background ='white';
	cl3.style.background ='white';
	cl1.style.background ='white';
	cl2.style.color='rgb(15, 15, 240)';
	cl3.style.color='rgb(15, 15, 240)';
	cl1.style.color='rgb(15, 15, 240)';
}

function Verification()
			{
				var login  = document.getElementById('Username') ;
				var passwd = document.getElementById('Password') ;
				if(login.value.length == 0)
				{
					alert('Veuillez saisir le login') ;
					login.focus() ;
					return ;
				}
				if(passwd.value.length == 0)
				{
					alert('Veuillez saisir le mot de passe') ;
					passwd.focus() ;
					return ;
				}
				//document.getElementById('FormLogin').action = 'LoginAction.asp' ;
				document.getElementById('loginFrame').submit() ;	
			}