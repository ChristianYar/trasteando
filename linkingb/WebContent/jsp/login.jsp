<%@include file="include.jsp"%>



<form action="j_acegi_security_check.htm" method="post">  
  <FIELDSET>
  <LEGEND>ENTRADA APLICACION</LEGEND>
  <br/>
	    	<p><label>USUARIO</label> <input type="text" name="j_username" maxlength="128" size="15"> </p>
    		<p><label>PASSWORD</label> <input type="password" name="j_password" maxlength="128" size="15"></p>
    <div>
        	<input type="submit" value="login">
        	
       </div>
  </FIELDSET>
</form> 


