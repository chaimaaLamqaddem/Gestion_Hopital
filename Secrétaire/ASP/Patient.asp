<!--#INCLUDE FILE="slidebar.asp"-->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Css/patient.css">
    <script src="https://kit.fontawesome.com/f2bd761db0.js" crossorigin="anonymous"></script>
    <title>Document</title>
    <style>

</head>
<body>
   
<div class="container">
    <form>
      <div class="row">
        <h4>Ajouter Patient</h4>
        <div class="input-group input-group-icon">
          <input type="text" placeholder="Nom"class="input" name ="nomPatient" />
          <div class="input-icon"><i class="fa fa-user"></i></div>
        </div>
        <div class="input-group input-group-icon">
          <input type="email" placeholder="Prénom" class="input" name ="prenomPatient"/>
          <div class="input-icon"><i class="fa fa-envelope"></i></div>
        </div>
      
      </div>
      <div class="row">
        <div class="col-half">
          <h4>Date de naissance</h4>
          <div class="input-group">
            <div class="col-third">
              <input type="text" placeholder="DD" class="input" name ="dateNaissance"/>
            </div>
            <div class="col-third">
              <input type="text" placeholder="MM" class="input" name ="dateNaissance"/>
            </div>
            <div class="col-third">
              <input type="text" placeholder="YYYY" class="input" name ="dateNaissance"/>
            </div>
          </div>
        </div>
        <div class="col-half">
          <h4>Sexe</h4>
          <div class="input-group">
            <input id="gender-male" type="radio" name="sexe" value="male"/>
            <label for="gender-male">Home</label>
            <input id="gender-female" type="radio" name="sexe" value="female"/>
            <label for="gender-female">Femme</label>
          </div>
        </div>
    </div>
        <div class="input-group input-group-icon">
            <input type="text" placeholder="Adresse patient" name="adresse"/>
            <div class="input-icon"><i class="fa-solid fa-location-dot"></i></div>
          </div>
          <div class="input-group input-group-icon">
            <input type="text" placeholder="Lien de naissance"  class="input" name="LieuNaissance"/>
            <div class="input-icon"><i class="fa-solid fa-address-book"></i></div>
          </div>
          <input type="submit" value="Register" class="btn">
      </div>

 
    
    </form>
  </div>      
</body>
</html>