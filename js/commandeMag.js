function addCommande(){
	if($('#shopName').val() === "" || $('#shopName').val() === null){
		$('.error').removeClass("hide");
	}
	else{
		$('.error').addClass("hide");
		for(let i = 0; i < 1000; i++){
			console.log("Magasin " + $('#shopName').val() + " Commande : " + i);
		}
	}
}
