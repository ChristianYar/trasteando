<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Graphite Theme - Contact Page</title>
<meta name="keywords" content="graphite theme, free templates, website templates, CSS, HTML" />
<meta name="description" content="Graphite Theme, Contact page, free CSS template provided by templatemo.com" />
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />

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

<!--////// CHOOSE ONE OF THE 3 PIROBOX STYLES  \\\\\\\-->
<link href="css_pirobox/white/style.css" media="screen" title="shadow" rel="stylesheet" type="text/css" />
<!--<link href="css_pirobox/white/style.css" media="screen" title="white" rel="stylesheet" type="text/css" />
<link href="css_pirobox/black/style.css" media="screen" title="black" rel="stylesheet" type="text/css" />-->
<!--////// END  \\\\\\\-->

<!--////// INCLUDE THE JS AND PIROBOX OPTION IN YOUR HEADER  \\\\\\\-->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/piroBox.1_2.js"></script>
<script type="text/javascript">
$(document).ready(function() {
$().piroBox({
        my_speed: 600, //animation speed
        bg_alpha: 0.5, //background opacity
        radius: 4, //caption rounded corner
        scrollImage : false, // true == image follows the page, false == image remains in the same open position
        pirobox_next : 'piro_next', // Nav buttons -> piro_next == inside piroBox , piro_next_out == outside piroBox
        pirobox_prev : 'piro_prev',// Nav buttons -> piro_prev == inside piroBox , piro_prev_out == outside piroBox
        close_all : '.piro_close',// add class .piro_overlay(with comma)if you want overlay click close piroBox
        slideShow : 'slideshow', // just delete slideshow between '' if you don't want it.
        slideSpeed : 4 //slideshow duration in seconds(3 to 6 Recommended)
});
});
</script>
<!--////// END  \\\\\\\-->
  
</head>
<body id="sub_page">
<div id="templatemo_wrapper">
	<div id="templatemo_top">
    	<div id="templatemo_login">
            <form action="#" method="get">
              <input type="text" value="username" name="q" size="10" id="username" title="username" onfocus="clearText(this)" onblur="clearText(this)" class="txt_field" />
              <input type="password" value="password" name="q" size="10" id="password" title="password" onfocus="clearText(this)" onblur="clearText(this)" class="txt_field" />
              <input type="submit" name="Search" value="" alt="Search" id="searchbutton" title="Search" class="sub_btn"  />
            </form>
		</div>
    </div> <!-- end of top -->
    
  	  	<div id="templatemo_header">
    	<div id="site_title"><h1><font color="orange">Linking B</font></h1></div>
        <div id="templatemo_menu" class="ddsmoothmenu">
            <ul>
              	<li><a href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
         		<li><a href="<%=request.getContextPath()%>/about.jsp"> About Us</a></li>
          		<li><a href="<%=request.getContextPath()%>/product.jsp">Product</a></li>             	
              	<li><a href="<%=request.getContextPath()%>/contact.jsp" class="selected">Contact</a></li>
            </ul>
            <br style="clear: left" />
        </div> <!-- end of templatemo_menu -->
    </div> <!-- end of header -->
    
    <div id="templatemo_main">
    	<h2>Contact Information</h2>
        <div class="col_w630 float_l">
        	
             <div id="contact_form">
        
                <h4>Send us a message...</h4>
                
                <form method="post" name="contact" action="#">
					
					<label for="author">Name:</label> <input type="text" id="author" name="author" class="required input_field" />
					<div class="cleaner h10"></div>
																	
					<label for="email">Email:</label> <input type="text" class="validate-email required input_field" name="email" id="email" />
					<div class="cleaner h10"></div>
															
					<label for="subject">Subject:</label> <input type="text" class="validate-subject required input_field" name="subject" id="subject"/>				               
					<div class="cleaner h10"></div>
											
					<label for="text">Message:</label> <textarea id="text" name="text" rows="0" cols="0" class="required"></textarea>
					<div class="cleaner h10"></div>				
																
					<input type="submit" value="Send" id="submit" name="submit" class="submit_btn float_l" />
					<input type="reset" value="Reset" id="reset" name="reset" class="submit_btn float_r" />
										
				</form>
        
            </div> 
        </div>
        
        <div class="col_w300 float_r">
            <div class="col_fw">	
            	<h4>Mailing Address</h4>
                <h5><strong>Linking B</strong></h5>
                <i><font color="orange">Linking Businesses Worldwide </font></i>
                <br/> <br/>              
				
				<strong>Phone:655 33 44 11</strong> <br/>
                <strong>Email:</strong> <a href="mailto:yarchristian@hotmail.com">info@linkingb.com</a>
            </div>            
            <div class="col_fw_last">
                <h4>Our Location</h4>
                <div id="map"><a class="pirobox" href="images/map_big.jpg" title="Our Location"><img src="images/map_thumb.jpg" alt="Our Location" /></a></div>                
            </div>
        </div>

        <div class="cleaner"></div>
    </div> <!-- end of main -->
</div> <!-- end of wrapper -->

<div id="templatemo_footer_wrapper">
    <div id="templatemo_footer">
        Copyright � 2013 | 
        Designed by <a href="http://www.google.com" target="_parent">Linking B</a>
        <div class="cleaner"></div>
    </div>
</div>  
  
</body>
</html>