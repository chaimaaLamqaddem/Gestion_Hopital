<!--#INCLUDE FILE="slidebar.asp"-->
<%
idUnite =  Request.queryString("idUnite")
Set cx = Server.CreateObject("ADODB.Connection")
ON ERROR RESUME NEXT
cx.Open Application("PC")
If(Err.number <> 0) Then
    Response.write "DESC Erreur : " & Err.Description
    Response.end
End If
req = "nbr_total_chambre_unite'" & idUnite &"'"
Set rs = Server.CreateObject("ADODB.RecordSet")
rs.Open req, cx, 3,3
%>

<html lang="fr">
    <head>
        <title>Secretaire</title>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
         <link rel="stylesheet" href="../CSS/tableau.css">
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
        
	</head>
	<body>

 <section class="main">
  <table class="content-table" width="80%">

  <thead>
  <tr> 
      <th>LabelChambre</th>
      <th>TypeChambre</th>
      <th>Disponibilité</th>
      <th>LabelUnité</th>
      
  </tr>
  </thead>
  <tbody>
    <%
    i=1
    WHILE NOT Rs.EOF%>
			<tr>
            <td><%=rs("label_Chambre")%></td>
            <td><%=rs("Type_chambre")%></td>
            <td><%=rs("Disponbilite")%></td>
            <td><%=rs("label_Unite")%></td>
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