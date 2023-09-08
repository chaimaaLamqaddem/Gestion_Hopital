<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="facture.css">
		<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="facture.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"></script>
	
	
	<title>Facture</title>

</head>
<body>
	
	<div class="c">
		
		<img src="imm2.png" width="240" height="200">

		
	<table >
		
		<form action="addFacture.asp" name="facture" id="facture">
		<h2>Facture</h2>
		<tr>
			
			<td><label>Nom</label></td>
			<td><input class="inp"  id="nom" type="text" name="nom" placeholder="nom"></td>
		</tr>
		<tr>
			<td><label>Prenom</label></td>
			<td><input class="inp" id="prenom" type="text" name="prenom" placeholder="prenom"></td>
		</tr>
		<tr>
			<td><label>Date de naissance</label></td>
			<td><input class="inp" id="dateN" type="date" name="dateN" placeholder="date de naissance"></td>
		</tr>
	
		<tr>
			<td><label>Adresse email</label></td>
			<td><input class="inp" id="email" type="email" name="email" placeholder="adresse email"></td>
		</tr>
		<tr>
			<td><label>Medecin</label></td>
			<td>
				<select class="inp" id="medecin" >
					<option>Dr.BOUANANA Meriam</option>
					<option>Dr.CHAANOUNE Noura</option>
					<option>Dr.LMEQADDEM Chaimae</option>
				</select>
			</td>
		</tr>
			<tr>
			<td><label>Unite</label></td>
			<td>
				<select class="inp" id="unite" >
					<option >Pédiatrie</option>
					<option >Médécine Génerale</option>
					<option >Maternité</option>
					<option >Réanimation</option>
					<option >Cardiologie</option>
					<option >Chirurgie Générale</option>
					
				</select>
			</td>
		</tr>

		<tr>
			<td><label>Montant paye</label></td>
			<td><input class="inp" id="montant" type="text" name="montant" placeholder="montant paye"></td>
		</tr>

		<tr>
			<td><label>Mode Paiement</label></td>
			<td><input class="inp" id="modeP" type="text" name="montant" placeholder="mode de paiment"></td>
		</tr>
	
	
		<tr>
		<td colspan="2" align="center">
			
			<button class="btn" onclick="afficherPDF()">afficher le PDF</button>
		</td>
			</tr>
		</form>
		
		
	</table>
	
	 <ul>
                 <li><a href="/HOSPITALPROJECT" target="_parent" ><i class="fa-solid fa-right-from-bracket"></i>Log out</a></li>
                
            </ul>
	
</div>

<script src="factureJavaScript.js">
		
	</script>
</body>
</html>