
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
req = "[Afficher_ord]'"  & idPatient & "'"
Set rs = Server.CreateObject("ADODB.RecordSet")
rs.Open req, cx, 3,3
req2= "[get_Patient]'"  & idPatient & "'"
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
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.0.272/jspdf.debug.js"></script>
    <script>
      function generatePDF() {

        let date = new Date();
let jour = date.getDate();
let mois = date.getMonth() + 1; // months are zero-based
let annee = date.getFullYear();
let y=130;
let x=5;

          var pdf = new jsPDF({
              orientation: 'p',
              unit: 'mm',
              format: 'a4',
              putOnlyUsedFonts:true
              });
      
              // pdf.setEncoding('UTF-8');
          pdf.text(" Docteur Noura Chaanoune", 0, 20,{fontSize: 12, fontName: 'Lucida Console'});
          pdf.text("  Spécialiste des Maladies et chirugie des yeux pour Adultes et enfants", 0, 30);
//           pdf.text("الدكتور نورة شعانون", 80, 20, {charSpace: 0.5, fontSize: 12, fontName: 'Arial', dir: 'rtl'});
// pdf.text("خبير أمراض وجراحة العيون للبالغين والأطفال", 80, 30, {charSpace: 0.5, fontSize: 12, fontName: 'Arial', dir: 'rtl'});

          pdf.text(". Chirugie de la caractere par phacemulsification", 10, 40);
          pdf.text(". Lentils de contacts", 10, 50);
          pdf.text(". Starbisme", 10, 60);
          pdf.text(". Visite du permis de conduire", 10, 70);
          pdf.text("Casablanca le :   "+jour+" /" +mois+" /"+annee, 60, 90);
pdf.text("Patient :   ", 20, 100);
          <% do until rs2.EOF %>
    
    let z=60;
    <%for each p in rs2.Fields%>
      
     pdf.text(" <%Response.Write(p.value) %> ", z, 100);

z=z+30;
      <%  next 
      rs2.MoveNext%>
    <%loop %>


 pdf.text("Medicament", 5, 120);
  pdf.text("qte", 40, 120);
    pdf.text("posologie", 70, 120);
            <% do until rs3.EOF %>
    
    
    <%for each x in rs3.Fields%>
      
     pdf.text("<%Response.Write(x) %> ", x, y);
x=x+35;
      <%  next 
      rs3.MoveNext%>
    
x=5;
y=y+10;
    <%loop %>
    
          // pdf.text("Doliprane 1 comprime   3 fois par jour  ", 50, 130);
          // pdf.text("Paracetamol 2 comprime   1 fois par jour  ", 50, 140);
          // pdf.text("cotacnyl 1/2 comprime   2 fois par jour  ", 50, 150);


          pdf.line(20, 250, 200, 250);

          pdf.text("al wifak office IMM4 , Bureun num 3 alwifak casablanca : 8753256 ", 30, 260);
          pdf.text("Tel: 212 67 78 56 78 / Email: carehospital@gmail.com", 30, 270);
       

      
 
          // pdf.addPage();
          // pdf.text(20, 20, 'The second page');
          pdf.save('ordonnance.pdf');
          // window.open(pdf)
      }
  </script>
    <script>
  // document.getElementById("todayDate").innerHTML = new Date().toLocaleDateString();
</script>
  <script src="https://kit.fontawesome.com/f2bd761db0.js" crossorigin="anonymous"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ordonnance</title>
    <style>
        /* espacement */

table {
  table-layout: fixed;
  width: 100%;
  border-collapse: collapse;
  border: 3px solid #f0a500;
 
}
thead{
    background-color: #f0a500;

}

thead th:nth-child(1) {
  width: 10%;

}

thead th:nth-child(2) {
  width: 20%;
 
}

thead th:nth-child(3) {
  width: 10%;
}

