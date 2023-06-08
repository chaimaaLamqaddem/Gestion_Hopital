
<%
dim dateCons,desc,idPatient
idPatient=Request.Form("idPatient")

dateCons=Request.Form("dateCons")
description=Request.Form("description")



Set cx = Server.CreateObject("ADODB.Connection")
ON ERROR RESUME NEXT
cx.Open Application("PC")
If(Err.number <> 0) Then
    Response.write "DESC Erreur : " & Err.Description
    Response.end
End If

req = "Ajouter_Consultation'" & dateCons & "','" & description  & "','"& idPatient &  "'"
Set rs = Server.CreateObject("ADODB.RecordSet")
rs.Open req, cx, 3,3
If(Err.number <> 0) Then
    Response.write "DESC Erreur : " & Err.Description
    Response.end
End If



%>
<%
Response.Redirect "consultation.asp?idPatient="& idPatient
%>
