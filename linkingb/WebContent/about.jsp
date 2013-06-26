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
         		<li><a href="<%=request.getContextPath()%>/about.jsp" class="selected"> About Us</a></li>
          		<li><a href="<%=request.getContextPath()%>/product.jsp">Product</a></li>             	
              	<li><a href="<%=request.getContextPath()%>/contact.jsp">Contact</a></li>
            </ul>
            <br style="clear: left" />
        </div> <!-- end of templatemo_menu -->
    </div> <!-- end of header -->
    
    <div id="templatemo_main">
    	
        <div id="templatemo_content">			
             <div class="col_fw_last">                 
				
              <div class="col_w300 float_r">
                	<h2>Member 1</h2>
                    <blockquote>
                    <p>Praesent tincidunt pharetra tellus, eget faucibus nulla dignissim varius. Nullam molestie mollis ullamcorper. Integer mauris tortor, viverra et vestibulum ac, aliquet vestibulum tortor. Sed rutrum porta elit. Aliquam erat volutpat.</p>
                    <cite><a href="#">Steve</a> - <span>Web Designer</span></cite>
                    </blockquote>
                    <div class="cleaner h30"></div>                    
                </div>
                
                <div class="col_w300 float_r">
                	<h2>Member 2</h2>
                    <blockquote>
                    <p>Praesent tincidunt pharetra tellus, eget faucibus nulla dignissim varius. Nullam molestie mollis ullamcorper. Integer mauris tortor, viverra et vestibulum ac, aliquet vestibulum tortor. Sed rutrum porta elit. Aliquam erat volutpat.</p>
                    <cite><a href="#">Steve</a> - <span>Web Designer</span></cite>
                    </blockquote>
                    <div class="cleaner h30"></div>                    
                </div>
                
                <div class="col_w300 float_r">
                	<h2>Member 3</h2>
                    <blockquote>
                    <p>Praesent tincidunt pharetra tellus, eget faucibus nulla dignissim varius. Nullam molestie mollis ullamcorper. Integer mauris tortor, viverra et vestibulum ac, aliquet vestibulum tortor. Sed rutrum porta elit. Aliquam erat volutpat.</p>
                    <cite><a href="#">Steve</a> - <span>Web Designer</span></cite>
                    </blockquote>
                    <div class="cleaner h30"></div>                    
                </div>
                
                <div class="col_w300 float_r">
                	<h2>Member 4</h2>
                    <blockquote>
                    <p>Praesent tincidunt pharetra tellus, eget faucibus nulla dignissim varius. Nullam molestie mollis ullamcorper. Integer mauris tortor, viverra et vestibulum ac, aliquet vestibulum tortor. Sed rutrum porta elit. Aliquam erat volutpat.</p>
                    <cite><a href="#">Steve</a> - <span>Web Designer</span></cite>
                    </blockquote>
                    <div class="cleaner h30"></div>         
                </div>
                
                <div class="cleaner"></div>
			</div>	
        </div> <!-- end of content -->
        
        <div id="templatemo_sidebar">
          <div class="cleaner h40"></div>
          
          <!-- Opcional facebook
          
          <div id="fb-root"></div>
              <script>(function(d, s, id) {
               var js, fjs = d.getElementsByTagName(s)[0];
               if (d.getElementById(id)) return;
               js = d.createElement(s); js.id = id;
               js.src = "//connect.facebook.net/es_LA/all.js#xfbml=1";
               fjs.parentNode.insertBefore(js, fjs);
              }(document, 'script', 'facebook-jssdk'));</script>
              
              <div class="fb-like-box" data-href="https://www.facebook.com/pages/Linkingb/526309704094987?fref=ts" data-width="292"
               data-height="300" data-show-faces="true"
                data-stream="true" data-show-border="true" 
                data-header="true"></div>
          
          <!-- Opcional twitter -->
          <!-- 
          <h4>twitter</h4>            
          <a class="twitter-timeline"
           href="https://twitter.com/search?q=codigos+bidi+codigos+qr" 
           data-widget-id="331410591526830082">Tweets about "codigos bidi codigos qr"</a>
          <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';
          if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";
          fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");
          </script>
           -->
          </br>
            <h4>Why these team?</h4>
            <div class="sidebar_box">
               A complementary team, covering every discipline among engineering, marketing, finance and strategy.
            </div>
            

        <div class="cleaner"></div>
    </div> <!-- end of main -->
</div> <!-- end of wrapper -->
 

 <div id="templatemo_footer">
        Copyright © 2013 | 
        Designed by <a href="http://www.linkingb.com" target="_parent">Linking B</a>
        <div class="cleaner"></div>
    </div>
    
    </div>


</body>
</html>