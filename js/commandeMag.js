function addCommande(){
	if($('#nameShop').val() === "" || $('#nameShop').val() === null){
		$('.error').removeClass("hide");
	}
	else{
		$('.error').addClass("hide");
		for(let i = 0; i < 1000; i++){
			console.log("Magasin " + $('#nameShop').val() + " Commande : " + i);
		}
	}
}

/* TODO
 * Faire la connextion à la bdd
 * Faire la connexion Ajax
 */
