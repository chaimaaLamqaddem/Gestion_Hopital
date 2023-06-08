<%
dim nomPatient,prenomPatient,dateNaissance,LieuNaissance,Adresse,Sexe
nomPatient=Request.Form("nomPatient")
prenomPatient=Request.Form("prenomPatient")
dateNaissance=Request.Form("dateNaissance")
LieuNaissance=Request.Form("LieuNaissance")
Adresse=Request.Form("adresse")
Sexe=Request.Form("sexe")
idUnite = Session("idUnite")

Set cx = Server.CreateObject("ADODB.Connection")
ON ERROR RESUME NEXT
cx.Open Application("PC")
If(Err.number <> 0) Then
    Response.write "DESC Erreur : " & Err.Description
    Response.end
End If

req = "Ajouter_Patient'"& nomPatient & "','"& prenomPatient & "','"& dateNaissance & "','"& Adresse & "','"& Sexe & "','"& LieuNaissance & "','"& idUnite &"'"
Set rs = Server.CreateObject("ADODB.RecordSet")
rs.Open req, cx, 3,3
If(Err.number <> 0) Then
    Response.write "DESC Erreur : " & Err.Description
    Response.end
End If

Response.Redirect "patients.asp?idUnite="& Session("idUnite")

%>