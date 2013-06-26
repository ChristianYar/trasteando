<%@include file="/jsp/include.jsp"%>
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
	swfobject.embedSWF("flash_slider.swf", "flash_grid_slider", "480", "360",
			"9.0.0", false, flashvars, params, attributes);
</script>

<script language="javascript" type="text/javascript">
	function clearText(field) {
		if (field.defaultValue == field.value)
			field.value = '';
		else if (field.value == '')
			field.value = field.defaultValue;
	}
</script>

<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js">
	
</script>

<script type="text/javascript">
	ddsmoothmenu.init({
		mainmenuid : "templatemo_menu", //menu DIV id
		orientation : 'h', //Horizontal or vertical menu: Set to "h" or "v"
		classname : 'ddsmoothmenu', //class added to menu's outer DIV
		//customtheme: ["#1c5a80", "#18374a"],
		contentsource : "markup" //"markup" or ["container_id", "path_to_menu_file"]
	});
</script>

</head>
<body id="home">

	<div id="templatemo_wrapper">
		<div id="templatemo_top">
			<div id="templatemo_login">

				<form id="signin" action="j_acegi_security_check.htm" method="post">
					<input type="text" value="username" name="j_username" size="10"
						id="username" title="username" onfocus="clearText(this)"
						onblur="clearText(this)" class="txt_field" /> <input
						type="password" value="password" name="j_password" size="10"
						id="password" title="password" onfocus="clearText(this)"
						onblur="clearText(this)" class="txt_field" /> <input
						type="submit" name="login" value="" class="sub_btn" /> <a
						href=" <%=request.getContextPath()%>/login.htm"></a>
				</form>
				
			</div>
		</div>
		<!-- end of top -->

		<div id="templatemo_header">
			<div id="site_title">
				<h1>
					<font color="orange">Linking B</font>
				</h1>
			</div>
			<div id="templatemo_menu" class="ddsmoothmenu">
				<ul>
					<li><a href="<%=request.getContextPath()%>/index.jsp"
						class="selected">Home</a></li>
					<li><a href="<%=request.getContextPath()%>/about.jsp">
							About Us</a></li>
					<li><a href="<%=request.getContextPath()%>/product.jsp">Product</a></li>
					<li><a href="<%=request.getContextPath()%>/contact.jsp">Contact</a></li>
				</ul>
				<br style="clear: left" />
			</div>
			<!-- end of templatemo_menu -->
		</div>
		<!-- end of header -->

		<div id="templatemo_middle">
			<div id="mid_slider">
				<div id="flash_grid_slider">
					<a href="http://www.flashmo.com/preview/flashmo_224_grid_slider"
						target="_blank"> Flash XML Grid Slider </a> <br />
					<br /> <a href="http://www.adobe.com/go/getflashplayer"> <img
						src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif"
						alt="Get Adobe Flash player" />
					</a>
				</div>
			</div>
			<div id="mid_left">
				<div id="mid_title">
					<span>the new way of sharing cards</span>
				</div>
				<p>We help you manage your contact information. Share your card,
					physical or digital, and LikingBe will connect your contacts
					information in the Cloud.</p>
				<div id="learn_more">
					<a href="#">Learn More</a>
				</div>
			</div>
			<div class="cleaner"></div>
		</div>
		<!-- end of templatemo_middle -->

		<div id="templatemo_main">
			<div class="col_fw">
				<div class="col_w240 fp_service_box">
					<img src="images/tick-48px.png" alt="Service 01" />
					<h3>
						Share your physical Card<br />
					</h3>
					<p>Take a picture of the QR code of your card to upload its
						information to the Cloud</p>
				</div>
				<div class="col_w240 fp_service_box">
					<img src="images/tick-48px.png" alt="Service 02" />
					<h3>
						Forget your physical cards...<br />
					</h3>
					<p>...and share your digital cards using Linking Be App
						enhancing your experience and saving costs</p>
				</div>
				<div class="col_w240 fp_service_box col_last">
					<img src="images/tick-48px.png" alt="Service 03" />
					<h3>
						Manage your contact info <br />
					</h3>
					<p>No matter if you share digital or physical information, it
						will available in your mobile and in your Linking-Cloud</p>
				</div>
				<div class="col_w240 fp_service_box col_last">
					<img src="images/tick-48px.png" alt="Service 04" />
					<h3>
						Connect your information <br />
					</h3>
					<p>You will connect with your contacts using the main
						professional social networks</p>
				</div>
				<div class="cleaner"></div>
			</div>

			<div class="col_fw_last">
				<div class="col_allw300">
					<div class="news_box">
						<a href="#"></a>

					</div>
					<div class="news_box">
						<a href="#">Save money</a>
						<p>if you want to move to digital cards movement, this is your
							plaftorm.</p>
					</div>
					<div class="news_box">
						<a href="#">Always available</a>
						<p>If your dont have your physical, do worry about it, just
							share your linking card and enjoy!</p>
					</div>
					<div class="cleaner h20"></div>
				</div>
				<div class="col_allw300">
					<h3>A code for your card</h3>
					<div class="image_frame_300">
						<span></span><img src="images/cardqr.png" alt="Image 01" />
					</div>
					<p>
						<em>Make you physical card accesible</em>
					</p>
					<p>With this code, Linking-App will help you manage your
						contact information.</p>
					<div class="cleaner h20"></div>
				</div>
				<div class="col_allw300 col_rm">
					<h3>Incredibly easy</h3>
					<div class="image_frame_300">
						<span></span><img src="images/cardtomobile.png" alt="Image 02" />
					</div>
					<p>
						<em>With just one click</em>
					</p>
					<p>Your information will be stored into your mobile and
						uploaded it in your Linking-Cloud</p>
					<div class="cleaner h20"></div>
				</div>
				<div class="cleaner"></div>
			</div>
			<div class="cleaner"></div>
		</div>
		<!-- end of main -->
	</div>
	<!-- end of wrapper -->

	<div id="templatemo_footer_wrapper">
		<div id="templatemo_footer">
			Copyright © 2013 | Designed by <a href="http://www.google.com"
				target="_parent">Linking B</a>
			<div class="cleaner"></div>
		</div>
	</div>

</body>
</html>