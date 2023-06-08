
<%
Set cx = Server.CreateObject("ADODB.Connection")
Dim etatPatient,nomPatient
ON ERROR RESUME NEXT
cx.Open Application("PC")
nomPatient = request.queryString("nomPatient")
dateActuelle = request.queryString("dateActuelle")
response.write(dateActuelle)
etatPatient = "fini"
req = "Update_etat_Patient'"  & nomPatient & "','" & etatPatient & "'"

on error resume next

cx.Execute (req)

 if err<>0  then
    response.write(err.Description)
  else
    response.write("Update")
  end if

Response.redirect "patients.asp"

cx.close()
%>

