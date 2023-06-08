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
req = "tous_LesPatients_Par_Unite_SalleAttente'" & Session("idUnite") & "'"
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
        <link rel="stylesheet" href="../CSS/UpdatePatient.css">
        <style>
        .hide-element 
        {
                display: none;
        }
        .SalleAttente{
            text-align: center;
            font-size:20px;
            padding:2px;
            margin:2px;
            
         }
        </style>
	</head>
	<body>
   <section class="main">
   <p class="SalleAttente">Salle Attente</p>
   <table class="content-table" width="80%" >
  <thead>
  <tr> 
      <th>NumPatient</th>
      <th>NomPatient</th>
      <th>PrénomPatient</th>
      <th>SexePatient</th>
      <th>LieuPatient</th>
      <th>étatPatient</th>
      <th>Action</th>
  </tr>
  </thead>
  <tbody id="tableBody">
  <%
    i=1
    WHILE NOT Rs.EOF%>
			<tr>
            <td class="hide-element"><%=rs("id_Patient")%></td>
            <td><% Response.write(i) %></td>
            <td><%=rs("nom_Patient")%></td>
            <td><%=rs("prenom_Patient")%></td>
            <td><%=rs("Sexe_Patient")%></td>
            <td><%=rs("Lieu_Naissance")%></td>
            <td><%=rs("etat_Patient")%></td>
            <td>
            <button  class="update"><img src="../images/refresh.png" height="25" width="25" >Update<button>
            <a href="deletePatientAttente.asp?idPatient=<%=rs("id_Patient")%>&idUnite=<%=Session("idUnite")%>"><img src="../images/x-mark.png" height="30" width="30"></a>
            </td>
			</tr>
			<%
			i = i + 1
			Rs.movenext
		WEND 
  %>  
  </tbody>     
</table>
</section>
<div class="wrapper" id="wrapper">
        <div class="title">Update Patient </div>
        <form class="form" method="get" action="updatePatientAttente.asp">
            <div class="inputfield">
                <label>Nom Patient</label>
                <input type="text" class="input" name ="nomPatient" id="nomPatient">
            </div>  
            <div class="inputfield">
                <label>Prénom Patient</label>
                <input type="text" class="input" name ="prenomPatient" id="prenomPatient">
            </div> 
            <div class="inputfield">
                <label>Sexe</label>
                <div class="custom_select">
                <select name="sexe" id="sexe">
                    <option value="">Select</option>
                    <option value="homme">Homme</option>
                    <option value="femme">Femme</option>
                </select>
                </div>
            </div> 
            <div class="inputfield">
                <label>Lieu Naissance</label>
                <input type="text" class="input" name="LieuNaissance" id="lieuNaissance">
            </div> 
            <div class="inputfield">
                <label>étatPatient</label>
                <input type="text" class="input" name="etatPatient" id="etatPatient">
            </div>
            <input type="hidden" class="input" name="idPatient" id="idPatient">
            <div class="inputfield">
            <input type="submit" value="Register" class="btn">
            </div>
        </form>
</div>
<script>
         let formUpdate = document.getElementById("wrapper");
         let tableElement = document.getElementById("tableBody"),rIndex;
         let buttonUpdate = document.querySelectorAll(".update"); 
        for(var i = 0; i < tableElement.rows.length; i++)
        {
            buttonUpdate[i].addEventListener("click", function() {
            var row = this.parentNode.parentNode;
            formUpdate.classList.add("open");
            let idPatient = row.cells[0].innerHTML;
            document.getElementById("idPatient").value = idPatient;
            let nomPatient = row.cells[2].innerHTML;
            document.getElementById("nomPatient").value = nomPatient;
            let prenomPatient = row.cells[3].innerHTML;
            document.getElementById("prenomPatient").value = prenomPatient;
            let sexePatient = row.cells[4].innerHTML;
            document.getElementById("sexe").value = sexePatient;
            let LieuNaissance =row.cells[5].innerHTML;
            document.getElementById("lieuNaissance").value = LieuNaissance;
            let etatPatient =row.cells[6].innerHTML;
            document.getElementById("etatPatient").value = etatPatient;
            console.log(nomPatient);
            console.log(prenomPatient);
            console.log(LieuNaissance);
            console.log(sexePatient);
            console.log(etatPatient);
                
            });
            
        }
        
</script> 
</body>
</html>  
 
 
