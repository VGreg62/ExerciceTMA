$(document).ready(addOption);

function addOption(){
	var result = new Array("Naruto", "Luffy", "Son Goku", "Saitama");
	for(var i = 0; i < result.length; i++){
		console.log(result[i]);
		$("#listShop").append($('<option>', {
			value: result[i],
			text: result[i]
		}));
	}
}

function addCommande(){
	if($('#listShop').val() === "" || $('#listShop').val() === null){
		$('.error').removeClass("hide");
	}
	else{
		$('.error').addClass("hide");
		for(let i = 0; i < 1000; i++){
			console.log("Magasin " + $('#listShop').val() + " Commande : " + i);
			/*Requete Ajax insert commande*/
		}
	}
}