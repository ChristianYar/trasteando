<%@include file="include.jsp"%>
<%@page import="proyecto.hibernate.beans.Users"%>


<% Users u=(Users)request.getAttribute("usuario");%>
 
 USUARIO DADO DE ALTA CORRECTAMENTE
 
 <p>username:<%=u.getUsername() %></p>
  
 <div>
<a href="<%=request.getContextPath()%>/login.htm">login</a>
</div>