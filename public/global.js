window.addEventListener("load", function(){

var dropdown = document.getElementById("conversion");

dropdown.addEventListener("change", function(){
	var value = dropdown.value;
	var ks = document.getElementById("toUnitsks");
	var pk = document.getElementById("toUnitspk");
	var ps = document.getElementById("toUnitsps");
	if(dropdown.value == "pounds"){
		ks.style.display = "inline-block";
		pk.style.display = "none";
		ps.style.display = "none";
	}
	else if(dropdown.value == "stone"){
		pk.style.display = "inline-block";
		ps.style.display = "none";
		ks.style.display = "none";
	}
	else if(dropdown.value == "kilos"){
		ps.style.display = "inline-block";
		pk.style.display = "none";
		ks.style.display = "none";
	}
	else{
		ps.style.display = "none";
		pk.style.display = "none";
		ks.style.display = "none";
	}
});


});