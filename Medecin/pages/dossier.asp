<%  
idPatient=Request.queryString("idPatient")
%>

<%

Set cx = Server.CreateObject("ADODB.Connection")
ON ERROR RESUME NEXT
cx.Open Application("PC")
If(Err.number <> 0) Then
    Response.write "DESC Erreur : " & Err.Description
    Response.end
End If
req = "[Afficher_Patient] '" & idPatient &"'"
Set rs = Server.CreateObject("ADODB.RecordSet")
rs.Open req, cx, 3,3

req2= "[Afficher_Cons]'"  & idPatient & "'"
Set rs2 = Server.CreateObject("ADODB.RecordSet")
rs2.Open req2, cx, 3,3


req3= "[get_ord]'"  & idPatient& "'"
Set rs3 = Server.CreateObject("ADODB.RecordSet")
rs3.Open req3, cx, 3,3

If(Err.number <> 0) Then
    Response.write "DESC Erreur : " & Err.Description
    Response.end
End If
%>

 
<head>
<script src="https://kit.fontawesome.com/f2bd761db0.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" crossorigin="anonymous" >
   
<script src="https://cdn.jsdelivr.net/npm/jspdf@1.5.3/dist/jspdf.min.js"></script>
<script src="https://cdn.jsdelivr.net/gh/cburgmer/rasterizeHTML.js@v1.2.3/dist/rasterizeHTML.allinone.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.5.0-beta4/html2canvas.js"></script>


    <style>
.container {
  display: flex;
}

.col-left {
  width: 40%;
  padding: 10px;
   border:2px solid black;
   margin-right:10%;
}

.col-right {
  width: 40%;
  padding: 10px;
  border:2px solid black;
}
h3{
  background-color:pink;
}

h2{
   font-size: 20px;
  text-shadow: -1px -1px #0c0, 1px 1px #060, -3px 0 4px #000;
  font-family:Arial, Helvetica, sans-serif;
  color: #090;
  padding:16px;
  font-weight:lighter;
  -moz-box-shadow: 2px 2px 6px #888;  
  -webkit-box-shadow: 2px 2px 6px #888;  
  box-shadow:2px 2px 6px #888;  
  text-align:center;
  display:block;
 
}
p{
   
  font-size: 18px;
  font-style:italic;
  font-family:times,serif;
  font-weight: bold;
  margin-bottom: 0.5rem;
  /* color:red; */
}
/* .consultation-table{
 margin: 20px;
  width: 80%;
  text-align:center;
  border-collapse : collapse;
   border : 1px solid blue ;

} */
  .medicament-table,.consultation-table {
    border-collapse: collapse;
    width: 100%;
  }
.medicament-table th,
.medicament-table td,
  .consultation-table th,
  .consultation-table td {
    border: 1px solid #ddd;
    padding: 8px;
    text-align: left;
  }

  .consultation-table th {
    background-color: #ddd;
  }


.sub{
    background-color: #2596be;
    font-size: larger;
    border-radius: 50px;
    width:300px;
    margin-left:400px;
     margin-top:50px;
     margin-bottom:50px;
}
body {
  background-color: white;
}


    </style>
</head>
 
<body>
<h2> Informations </h2>
<div class="container">

  <div class="col-left">
    <h3>Informations du patient</h3>
    <hr>
    <p>ID du patient: <%=rs("id_Patient")%></p>
    <p>Nom du patient: <%=rs("nom_Patient")%></p>
    <p>Prénom du patient: <%=rs("prenom_Patient")%></p>
    <p>Sexe du patient: <%=rs("Sexe_Patient")%></p>
    <p>Lieu de naissance: <%=rs("lieu_Naissance")%></p>
  </div>
  <div class="col-right">
    <h3>Informations du médecin</h3>
    <hr>
    <p>Nom du médecin: <%=rs("nomMedcin")%></p>
    <p>Prénom du médecin: <%=rs("prenomMedcin")%></p>
  </div>
</div>

 <h2> Consultations </h2>
<table class="consultation-table">
  <thead>
    <tr>
      <th>Date de consultation</th>
      <th>Description de la consultation</th>
    </tr>
  </thead>
  <tbody>
 
    
<% do until rs2.EOF %>
    <tr>
    <%for each x in rs2.Fields%>
      
 <td><%Response.Write(x.value)%></td>
     
    <%next
    rs2.MoveNext%>
   
   
  <%loop

  %>
  </tbody>
</table>

 <h2> Ordonnances </h2>

 <table class="medicament-table">
  <thead>
    <tr>
      <th>Médicament</th>
      <th>Quantité</th>
      <th>Posologie</th>
      <th>Détails</th>
    </tr>
  </thead>
  <tbody>
   <% do until rs3.EOF %>
    <tr>
    <%for each x in rs3.Fields%>
      
 <td><%Response.Write(x.value)%></td>
     
    <%next
    rs3.MoveNext%>
   
   
  <%loop

  %>
  </tbody>
</table>

<button id="download-button" class="sub"><i class="fa-solid fa-download"></i>Télécharger le dossier</button>




<script>
 document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("download-button").addEventListener("click", function() {
        document.getElementById("download-button").style.display = "none";


  
      var pdf = new jsPDF();
      pdf.addHTML(document.body, function() {
        pdf.save("dossier.pdf");
        document.getElementById("download-button").style.display = "block";
      });
    });
  });
</script>
</body>
 
</html>