thead th:nth-child(4) {
  width: 20%;
}
thead th:nth-child(5) {
  width: 30%;
}
thead th:nth-child(5) {
  width: 10%;
}
th, td {
  padding: 20px;
  text-align: center;
/* 
  border: 1px solid red; */
}
.to{
    /* background-color: rgb(226, 253, 176); */
   border-collapse: collapse;
   background-color: #ffffff;background-color: #e5e5f7;
   background-color: #ffffff;
opacity: 0.7;
background: radial-gradient(circle, transparent 20%, #ffffff 20%, #ffffff 80%, transparent 80%, transparent), radial-gradient(circle, transparent 20%, #ffffff 20%, #ffffff 80%, transparent 80%, transparent) 22.5px 22.5px, linear-gradient(#27dae8 1.8px, transparent 1.8px) 0 -0.9px, linear-gradient(90deg, #27dae8 1.8px, #ffffff 1.8px) -0.9px 0;
background-size: 45px 45px, 45px 45px, 22.5px 22.5px, 22.5px 22.5px;
}
.sub{
    background-color: #2596be;
    
    font-size: larger;
    border-radius: 50px;
    width: 150px;
}
.inp{
    text-align: right;
    font-family: "Lucida Console", "Courier New", monospace;
    font-style: italic;
    font-weight: bolder;
  

    
}
.TCinp{
  text-align: center;
}
.Cinp{
    text-align: left;
    width: 350px;
    height: 60px;
    
}
i{
  padding-right: 10px;
}
    </style>
</head>
<body>
    

    <div class="ord">
        <table class="to">
            <form method="post" action="ajouterOrd.asp">
                <tr >
                  <td width="10">Date d'ordonnance:</td>

                  <td><input type="date" name="" id=""></td>
<!-- <td width="100">
  <p id="todayDate"></p>
</td> -->



                         </tr>
           <tr class="th">
             <td class="inp">Medicament :</td>
             <td class="TCinp"  ><input type="text" name="medicament" id="medicament" class="Cinp" required></td>
        
        </tr>
        <tr>
            <td class="inp">Quantité :</td>
            <td class="TCinp"><input type="int" name="qte" id="qte" class="Cinp" required></td>
        </tr>
        <tr>
            <td class="inp">Posologie :</td>
            <td class="TCinp" ><input type="text" name="posologie" id="poso" class="Cinp" required></td>
        </tr>
        <tr>
            <td class="inp">Details :</td>
            <td class="TCinp"><textarea type="text" name="details" id="details" cols="40" rows="10" class="Cinp" required> </textarea></td>
        </tr>
           <tr>
            <td></td>
            <td class="TCinp" ><input type="submit" value="+ Ajouter" class="sub" ></td>
           </tr>
           <input type="hidden" name="idPatient" class="sub" value="<%=idPatient%>" ></td>
        </form>
        </table>
    </div>


    <div class="Dmed">
        <table class="Tmec">
            <caption>Récapitulatif des medicaments </caption>
            <thead>
              <tr>
                <th scope="col">Numéro</th>
        
                <th scope="col">Médicament</th>
   
                <th scope="col">Quantité</th>
                <th scope="col">Posologie</th>
                <th scope="col">Détails</th>
                <th scope="col">Actions</th>
              </tr>
            </thead>
            <tbody>
      
<tr>
    <% do until rs.EOF %>
    <tr>
    
    <%for each x in rs.Fields%>
      
      <td><%Response.Write(x.value)%></td>
     
      <% idm=rs("id_Ordonnance") %>
    
    <%next
    rs.MoveNext%>
     
  <td><a href="supprimerMed.asp?idMedicament=<%=idm%>&idPatient=<%=idPatient%>"><i class="fa-solid fa-trash-can"></i></a>
                
   </td>

  </tr>  


          <%loop
 
  %>     
            
            </tbody>
            <tfoot>
              <tr>
                <th scope="row" colspan="2">Nombre total de Medicaments :</th>
                <td colspan="2"><%= rs.RecordCount %></td>
                  <td ><button  class="sub" onclick="generatePDF()"><i class="fa-solid fa-download"></i>Télécharger</button></td>
                
              </tr>
            </tfoot>
          </table>
          
    </div>
</body>
</html>