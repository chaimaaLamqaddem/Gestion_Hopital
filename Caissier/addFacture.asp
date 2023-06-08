<%
dim nomPatient,prenomPatient,dateNaissance,montantPaye,modePaiement,Sexe
idFacture = 22
nomPatient=Request.Form("nomPatient")
prenomPatient=Request.Form("prenomPatient")
age=Request.Form("age")
'LieuNaissance=Request.Form("LieuNaissance")
adrEmail=Request.Form("email")
medecin=Request.Form("medecin")
unite=Request.Form("unite")
montantPaye=Request.Form("montantPaye")
modePaiement=Request.Form("modePaiement")




Set cx = Server.CreateObject("ADODB.Connection")
ON ERROR RESUME NEXT
cx.Open Application("PC")
If(Err.number <> 0) Then
    Response.write "DESC Erreur : " & Err.Description
    Response.end
End If

req = "[ps_recuperer_idPatient]'" & nomPatient & "','" & prenomPatient & "'"
Set rs = Server.CreateObject("ADODB.RecordSet")
rs.Open req, cx, 3,3

req1 = "[ps_facture_patient]'" & rs(id_Patient) & "','" & modePaiement & "','"& montantPaye & "','"& Sexe & "','" & montantPaye & "','"& modePaiement & "'"
Set rs1 = Server.CreateObject("ADODB.RecordSet")
rs.Open req, cx, 3,3
If(Err.number <> 0) Then
    Response.write "DESC Erreur : " & Err.Description
    Response.end
End If



%>