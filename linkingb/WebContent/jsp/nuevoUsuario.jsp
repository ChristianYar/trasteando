<%@include file="include.jsp"%>

<h2>ALTA USUARIO</h2>
	  <form action="anadirUsuario.htm" method="post">
	  <div>
		 <label>Username</label>
	      <spring:bind path="userCommand.username">
			<input type="text"  name="${status.expression}"  value="${status.value}"/>
			<c:if test="${status.error}">
	         			<span >${status.errorMessage}</span>
			</c:if>
		  </spring:bind>
	  </div>  
	  <div> 
		 <label>Password</label>
	      <spring:bind path="userCommand.password">
			<input type="password" name="${status.expression}"  value="${status.value}"/>
			<c:if test="${status.error}">
	         		<span>${status.errorMessage}</span>
			</c:if>
		  </spring:bind>
	  </div> 
	  <input type="submit" value="Alta"/>
	</form>