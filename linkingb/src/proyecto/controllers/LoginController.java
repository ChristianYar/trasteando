package proyecto.controllers;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.acegisecurity.context.SecurityContext;
import org.acegisecurity.ui.AbstractProcessingFilter;
import org.acegisecurity.ui.savedrequest.SavedRequest;
import org.acegisecurity.userdetails.User;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
/******/




public class LoginController extends MultiActionController
{

	public ModelAndView login(HttpServletRequest request, HttpServletResponse response)
	{
		
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
