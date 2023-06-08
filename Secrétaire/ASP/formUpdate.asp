<!--#INCLUDE FILE="slidebar.asp"-->
<%
    idPatient =  Request.queryString("idPatient")
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../CSS/addPatient.css">
    <title>Document</title>
</head>
<body>
    <div class="wrapper">
        <div class="title">Update Patient </div>
        <form class="form" method="post" action="updatePatientAttente.asp">
            <div class="inputfield">
                <label>Nom Patient</label>
                <input type="text" class="input" name ="nomPatient">
            </div>  
            <div class="inputfield">
                <label>Prénom Patient</label>
                <input type="text" class="input" name ="prenomPatient">
            </div> 
            <div class="inputfield">
                <label>Sexe</label>
                <div class="custom_select">
                <select name="sexe">
                    <option value="">Select</option>
                    <option value="homme">Homme</option>
                    <option value="femme">Femme</option>
                </select>
                </div>
            </div> 
            <div class="inputfield">
                <label>Lieu Naissance</label>
                <input type="text" class="input" name="LieuNaissance">
            </div> 
            <div class="inputfield">
                <label>étatPatient</label>
                <input type="text" class="input" name="etatPatient">
            </div>
            <input type="hidden" class="input" name="idPatient" value=<%=idPatient%>>
            <div class="inputfield">
            <input type="submit" value="Register" class="btn">
            </div>
        </form>
    </div>	      
</body>
</html>