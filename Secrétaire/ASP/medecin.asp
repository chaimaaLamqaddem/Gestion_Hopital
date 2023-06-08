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

req = "medecin_unite'" & idUnite &"'"
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
      <th>NomMédecin</th>
      <th>PrénomMédecin</th>
      <th>LabelUnité</th>
      <th>Jour</th>
      <th>HeureDébut</th>
      <th>HeureFin</th>

  </tr>
  </thead>
  <tbody>
  
    <% do until rs.EOF %>
    <tr>
    <%for each x in rs.Fields%>
      
      <td><%Response.Write(x.value)%></td>
   
      
    <%next
    rs.MoveNext%>
    
   </tr>
  <%loop
  rs.close
  cx.close
  %>
   
  </tbody>
      
</table>
</section>
</body>
</html>