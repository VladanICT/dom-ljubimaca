$(document).ready(function(){
  
  /*Function for slider*/
  
  slideShow();
  
  
  /*Dropdown list*/
  
  $('#dmeni li ul').css({
    display: "none",
    left: "auto"
  });
  $('#dmeni li').hover(function() {
    $(this)
      .find('ul')
      .stop(true, true)
      .slideDown('fast');
  }, function() {
    $(this)
      .find('ul')
      .stop(true,true)
      .fadeOut('fast');
  });
  
  /*Dropdown menu*/
  

  var bool=false;
  $("#meni li").hover(function(){
	  if(!bool)
	  {
		  bool=true;
		  $(this)
		  .find("ul")
		  .show()
	  }
	  else
	  {
		  bool=false;
		  $(this)
		  .find("ul")
		  .hide()
	  }
    
  });
  
});

function slideShow() {
  var current = $('#slika .show');
  var next = current.next().length ? current.next() : current.parent().children(':first');
  
  current.hide().removeClass('show');
  next.show().addClass('show');
  
  setTimeout(slideShow, 3000);
}
