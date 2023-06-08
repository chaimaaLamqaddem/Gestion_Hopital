<%

Set cx = Server.CreateObject("ADODB.Connection")
ON ERROR RESUME NEXT
cx.Open Application("PC")
If(Err.number <> 0) Then
    Response.write "DESC Erreur : " & Err.Description
    Response.end
End If
req = "tous_LesPatients_Par_Unite'"  & 1 & "'"
Set rs = Server.CreateObject("ADODB.RecordSet")
rs.Open req, cx, 3,3
If(Err.number <> 0) Then
    Response.write "DESC Erreur : " & Err.Description
    Response.end
End If
%>


<html>
<head>
    <link rel="stylesheet" href="medStyle2.css">
    <script src="https://kit.fontawesome.com/f2bd761db0.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" crossorigin="anonymous" >



</head>
    <!-- table section starts -->

    <body>
        
   
    
    <section class="main">
      <!-- <p> <b>patients du Jour</b> </p> -->
        <table class="content-table">
            
            <thead>
              <tr>
                <th>Id</th>
                <th>Nom</th>
                <th>Prénom</th>
                <th>Date de naissance</th>
                  <th>Sexe</th>
                <th>Adresse</th>
              
                <th>etat patient</th>
                 <th>Paiement</th>
                 <th >Actions</th>
                
                
              </tr>
            </thead>
            <tbody>

<tr>
    <% do until rs.EOF %>
    <tr>
    
    <%for each x in rs.Fields%>
      
      <td><%Response.Write(x.value)%></td>
     
    <%idp=rs("id_Patient") %>
    <%next
    rs.MoveNext%>
     <td>
                <a  href="ordonnance.asp?idPatient=<%=idp%>" target="home" class="ord" id="ord"> ordonnance</a>
               
                <a href="consultation.asp?idPatient=<%=idp%>" target="home" class="ord" id="cons"> fiche</a>
                 <a href="dossier.asp?idPatient=<%=idp%>" target="home" class="ord" id="dos"> Dossier Médical</a>
                </td>
      
    </tr>
  <%loop
  rs.close
  cx.close
  %>
  </tr>  


              
            </tbody>
          </table>
        <!-- table section ends -->
        
    
        </section>
     </body>
     </html>
     