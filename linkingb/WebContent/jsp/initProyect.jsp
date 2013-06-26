<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
   <%@page import="proyecto.hibernate.beans.Users"%>


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
function clearText(field){
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
          
           <form id="signout" action="j_acegi_security_check.htm" method="post">            
              <!--    <a href=" <%=request.getContextPath()%>/index.jsp"></a>-->
              
                <input type="submit" name="logout" value="logout"   />
                  </form> 
          </div>
               
    </div> <!-- end of top -->
    
  	<div id="templatemo_header">
    	<div id="site_title"><h1><font color="orange">Linking B</font></h1></div>
        <div id="templatemo_menu" class="ddsmoothmenu">
            <ul>
              	<li><a href="<%=request.getContextPath()%>/contacts.htm" >Contacts</a></li>
              	
         		<li><a href="<%=request.getContextPath()%>/detalles.htm"> Profile</a></li>
          		<li><a href="<%=request.getContextPath()%>/edit.htm">Edit</a></li>        	
            </ul>
            <br style="clear: left" />
        </div> <!-- end of templatemo_menu -->
    </div> <!-- end of header -->
    
   <h3>Init Proyect Pintar Datos</h3>
  
  <h3><% Users us=(Users)request.getSession().getAttribute("login");%> </h3>
 
<hr></hr><br></br>
                   
<hr></hr><br></br>
  
    <div id="templatemo_main">
        <div class="col_fw_last">
        	<div class="col_allw300">
            	 <div class="news_box">
                    <a href="#">User</a>
                    <p>Nombre:<%=us.getUsername() %></p><br />
                    <p>Pass:<%=us.getPassword() %></p> <br />
                      Company :Trustparency state practice</p>
                      </div>              
     <br /> <br />
              <div class="news_box">      <a href="#"></a>
              </div>
                 <div class="news_box">
                    <a href="#"></a>
                    <p> <p>Nombre:Segundo Usuario<br />
                      Role :User<br/>
                      Company :Apple </p>
                  </p>
                </div>
                <div class="cleaner h20"></div>    
                        
            </div>           
            
        </div>
        <div class="cleaner"></div>
        
    </div> <!-- end of main -->
    <br/><br/><br/><br/><br/>
</div> <!-- end of wrapper -->

<br/><br/><br/><br/><br/>

  <div class="cleaner"></div>
<div id="templatemo_footer_wrapper">
    <div id="templatemo_footer">
        Copyright © 2013 | 
        Designed by <a href="http://www.google.com" target="_parent">Linking B</a>
        <div class="cleaner"></div>
    </div>
</div> 
  
</body>
</html>



