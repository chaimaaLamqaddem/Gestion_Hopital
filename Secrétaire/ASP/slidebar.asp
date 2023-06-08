<%
 idUnite= Request.queryString("idUnite")
 Session("idUnite")=idUnite
 
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../CSS/slidebar.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    <title>Doctor</title>
</head>
<body>
    <header class="header">
        <div class="row">
            <div class="col-md-7 border">
                <div class="logo border">
                    <a href="../../SiteHopital/index.html" target="_blank">
                    <img src="../images/logo.png" alt="logo" id="bg" width="180" height="70"> 
                  
                </a>
            </div> 
            <div class="menu">

                <ul>
                 <li> <i class="fa-solid fa-user-nurse"></i> Secrétaire</li>
                  <li><a href="index.html"><i class="fa-solid fa-right-from-bracket"></i>Log out</a></li>
                    
                </ul>
            </div>
        </div>
    </header>
   <input type="checkbox" id="check">
   <label for="check"><i class="fas fa-bars" id="btn"></i></label>
   <div class="sidebar">
        <ul>
            <li>  
                <label for="check">
                <i class="fas fa-times" id="cancel"></i>
                </label>
            </li>
            <li>
                <a href="patients.asp?idUnite=<%=Session("idUnite")%>"> 
                <i class="fa-solid fa-hospital-user" height="100" width="100"></i>
                Patients 
                </a>
            </li>
            <li>
                <a href="medecin.asp?idUnite=<%=Session("idUnite")%>"> 
                <i class="fa-solid fa-user-doctor" height="100" width="100"></i> 
                Médecins
                </a>
            </li>
            <li>
                <a href="chambre.asp?idUnite=<%=Session("idUnite")%>"> 
                <i class="fa-solid fa-bed" height="100" width="100"></i>
                Chambres</a>
            </li>
            <li>
                <a href="addPatient.asp?idUnite=<%=Session("idUnite")%>"> 
                <i class="fa-solid fa-user-plus" height="100" width="100"></i>
                Ajouter Patient</a>   
            </li> 
            <li>
                <a href="salleAttente.asp?idUnite=<%=Session("idUnite")%>"> 
                <i class="fa-solid fa-house-medical"height="100" width="100"></i>
                Salle d'attente</a> 
             </li> 
        </ul>
   </div>       
</body>
</html>