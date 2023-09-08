function afficherPDF() {
	var form_nom = document.getElementById('nom').value;
	var form_prenom = document.getElementById('prenom').value;
	var form_age = document.getElementById('age').value;
	var form_adrEmail = document.getElementById('email').value;
	var form_montant = document.getElementById('montant').value;
	var form_medecin = document.getElementById('medecin').value;
	var form_unite = document.getElementById('unite').value;
  
	let date = new Date();
	let jour = date.getDate();
	let mois = date.getMonth() + 1; // months are zero-based
	let annee = date.getFullYear();
  
	var container = document.createElement('div');
	container.innerHTML = `
	  <!DOCTYPE html>
	  <html>
	  <head>
		<link rel="stylesheet" type="text/css" href="CSS/facture.css">
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"></script>
		<title>Facture</title>
	  </head>
	  <body>
	  <div class="page-container">
		  <div class="piece">
			<div class="logo">
			  <p>Welcome to Care Hospital</p>
			</div>
			<h1>Facture</h1>
			<div class="elements">
			  <p id="nom">Date Facturation: ${jour} / ${mois} / ${annee}</p>
			  <p>Mr/Mme: <strong>${form_nom} ${form_prenom}</strong></p>
			  <p>Age: <strong>${form_age}</strong></p>
			  <p>Montant Payé: <strong>${form_montant}</strong></p>
			  <p>Mode de paiement: <strong>${form_adrEmail}</strong></p>
			  <p>Médecin: <strong>${form_medecin}</strong></p>
			  <p>Unité: <strong>${form_unite}</strong></p>
			</div>
			<p id="rm">Merci pour votre confiance</p>
			<hr>
			<div class="contact">
			  <p>Care Hospital CASABLANCA: 23456</p>
			  <p>Contactez-nous:</p>
			  <p>N° Téléphone: 212 64522780</p>
			  <p>Adresse Email: carehospital@gmail.com</p>
			</div>
			<div class="generateurBtn">
			<button class="submitb" onclick="generatePDF()">Télécharger PDF</button>
			<a href="facture.html">Générer une autre facture</a>
		  </div>
		  </div>
		 
		</div>
	  </body>
	  </html>
	  <script src="factureJScript.js"></script>
	`;
  
	document.body.innerHTML = container.innerHTML;
  }
  function generatePDF(){
			 //nom du fichier | file name
			  var nom_fichier = prompt("Nom du fichier PDF :");
			  //generer le pdf
			  var element = document.getElementById('nom').value;
			  var element1 = document.querySelector('.page-container');
			  var opt = {
					  margin:  0.5,
					  filename:     `${nom_fichier}.pdf`,
					  image:        { type: 'jpeg', quality: 1 },
					  html2canvas:  { scale: 2 },
					  jsPDF:        { unit: 'in', format: 'letter', orientation: 'portrait' }
				  };
			  if(nom_fichier != null){
				  html2pdf().set(opt).from(element1).save()
			  }else {
				  alert("Veuillez choisir un nom ")
			  }
		  }