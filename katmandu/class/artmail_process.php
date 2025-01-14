<html>
<!-- #BeginTemplate "/Templates/cat_textonly.dwt" --> 
<head>
<!-- #BeginEditable "doctitle" --> 
<title>Princeton University Cataloging Documentation</title>
<!-- #EndEditable --> 
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type=text/css>
<!-- 
	
body, table, tr, th td {font-family: Verdana, Arial, Helvetica, sans-serif}
.header {font-family: Verdana, Arial, Helvetica, sans-serif;}
.myfont {font-family: Verdana, Arial, Helvetica, sans-serif;}
.bold {font-weight:700}
.italic {font-style:italic}
.red {font-weight: 700; color:red}
.larger {font-size:larger}
.smaller {font-size:smaller}
.bolditalic	{font-style:italic; font-weight:600}
.center	{text-align:center}
.header {text-align:center; font-weight:700}
.copyright {text-align:left; font-size:x-small; font-family: Verdana, Arial, Helvetica, sans-serif;}


-->
</style>
<!-- #BeginEditable "metaTags" --> 
<meta name="keywords" content="">
<meta name="description" content="">
<!-- #EndEditable --> 
<script language="JavaScript">
<!--
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
// -->

function P7_ReDoIt() { //v1.21 by PVII
 if(document.layers) {MM_reloadPage(false);}
}
//-->
</script>
<body background="../../images/slice.gif" onLoad="P7_ReDoIt()" >
<!-- #BeginLibraryItem "/Library/cataloghead.lbi" --> 
<table width="100%" border="0">
  <tr> 
    <td width="6%" class="header"><a href="mailto:joyceb@princeton.edu"><img src="../../images/Mail.gif" width="40" height="40" valign="top" alt="email link" border="0"></a><br>
      <font size="2"><a href="mailto:joyceb@princeton.edu">Contact</a></font></td>
    <td width="87%"  align="center" class="header" > <img src="../../images/doc_banner.gif" usemap="#Map" border="0" width="530" height="25"> 
      <map name="Map"> 
        <area shape="rect" coords="16,5,65,23" href="../catman.html">
        <area shape="rect" coords="67,5,109,22" href="../cathome.html">
        <area shape="rect" coords="118,4,158,21" href="../../circ/circ.html">
        <area shape="rect" coords="166,5,219,24" href="http://www.princeton.edu">
        <area shape="rect" coords="227,5,283,21" href="http://libweb.princeton.edu">
        <area shape="rect" coords="291,6,328,20" href="http://catalog.princeton.edu">
        <area shape="rect" coords="334,4,383,28" href="../../tech/hptsd.html">
        <area shape="rect" coords="387,5,436,20" href="../../order/ordhome.html">
        <area shape="rect" coords="446,5,503,23" href="../../order/ordoc.html">
      </map>
      <br><br>
      <font size="3"><span class="bold">Princeton University Cataloging 
      Documentation</span></font> 
<hr>
    </td>
    <td width="7%" class="header"> 
      <div align="right"> <a href="http://infoshare1.princeton.edu/katmandu/genindex.html"><img src="../../images/index2.gif" width="31" height="24" alt="index link" border="0" ><br>
       <font size="2">Index</font></a></div>
    </td>
  </tr>
</table>
<!-- #EndLibraryItem --> 
<table width="100%" border="0" cellspacing="4" cellpadding="2">
  <tr> 
    <td valign="top" class="myfont" colspan=2><font size="2"><!-- #BeginEditable "body" --> 
	<?
	include_once "db_fns.php";
	$form = in_field_clean($_POST["Form"]);
	$diacritics = in_field_clean($_POST["Diacritics"]);
	$artistheading = in_field_clean($_POST["ArtistHeading"]);
	$heading = in_field_clean($_POST["Heading"]);
	$aarc_heading = in_field_clean($_POST["AACR2_heading"]);
	$comments = in_field_clean($_POST["comments"]);
	$rec_email = "gibney@princeton.edu";
	
	$omsg  = "Artist Heading: $artistheading\n";
	$omsg .= "Form: $form\n";
	$omsg .= "Diacritics: $diacritics\n";
	$omsg .= "Heading: $heading\n";
	$omsg .= "AARC2 Heading: $aarc_heading\n";
	$omsg .= "Comments: $comments";
	
	$subject = "Princeton Artist File Email";
	
	mail($rec_email,$subject,$omsg);
	
	?>
      <p>Form submitted, thank you!</p>
      <!-- #EndEditable --></font></td>
  </tr>
  <tr> 
    <td colspan="2" class="copyright"> 
      <div align="left"><br>
        &copy;2002 Princeton University<br>
        Last Modified <!-- #BeginEditable "lastmod" --> 
        <!-- #BeginDate format:Am3 -->09/11/2007<!-- #EndDate -->
        <!-- #EndEditable --></div>
    </td>
  </tr>
</table>
</body>
<!-- #EndTemplate -->
</html>
