$(document).ready(function(){
  
  /*Function for slider*/
  
  slideShow();
  
  /*pretraga*/
  
  $('#searchB').click(function(e){
	  $(".items").hide();
	  var sadrzaj = document.getElementById("search").value;
	  var rezultat = "<table border='1' class='podesi'><tr><td>Ime artikla</td><td>Tip artikla</td><td>Cena</td>";
	  e.preventDefault();
	  $("#prikaz").html("");
	  $.get('podaci.xml', function(trazi){
		  $(trazi).find('artikal').each(function(){
			 var $artikal = $(this);
             if($artikal.find("ime").text().toLowerCase().indexOf(sadrzaj.toLowerCase())!=-1) 
			 {
				var ime = $artikal.find("ime").text();
				var tip = $artikal.find("tip").text();
				var cena = $artikal.find("cena").text();
				
				rezultat += "<tr><td>"+ ime +"</td><td>"+ tip +"</td><td>"+ cena +"</td></tr>";
			 }			 
		  });
		  rezultat += "</table>";
		  $("#prikaz").html(rezultat);
	  });
  });
  
});


function slideShow() {
  var current = $('#pic .show');
  var next = current.next().length ? current.next() : current.parent().children(':first');
  
  current.hide().removeClass('show');
  next.show().addClass('show');
  
  setTimeout(slideShow, 3000);
}

