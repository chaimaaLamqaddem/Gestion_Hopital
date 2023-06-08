<!--#INCLUDE FILE="slidebar.asp"-->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../CSS/addPatient.css">
    <title>AjouterPatient</title>
    <script type="text/javascript" src="../JS/test.js"></script>
    <script>
    function validerData()
    {
        let erreur;
        let nomPatient = AllTrim(document.getElementById("nomPatient").value);
        let prenomPatient =AllTrim(document.getElementById("prenomPatient").value);
        let dateNaissance =AllTrim(document.getElementById("dateNaissance").value);
        let sexePatient =AllTrim(document.getElementById("sexe").value);
        let adressePatient =AllTrim(document.getElementById("adresse").value);
        let lieuNaissance =AllTrim(document.getElementById("lieuNaissance").value);
        if (!IsDate(dateNaissance)) 
        {
            ChangeBackColor(document.getElementById("dateNaissance"),"#DC0000");
            erreur="saisie non valide,Veuilliez saisir la date dans sa format convenable";
            document.getElementById("dateNaissance").focus(); 
        }
        if(nomPatient==="" || prenomPatient==="" || dateNaissance==="" || sexePatient==="" || adressePatient==="" || lieuNaissance==="")
        {
            erreur="Veuillez saisir tous les champs";
        }

        if(erreur)
        {
            document.getElementById("error").innerHTML = erreur;
        }
        else
        {
            document.getElementById("Form").submit(); 
        }   
    }
    </script>   
</head>
<body>
    <div class="wrapper">
        <div class="title">Ajouter Patient </div>
        <form class="form" method="post" action="testAdd.asp" id="Form">
            <div class="inputfield">
                <label>Nom Patient</label>
                <input type="text" class="input" name ="nomPatient" id="nomPatient">
            </div>  
            <div class="inputfield">
                <label>Prénom Patient</label>
                <input type="text" class="input" name ="prenomPatient" id="prenomPatient">
            </div>
            <div class="inputfield">
                <label>Date Naissance </label>
                <input type="text" class="input" name ="dateNaissance" id="dateNaissance"  placeholder="dd/MM/YYYY">
            </div>  
            <div class="inputfield">
                <label>Sexe</label>
                <div class="custom_select">
                <select name="sexe"  id="sexe">
                    <option value="">Select</option>
                    <option value="homme">Homme</option>
                    <option value="femme">Femme</option>
                </select>
                </div>
            </div> 
            <div class="inputfield">
                <label>Adresse Patient</label>
                <textarea class="textarea" name="adresse" id="adresse"></textarea>
            </div> 
            <div class="inputfield">
                <label>Lieu Naissance</label>
                <input type="text" class="input" name="LieuNaissance" id="lieuNaissance">
            </div> 
            <div class="inputfield">
            <input type="button" value="valider" class="btn" onclick="validerData()">
            </div>
        </form>
        <p style="color:red;" id="error"></p>
    </div>       
</body>
</html>