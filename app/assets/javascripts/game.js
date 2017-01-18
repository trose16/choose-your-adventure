$(document).ready(function() {

  var event = document.getElementById('cities_from_model');
  event.onchange = function(){
  	var indx = document.choose.cities.selectedIndex;
  	var val = document.choose.cities.options[indx].value;

  	if(indx != 0 ){ // to ignore first choice
  		document.getElementById('result1').innerHTML = val;
  	}else{
  		alert("Please select city");
  	}
  }

})
