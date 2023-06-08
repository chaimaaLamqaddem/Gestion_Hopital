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
req1 = "Nbr_Chambres_Vides_Unite'"& idUnite &"'"
req2 = "Nbr_Chambres_Plein_Unite'"& idUnite &"'"
Set rs = Server.CreateObject("ADODB.RecordSet")
Set rs1 =Server.CreateObject("ADODB.RecordSet")
Set rs2 =Server.CreateObject("ADODB.RecordSet")
rs.Open req, cx, 3,3
rs1.Open req1, cx, 3,3
rs2.Open req2, cx, 3,3

%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>chambre</title>
    <link rel="stylesheet" href="../CSS/chambre.css">
</head>
<body> 
    <div class="divContainer">
        <div class="container">
            <div class="TotalNombre">
                <div class="icon">
                    <img src="../images/chart.png" height="20" width="20">
                    <div class="te">CHAMBRES TOTALS </div>
                </div>
                <div class="nombre"><%= rs.RecordCount %></div>
            </div>
            <div class="NombreVides">
              <div class="icon">
                    <img src="../images/decrease.png" height="20" width="20">
                    <div class="te">CHAMBRES VIDES </div>
              </div>
                <div class="nombre"><%= rs1.RecordCount %></div>
            </div>
        <div class="NombrePlein">
             <div class="icon">
                    <img src="../images/profits.png" height="20" width="20">
                    <div class="te">CHAMBRES PLEINS </div>
              </div>
            <div class="nombre"><%= rs2.RecordCount %></div>
        </div>
        </div> 
        <div class="lien">
            <a href="AfficherChambre.asp?idUnite=<%=idUnite%>">Détails</a>
        </div>      
    </div>
      
    
  
</body>
</html>