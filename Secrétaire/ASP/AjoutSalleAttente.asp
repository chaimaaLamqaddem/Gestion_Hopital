
<% 
idPatient =  Request.queryString("idPatient")
Set cx = Server.CreateObject("ADODB.Connection")
ON ERROR RESUME NEXT
cx.Open Application("PC")
If(Err.number <> 0) Then
    Response.write "DESC Erreur : " & Err.Description
    Response.end
End If
req = "Afficher_Patient'" & idPatient & "'"
Set rs = Server.CreateObject("ADODB.RecordSet")
rs.Open req, cx, 3,3
nomPatient =rs("nom_Patient")
prenomPatient = rs("prenom_Patient")
Sexe = rs("Sexe_Patient")
LieuNaissance = rs("Lieu_Naissance")
etatPatient ="enAttente"
idUnite = Session("idUnite")

If(Err.number <> 0) Then
    Response.write "DESC Erreur : " & Err.Description
    Response.end
End If

req1 ="Ajouter_Patient_SalleAttente'"& nomPatient & "','"& prenomPatient & "','"& Sexe & "','"& LieuNaissance & "','"& etatPatient & "','"& idUnite & "'"
Set rs1 = Server.CreateObject("ADODB.RecordSet")
rs1.Open req1, cx, 3,3

If(Err.number <> 0) Then
    Response.write "DESC Erreur : " & Err.Description
    Response.end
End If
Response.Redirect "salleAttente.asp?idUnite="& Session("idUnite")
 %>
