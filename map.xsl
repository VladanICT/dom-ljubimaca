<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                                 xmlns:jn="http://www.sitemaps.org/schemas/sitemap/0.9">

  <xsl:template match="/">
		<html>
		<head>
			<title>Site Map | Dom ljubimaca</title>
			<link rel="stylesheet" type="text/css" href="stil.css"/>
			<link rel="icon" type="image/png" href="slike/icon.png"/>
			
			<script type="text/javascript" src="js/jquery.js"></script>
			<script type="text/javascript" src="js/script.js"></script>
			<script type="text/javascript" src="js/script2.js"></script>
			<script type="text/javascript" src="js/validacija.js"></script>
			
		</head>
		<body>
		   <div id = "md">	
						<ul id="meni">
						  <li class="wi"><a href="index.html">Početna</a></li>
						  <li class="br wi">
							 <a href="artikli.html">Artikli</a>
							  <ul id="small">
								<li><a href="Apsi.html">Za pse</a></li>
								<li><a href="Amacke.html">Za mačke</a></li>
								<li  class="bor"><a href="Aptice.html">Za ptice</a></li>
							  </ul>
						  </li>
						  <li class="br wi"><a href="galerija.html">Galerija</a></li>
						  <li class="br wi"><a href="kontakt.html">Kontakt</a></li>
						</ul>
		   </div>
		  
		  <div id="page">
			
			<div id="header">
				<a href="index.html"><img src="slike/dogs.png"/></a>
				  
			</div>
			
			<div id="middle">
			  <div id="pic">
				<img alt="" class="show" src = "slike/slider2/slika1.jpg"/>
				<img alt="" src = "slike/slider2/slika2.jpg"/>
				<img alt="" src = "slike/slider2/slika3.jpg"/>
				
			  </div>	  
			</div>
			
			<div id="submenu">
				   <ul id="dmeni">
					<li>
					  <a href="Apsi.html">Psi</a>
					  <ul>
						<li><a href="psiH.html">Hrana</a></li>
						<li><a href="psiD.html">Dodaci</a></li>
					  </ul>
					</li>
					<li>
					  <a href="Amacke.html">Mačke</a>
					  <ul>
						<li><a href="mackeH.html">Hrana</a></li>
						<li><a href="mackeD.html">Dodaci</a></li>
					  </ul>
					</li>
					<li>
					  <a href="Aptice.html">Ptice</a>
					</li>		   
				   </ul>
				
				</div>
			
			<div id="contentAu">
			   
			   
				
				<div id="right">
				  <div id="cap">
					<img alt="Logo sapa" src="slike/s1.png"/>
					<h2>Site Map</h2>
				  </div>
				  
				  <table border="1" id="xmlt">
					  <tr> 
					   <th>URL</th>
					   <th>Update on</th>
					   <th>Update rate</th>
					   <th>Prioritet</th>
					  </tr>
					  <xsl:for-each select="urlset/url">
						<tr>
						  <td><xsl:value-of select="loc"/></td>
						  <td><xsl:value-of select="lastmod"/></td>
						  <td><xsl:value-of select="changefreq"/></td>
						  <td><xsl:value-of select="priority"/></td>
						</tr>
					  </xsl:for-each>
		          </table>
				  
				  
				</div>
			
			</div>
			  
			
			
		  </div>
		  
		  <div id="footer">
			<ul id="fmenu">
						  <li><a href="index.html">Početna</a></li>
						  <li class="br"><a href="galerija.html">Galerija</a></li>
						  <li class="br"><a href="kontakt.html">Kontakt</a></li>
						  <li class="br sel"><a href="autor.html">Autor</a></li>
			</ul>
		  
		  </div>
		
		
		</body>

     </html>
  </xsl:template>
</xsl:stylesheet>