
<%
dim medicament,qte,posologie,details,idPatient
idPatient=Request.Form("idPatient")

medicament=Request.Form("medicament")
qte=Request.Form("qte")
posologie=Request.Form("posologie")
details=Request.Form("details")
idPatient=Request.Form("idPatient")


Set cx = Server.CreateObject("ADODB.Connection")
ON ERROR RESUME NEXT
cx.Open Application("PC")
If(Err.number <> 0) Then
    Response.write "DESC Erreur : " & Err.Description
    Response.end
End If

req = "Ajouter_Ordonnance'" & medicament & "','" & qte & "','"& posologie & "','"& details & "','"& idPatient &  "'"
Set rs = Server.CreateObject("ADODB.RecordSet")
rs.Open req, cx, 3,3
If(Err.number <> 0) Then
    Response.write "DESC Erreur : " & Err.Description
    Response.end
End If



%>
<%
Response.Redirect "ordonnance.asp?idPatient="& idPatient
%>
