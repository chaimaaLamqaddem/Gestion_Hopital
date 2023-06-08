function afficherPDF(){
	var form_nom=document.getElementById('nom').value;
	var form_prenom=document.getElementById('prenom').value;
	var form_age=document.getElementById('dateN').value;
	var form_adrEmail=document.getElementById('email').value;
	var form_montant=document.getElementById('montant').value;
	var form_modeP=document.getElementById('modeP').value;
	var form_medecin=document.getElementById('medecin').value;
	var form_unite=document.getElementById('unite').value;


	  let date = new Date();
let jour = date.getDate();
let mois = date.getMonth() + 1; // months are zero-based
let annee = date.getFullYear();

	var body=document.querySelector('body');
	body.innerHTML=`

	<div class="piece">
		<div class="logo">
			
			<p>Welcom to Care Hospital</p>
			
		</div>
		<h1>Facture</h1>
		<div class="elements">
			<p id="nom">Date Facturation:${jour} / ${mois} / ${annee}</p>
			<p>Mr/Mme: <strong>${form_nom} ${form_prenom}</strong></p>
			<p>Age: <strong>${form_age}</strong></p>
			<p>Adresse Email:<strong>${form_adrEmail}</strong></p>
			<p>Medecin: <strong>${form_medecin}</strong></p>
			<p>Unite: <strong>${form_unite}</strong></p>
			<p>MontantPaye: <strong>${form_montant}</strong></p>
			<p>Mode de paiement:<strong>${form_modeP}</strong></p>
			
			
		</div>
		<p id="rm">Merci pour votre confiance</p>
		<hr>
		<div class="contact">
			<p>CareHospital CASABLANCA :23456</p>
			<p>Contactez-nous: </p>
			<p>N Telephone:212 64522780</p>
			<p>Adresse Email:carehospital@gmail.com</p>
		</div>
	</div>
	<div class="generateurBtn">
		<button class="submitb" onclick="generatePDF()">Telecharher pdf</button>
		<a href="facture.html"> generer une autre facture</a>
		
	</div>
	
<script src="factureJavaScript.js"></script>
	`


	
	


}

function generatePDF(){
           //nom du fichier | file name
            var nom_fichier = prompt("Nom du fichier PDF :");
            //generer le pdf
            var element = document.getElementById('nom').value;
            var element1 = document.querySelector('.piece');
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