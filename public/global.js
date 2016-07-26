window.addEventListener("load", function(){

var dropdown = document.getElementById("conversion");

dropdown.addEventListener("change", function(){
	var value = dropdown.value;
	var weightunits = document.getElementById("weightUnits");
	if(dropdown.value == "pounds" || dropdown.value == "kilos" || dropdown.value == "stone"){
		weightunits.style.display = "inline-block";
	}
	else{
		weightunits.style.display = "none";
	}
});


});