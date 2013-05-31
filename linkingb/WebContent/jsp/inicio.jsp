<%@include file="include.jsp"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Linking Businesses WorldWide</title>
<meta name="keywords" content="vcard, linkingbe" />
<meta name="description" content="vcard" />
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="js/swfobject.js"></script>
<script type="text/javascript">
	var flashvars = {};
	flashvars.xml_file = "photo_list.xml";
	var params = {};
	params.wmode = "transparent";
	var attributes = {};
	attributes.id = "slider";
	swfobject.embedSWF("flash_slider.swf", "flash_grid_slider", "480", "360", "9.0.0", false, flashvars, params, attributes);
</script>

<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>

<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js">

/***********************************************
* Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/

</script>

<script type="text/javascript">

ddsmoothmenu.init({
	mainmenuid: "templatemo_menu", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

</script>
  
</head>
<body id="home">
<div id="templatemo_wrapper">
	<div id="templatemo_top">
    	<div id="templatemo_login">
        </div>
    </div> <!-- end of top -->
    
  	<div id="templatemo_header">
    	<div id="site_title"><h1><font color="orange">Linking B</font></h1></div>
        <div id="templatemo_menu" class="ddsmoothmenu">
            <ul>
              	<li><a href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
         		<li><a href="<%=request.getContextPath()%>/about.jsp" class="selected"> About Us</a></li>
          		<li><a href="<%=request.getContextPath()%>/product.jsp">Product</a></li>             	
              	<li><a href="<%=request.getContextPath()%>/contact.jsp">Contact</a></li>
            </ul>
            <br style="clear: left" />
        </div> <!-- end of templatemo_menu -->
    </div> <!-- end of header -->
    
   
<div id="templatemo_footer_wrapper">
    <div id="templatemo_footer">
        Copyright © 2013 | 
        Designed by LinkingB all rights reserved <a href="http://www.google.com" target="_parent">Linking B</a>
        <div class="cleaner"></div>
    </div>
</div> 
  
</body>
</html>

