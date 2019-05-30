function potvrda() {
	var ime = document.getElementById('ime').value;
	var email = document.getElementById('email').value;
	var greske= new Array();
	var sadrzaj=new Array();
		var greskeID = new Array();
	var reime= /^[A-Z]{1}[a-z]{2,14}$/;
	var reemail= /^(\w+[\-\.])*\w+@(\w+\.)+[A-Za-z]+$/; 
	
	
	if(reime.test(ime))
	{
		sadrzaj.push(ime)
		document.getElementById('nema').innerHTML="";
		
		
	}
	else
	
	{
		
		document.getElementById('nema').innerHTML="Ime nije u dobrom formatu";
		
	}
	if(reemail.test(email))
	{
		sadrzaj.push(email);
		document.getElementById('nema1').innerHTML="";
	}
	else
	{
		document.getElementById('nema1').innerHTML="Email nije u dobrom formatu!"
		
	}
	

	
if(sadrzaj.length == 2)
	{
		alert("Poslato")
	
}
}