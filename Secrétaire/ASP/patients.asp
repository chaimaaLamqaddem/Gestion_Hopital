<!--#INCLUDE FILE="slidebar.asp"-->
  
<%
idUnite = Request.queryString("idUnite")
Session("idUnite") = idUnite

Set cx = Server.CreateObject("ADODB.Connection")
ON ERROR RESUME NEXT
cx.Open Application("PC")
If(Err.number <> 0) Then
    Response.write "DESC Erreur : " & Err.Description
    Response.end
End If
req = "tous_LesPatients_Par_Unite'" & Session("idUnite") & "'"
Set rs = Server.CreateObject("ADODB.RecordSet")
rs.Open req, cx, 3,3
If(Err.number <> 0) Then
    Response.write "DESC Erreur : " & Err.Description
    Response.end
End If
%>
<html lang="fr">
    <head>
        <title>Secretaire</title>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel="stylesheet" href="../CSS/tableau.css">   
	</head>
	<body>
   <section class="main">
   <form method="get" action="rechercherPatient.asp" class="form">
        <input type="text" class="date" name="nomPatient">
        <input type="hidden"  name="idUnite"  value ="<%=Session("idUnite") %>"> 
        <input type="submit" value="Rechercher" name="rechercher"  id="rechercher">         
   </form>
   
   <table class="content-table" width="80%">

  <thead>
  <tr> 
      <th>NumPatient</th>
      <th>NomPatient</th>
      <th>PrénomPatient</th>
      <th>DateNaissance</th>
      <th>SexePatient</th>
      <th>LieuPatient</th>
      <th>Action</th>
  </tr>
  </thead>
  <tbody>
  <%
    i=1
    WHILE NOT Rs.EOF%>
			<tr>
            <td><% Response.write(i) %></td>
            <td><%=rs("nom_Patient")%></td>
            <td><%=rs("prenom_Patient")%></td>
            <td><%=rs("date_Naissance")%></td>
            <td><%=rs("Sexe_Patient")%></td>
            <td><%=rs("Lieu_Naissance")%></td>
            <td><a href="AjoutSalleAttente.asp?idPatient=<%=rs("id_Patient")%>&idUnite=<%=Session("idUnite")%>"><img src="../images/plus.png" height="20" width="20"></a></td>
			</tr>
			<%
			i = i + 1
			Rs.movenext
		WEND 
  %>  
  </tbody>     
</table>
</section>
    </body>
</html>  
 
