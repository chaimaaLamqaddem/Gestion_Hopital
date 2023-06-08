<%
idPatient =  Request.queryString("idPatient")
Set cx = Server.CreateObject("ADODB.Connection")
ON ERROR RESUME NEXT
cx.Open Application("PC")
If(Err.number <> 0) Then
    Response.write "DESC Erreur : " & Err.Description
    Response.end
End If
req = "Supprimer_Patient_SalleAttente'" & idPatient & "'"
Set rs = Server.CreateObject("ADODB.RecordSet")
rs.Open req, cx, 3,3
Response.Redirect "salleAttente.asp?idUnite="& Session("idUnite")
%>