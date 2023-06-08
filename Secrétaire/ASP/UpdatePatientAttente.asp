
<%
idPatient =  Request("idPatient")
nomPatient=Request("nomPatient")
prenomPatient=Request("prenomPatient")
LieuNaissance=Request("LieuNaissance")
Sexe=Request("sexe")
etatPatient =Request("etatPatient")
Set cx = Server.CreateObject("ADODB.Connection")
ON ERROR RESUME NEXT
cx.Open Application("PC")
If(Err.number <> 0) Then
    Response.write "DESC Erreur : " & Err.Description
    Response.end
End If
req = "update_Patient_SalleAttente'"& nomPatient & "','"& prenomPatient & "','"& Sexe & "','"& LieuNaissance & "','"& etatPatient & "','"& idPatient & "'"
on error resume next
cx.Execute req

If(Err.number <> 0) Then
response.write(err.Description)
else
response.write("Update")
end if
cx.close()
Response.Redirect "salleAttente.asp?idUnite="& Session("idUnite")
%>

