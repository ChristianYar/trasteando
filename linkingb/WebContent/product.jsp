<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Linking Businesses WorldWide</title>
<meta name="keywords" content="vcard, linkingbe" />
<meta name="description" content="vcard" />
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
           <form id="signin" action="j_acegi_security_check.htm" method="post">
              <input type="text" value="username" name="j_username" size="10" id="username" title="username" onfocus="clearText(this)"     onblur="clearText(this)" class="txt_field" />
              <input type="password" value="password" name="j_password" size="10" id="password" title="password" onfocus="clearText(this)"  onblur="clearText(this)" class="txt_field" />        
              <input type="submit" name="login" value=""  class="sub_btn" />        
              <a href=" <%=request.getContextPath()%>/login.htm"></a>
            </form> 
		</div>
    </div> <!-- end of top -->
    
  	<div id="templatemo_header">
    	<div id="site_title"><h1><font color="orange">Linking B</font></h1></div>
        <div id="templatemo_menu" class="ddsmoothmenu">
            <ul>
              	<li><a href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
         		<li><a href="<%=request.getContextPath()%>/about.jsp"> About Us</a></li>
          		<li><a href="<%=request.getContextPath()%>/product.jsp" class="selected">Product</a></li>             	
              	<li><a href="<%=request.getContextPath()%>/contact.jsp">Contact</a></li>
            </ul>
            <br style="clear: left" />
        </div> <!-- end of templatemo_menu -->
    </div> <!-- end of header -->
    
    <div id="templatemo_main">
    		<h2>Portfolio of Web Templates</h2>
            <p><em>Donec nec magna enim. Etiam non tellus vel ante sollicitudin mollis. Aenean vel purus sapien, non egestas diam. Mauris quis est enim, at sodales tortor. Suspendisse nulla mi, eleifend non feugiat sit amet, pulvinar quis mi. Validate <a href="http://validator.w3.org/check?uri=referer" rel="nofollow"><strong>XHTML</strong></a> &amp; <a href="http://jigsaw.w3.org/css-validator/check/referer" rel="nofollow"><strong>CSS</strong></a>.</em></p>   
            
            <div class="cleaner h30"></div>
          	<div id="gallery">
                <div class="gallery_box">
                	<a class="pirobox" href="images/gallery/01_l.jpg" title="Maecenas aliquam condimentum nisi eu ultricies.">
                        <span class="image_frame_300"><span></span>
                            <img src="images/gallery/01_t.jpg" alt="Image 01" />
                        </span>
                    </a>
                    <div class="cleaner"></div>
                </div>
				
                <div class="gallery_box">
                	<a class="pirobox" href="images/gallery/02_l.jpg" title="Nunc vulputate urna non augue volutpat id fermentum risus imperdiet.">
                    	<span class="image_frame_300"><span></span>
	               	  		<img src="images/gallery/02_t.jpg" alt="Image 02" />
						</span>
                    </a>
                </div>
				
         		<div class="gallery_box lbox">
                	<a class="pirobox" href="images/gallery/03_l.jpg" title="Mauris imperdiet ligula id nunc pulvinar tristique.">
                		<span class="image_frame_300"><span></span>
	               	  		<img src="images/gallery/03_t.jpg" alt="Image 03" />
						</span>
                    </a>
                </div>
                
                <div class="gallery_box">
					<a class="pirobox" href="images/gallery/04_l.jpg" title="Fusce nisl nisl, ullamcorper facilisis commodo vitae, placerat quis nunc.">
                    	<span class="image_frame_300"><span></span>
	               	  		<img src="images/gallery/04_t.jpg" alt="Image 04" />
						</span>
                    </a>
                </div>
				
                <div class="gallery_box">
					<a class="pirobox" href="images/gallery/05_l.jpg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit.">
                    	<span class="image_frame_300"><span></span>
	               	  		<img src="images/gallery/05_t.jpg" alt="Image 05" />
						</span>
                    </a>
                </div>
				
                <div class="gallery_box lbox">
                	<a class="pirobox" href="images/gallery/06_l.jpg" title="Pellentesque arcu urna, congue et consequat vitae, vulputate a orci.">
                    	<span class="image_frame_300"><span></span>
	               	  		<img src="images/gallery/06_t.jpg" alt="Image 06" />
						</span>
                    </a>
                </div>
                
            </div>
            <div class="cleaner"></div>
            <div class="pagging">
								<ul>
									<li><a href="http://www.templatemo.com" target="_parent">Previous</a></li>
									<li><a href="http://www.templatemo.com/page/1" target="_parent">1</a></li>
									<li><a href="http://www.templatemo.com/page/2" target="_parent">2</a></li>
									<li><a href="http://www.templatemo.com/page/3" target="_parent">3</a></li>
									<li><a href="http://www.templatemo.com/page/4" target="_parent">4</a></li>
									<li><a href="http://www.templatemo.com/page/5" target="_parent">5</a></li>
									<li><a href="http://www.templatemo.com/page/6" target="_parent">6</a></li>
									<li><a href="http://www.templatemo.com/page/7" target="_parent">Next</a></li>
								</ul>
								<div class="cleaner"></div>
			</div>

        <div class="cleaner"></div>
    </div> <!-- end of main -->
</div> <!-- end of wrapper -->

<div id="templatemo_footer_wrapper">
    <div id="templatemo_footer">
        Copyright © 2013 | 
        Designed by <a href="http://www.google.com" target="_parent">Linking B</a>
        <div class="cleaner"></div>
    </div>
</div> 
  
</body>
</html>