package proyecto.controllers;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.acegisecurity.Authentication;
import org.acegisecurity.context.HttpSessionContextIntegrationFilter;
import org.acegisecurity.context.SecurityContext;
import org.acegisecurity.context.SecurityContextHolder;
import org.acegisecurity.ui.AbstractProcessingFilter;
import org.acegisecurity.ui.savedrequest.SavedRequest;
import org.acegisecurity.ui.webapp.AuthenticationProcessingFilter;
import org.acegisecurity.userdetails.User;
import javax.servlet.ServletSecurityElement;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import proyecto.hibernate.beans.Users;
import proyecto.hibernate.daos.ContactsDAO;
import proyecto.hibernate.daos.ContactsListDAO;
import proyecto.hibernate.daos.UsersDAO;

/******/

public class LoginController extends MultiActionController {

	private static final Log log = LogFactory.getLog(ContactsDAO.class);

	private ContactsDAO contactsDAO;
	private Users user;
    private UsersDAO usersDAO;

	private ServletRequest session;
	
    public ContactsDAO getContactsDAO() {
		return contactsDAO;
	}

	public void setContactsDAO(ContactsDAO contactsDAO) {
		this.contactsDAO = contactsDAO;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	@SuppressWarnings({ "static-access", "null" })
	
	public ModelAndView login(HttpServletRequest request,HttpServletResponse response) {
	
		
		try{
		   SecurityContext contexto = (SecurityContext)request.getSession().getAttribute("ACEGI_SECURITY_CONTEXT");
		   System.out.println("<<<<asi queda paso 1 ---->"+contexto);
			
	    	String login = ((org.acegisecurity.userdetails.User)(contexto.getAuthentication().getPrincipal())).getUsername();
	    	System.out.println("<<<<asi queda paso 2 ---->"+login);
			 	
		/*	String uid = "";
			uid = (String)request.getParameter("uid");
			
		   	request.setAttribute("login" ,login);
    	*/	
    		return new ModelAndView("login");
		
		}catch(Exception e){
			
			return new ModelAndView("init");	
		}		
	}
	
	public ModelAndView inicio(HttpServletRequest request,
			HttpServletResponse response) {

		return new ModelAndView("inicio");
	}

	public ModelAndView dentro(HttpServletRequest request,
			HttpServletResponse response) {

		SecurityContext contexto = (SecurityContext) request.getSession().getAttribute("ACEGI_SECURITY_CONTEXT");

		User user = (User) contexto.getAuthentication().getPrincipal();

		SavedRequest savedRequest = (SavedRequest) request.getSession().getAttribute(AbstractProcessingFilter.ACEGI_SAVED_REQUEST_KEY);

		return new ModelAndView("redirect:userInicio.htm");
	}

}
