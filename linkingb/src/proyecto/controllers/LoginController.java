package proyecto.controllers;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.acegisecurity.context.SecurityContext;
import org.acegisecurity.ui.AbstractProcessingFilter;
import org.acegisecurity.ui.savedrequest.SavedRequest;
import org.acegisecurity.userdetails.User;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import proyecto.hibernate.beans.Users;
import proyecto.hibernate.daos.*;

/******/

public class LoginController extends MultiActionController
{
/* UsersDAO usersDAO;
  
	public UsersDAO getUsersDAO() {
	return usersDAO;
}


public void setUsersDAO(UsersDAO usersDAO) {
	this.usersDAO = usersDAO;
}
*/

	public ModelAndView login(HttpServletRequest request, HttpServletResponse response)
	{
	  /*  
	    String name1  =  (String) request.getParameter("id2");
	    Users myUser1 =  new Users(name1,"1234",true); 	
	    myUser1.setUsername(name1);
	    request.setAttribute("myUser1",myUser1);
	    
	   usersDAO.save(myUser1);
	*/
		
		return new ModelAndView("login");
	}
	
	public ModelAndView inicio(HttpServletRequest request, HttpServletResponse response)
	{
		
		return new ModelAndView("inicio");
	}

	public ModelAndView dentro(HttpServletRequest request, HttpServletResponse response)
	{
		
		SecurityContext contexto = (SecurityContext)request.getSession().getAttribute("ACEGI_SECURITY_CONTEXT");   
		
		User user=(User)contexto.getAuthentication().getPrincipal();

		SavedRequest savedRequest = (SavedRequest) request.getSession().getAttribute(
				AbstractProcessingFilter.ACEGI_SAVED_REQUEST_KEY);

	 
	   return new ModelAndView("redirect:userInicio.htm");
	   
	}
	
	
}
