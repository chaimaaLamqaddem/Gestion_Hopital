
<%
	dim login, passwd

	login  = Request("Username")
	passwd = Request("Password")
	unite = Request("unite")

	Set cx = Server.CreateObject("ADODB.Connection")

	ON ERROR RESUME NEXT

	cx.Open Application("PC")

	If(Err.number <> 0) Then
		Response.write "DESC Erreur : " & Err.Description
		Response.end
	End If
	
	req = "ps_user_authentification '" & login & "','" & passwd & "'"
	Set rs = Server.CreateObject("ADODB.RecordSet")
	rs.Open req, cx, 3,3

	Set cx1 = Server.CreateObject("ADODB.Connection")

	ON ERROR RESUME NEXT

	cx1.Open Application("PC")

	If(Err.number <> 0) Then
		Response.write "DESC Erreur : " & Err.Description
		Response.end
	End If
	
	req1 = "[ps_unite] '" & unite  & "'"
	Set rs1 = Server.CreateObject("ADODB.RecordSet")
	rs1.Open req1, cx1, 3,3

	

	Response.write rs("id_User")
	Response.write rs("login")
	Response.write rs("password")
	Response.write rs("Role_User")

	If(rs.RecordCount = 1) Then
		Session("id_Unite")=rs("id_Unite")
		If(rs("Role_User")="medecin") Then

		Response.redirect "../Medecin/pages/medcin2.html"
	    ElseIf(rs("Role_User")="caissier") Then
		Response.redirect "../Caissier/Facture.asp" 
		ElseIf(rs("Role_User")="secretaire") Then
		Response.redirect "../Secrétaire/ASP/unite.asp"
		End If

	Else
		Session("IdUser") = ""
		Session("login") = login
		Session("Password") = passwd
		Session("Message") = "Veuillez verifier votre login et/ou mot de passe"
		Response.redirect "LoginF.asp"
	End If


	rs.close()
	Set rs = nothing
	cx.close()
	Set cx = Nothing
%>