
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
req = "[Afficher_Patient]'"  & idPatient & "'"
Set rs = Server.CreateObject("ADODB.RecordSet")
rs.Open req, cx, 3,3

req4 = "[Afficher_Patient2]'"  & idPatient & "'"
Set rs4 = Server.CreateObject("ADODB.RecordSet")
rs4.Open req4, cx, 3,3



req2= "[Afficher_Cons]'"  & idPatient & "'"
Set rs2 = Server.CreateObject("ADODB.RecordSet")
rs2.Open req2, cx, 3,3

req3= "[Afficher_ConsPdf]'"  & idPatient & "'"
Set rs3 = Server.CreateObject("ADODB.RecordSet")
rs3.Open req2, cx, 3,3
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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consultation</title>
     <script src="https://kit.fontawesome.com/f2bd761db0.js" crossorigin="anonymous"></script>
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
          <% do until rs4.EOF %>
    
    let z=60;
    <%for each p in rs4.Fields%>
      
     pdf.text(" <%Response.Write(p.value) %> ", z, 100);

z=z+30;
      <%  next 
      rs4.MoveNext%>
    <%loop %>


 pdf.text("date", 5, 120);
  pdf.text("description", 40, 120);
    
            <% do until rs3.EOF %>
    
    
    <%for each x in rs3.Fields%>
      
     pdf.text("<%Response.Write(x) %> ", x, y);
x=x+35;
      <%  next 
      rs3.MoveNext%>
    
x=5;
y=y+20;
    <%loop %>
    
          // pdf.text("Doliprane 1 comprime   3 fois par jour  ", 50, 130);
          // pdf.text("Paracetamol 2 comprime   1 fois par jour  ", 50, 140);
          // pdf.text("cotacnyl 1/2 comprime   2 fois par jour  ", 50, 150);


          pdf.line(20, 250, 200, 250);

          pdf.text("al wifak office IMM4 , Bureun num 3 alwifak casablanca : 8753256 ", 30, 260);
          pdf.text("Tel: 212 67 78 56 78 / Email: carehospital@gmail.com", 30, 270);
       

      
 
          // pdf.addPage();
          // pdf.text(20, 20, 'The second page');
          pdf.save('consultation.pdf');
          // window.open(pdf)
      }
  </script> 
<style>
.sub{
    background-color: #2596be;
    margin-left:400px;
    margin-bottom:100px;
    font-size: larger;
    border-radius: 20px;
    width: 300px;
}
h1{
  font-size: 30px;
  text-shadow: -1px -1px #f00, 1px 1px #a00, -3px 0 4px #000;
  font-family:"Segoe print", Arial, Helvetica, sans-serif;
  color: #dd0000;
  padding:64px 0 0 0;
  margin:10px auto;
  font-weight:lighter;
  -moz-box-shadow:none;  
  -webkit-box-shadow: none;  
  box-shadow:none;  
  text-align:center;
  display:block;
height:50px;
 width:500;
 
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
  margin:16px;
}

p{
   margin:16px;
  font-size: 20px;
  font-style:italic;
  font-family:times,serif;
  
}
.line {
  margin: 20px  300px ;
  height: 2px;
  background: repeating-linear-gradient(
    to right,
    transparent,
    transparent 10px,
    black 10px,
    black 20px
  );
  /*10px transparent then 10px black -> repeat this!*/
}
/* Style for the form groups */
.form-group {
  display: flex;
  flex-direction: column;
  margin-bottom: 1rem;
}

/* Style for the labels */
label {
  font-weight: bold;
  margin-bottom: 0.5rem;
}

/* Style for the inputs and textareas */
input, textarea {
  padding: 0.5rem;
  font-size: 1rem;
  border-radius: 0.25rem;
  border: 1px solid #ccc;
}

/* Style for the submit button */
button[type="submit"] {
  background-color: #4CAF50;
  color: white;
  padding: 0.5rem 1rem;
  border-radius: 0.25rem;
  border: none;
  cursor: pointer;
}

.thead{
   BORDER:1px solid black;
   border-collapse : collapse;
  background-color:gray;
  width:100%;
}
.tpatient{
  text-align:center;
}

.content2{

padding: 20px;
  background-color:biege;
  margin:10px;
  border: 1px solid black;
}


    </style>
</head>
<body>

<h2> Etablir une fiche de consultation pour le patient : </h2>
    <section class="content">
        <TABLE class="thead">
             
            <thead>
              <tr>
                <th>Id</th>
                <th>Nom</th>
                <th>Prénom</th>
                  <th>Sexe</th>
                <th>Adresse</th>
              
                
                
              </tr>
            </thead>
            <tbody>

<tr>
    <% do until rs.EOF %>
    <tr>
    
    <%for each x in rs.Fields%>
      
      <td class="tpatient"><%Response.Write(x.value)%></td>
     
    <%next
    rs.MoveNext%>
   
      
    </tr>
  <%loop

  %>
  </tr>  


              
            </tbody>
            
            </TABLE>
      </section>

 <div class="line"></div>
<p> La fiche patient est le document qui vous permet de suivre dans le temps la santé de votre patient : il comporte toutes les données personnelles et aussi le contenu des rendez-vous passés, afin de garder la mémoire des évènements, actes médicaux, prescriptions et traitements en cours.

 </p>
      <div class="content2">

      <form method="post" action="ajouterCons.asp">
        <div class="form-group">
        
          <label for="date">Date de Consultation:</label>
          <input type="date" id="date" name="dateCons" required>
        </div>
        <div class="form-group">
          <label for="description">Description:</label>
          <textarea id="description" name="description"></textarea>
        </div>
        <input type="hidden" name="idPatient" class="sub" value="<%=idPatient%>"  required></td>
        <button type="submit">Ajouter </button>
      </form>
     </div>
      


<h1> Récaputulatif de la fiche : </h2>
<% i=0 %><hr>
   

<h3></h3>
<% do until rs2.EOF %>
<%i=i+1 %>
   <div class="rdv">
<h2>RdV <%=i %></h2>
    
    <%for each x in rs2.Fields%>
      
 <p><%Response.Write(x.value)%></p>
     
    <%next
    rs2.MoveNext%>
   
   
  <%loop

  %>


<button  class="sub" onclick="generatePDF()"><i class="fa-solid fa-download"></i>Télécharger la fiche</button>
    </div>
</body>
</html>