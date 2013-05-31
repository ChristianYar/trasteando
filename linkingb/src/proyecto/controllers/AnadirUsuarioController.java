package proyecto.controllers;

import java.util.ArrayList;
import java.util.List;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;

import proyecto.commands.UserCommand;
import proyecto.hibernate.beans.Authorities;
import proyecto.hibernate.beans.AuthoritiesId;
import proyecto.hibernate.beans.Users;
import proyecto.hibernate.daos.AuthoritiesDAO;
import proyecto.hibernate.daos.UsersDAO;


public class AnadirUsuarioController extends SimpleFormController {
	
	
    private UsersDAO usersDAO;
    private AuthoritiesDAO authDAO; 

    
	public AuthoritiesDAO getAuthDAO() {
		return authDAO;
	}

	public void setAuthDAO(AuthoritiesDAO authDAO) {
		this.authDAO = authDAO;
	}

	public UsersDAO getUsersDAO() {
		return usersDAO;
	}

	public void setUsersDAO(UsersDAO usersDAO) {
		this.usersDAO = usersDAO;
	}
	

	@Override
	protected Object formBackingObject(HttpServletRequest request) throws Exception 
	{		
		
		return super.formBackingObject(request);
	}

	
	protected ModelAndView onSubmit(HttpServletRequest request,HttpServletResponse response, 
			Object command, BindException errors)throws Exception 	{
		
		//LanguageUtils.changeLanguage(request, response);
		
		UserCommand form=(UserCommand)command;
		Map<String,Object> map=new HashMap<String,Object>();
		
		
		//Does the user exist  in the database
		//case 1. Does not exist
		
		String userEmail = "";     //form.getUserEmail();		
		ArrayList<Users> userList =  (ArrayList<Users>)usersDAO.findByProperty( UsersDAO.USER_EMAIL, userEmail); 	
		
		
	
		if (userList.isEmpty()){				
				
				//create a User, using data extracted from commandForm
				
				Users user=new Users();
				user.setPassword(form.getPassword().trim());
				//user.setUserEmail( userEmail );
				
				AuthoritiesId autId=new AuthoritiesId();
				autId.setUsername(form.getUsername());
				autId.setAuthority("ROLE_USUARIO");
				
			    Set<Authorities> lista= new HashSet(0);
				Authorities auto=new Authorities();
				auto.setId(autId);
				lista.add(auto);
				
				user.setEnabled(true);
			    user.setAuthoritieses(lista);	    	
			    
			    String activationId = null;
			    
		    	//the mail is sent to activate the account with the link provided by default
			    //activationId = mailHelper.userActivationMail(user,request.getLocale());	
			    //user.setActivationId(activationId);
			    //user.setEnabled(false);
			    
			    
			    usersDAO.save(user);
			    authDAO.save(auto);					    
	
				map.put("usuario", user);		
				return new ModelAndView("detalleUsuario",map);
		}
		else { 		
			
			//case 2. the user Exist
			//Users userObtained = (Users)userList.get(0);
			
			
			// the form is cleaned before being included			
			form.setPassword("");
			
			//form.setUsername(""); not clean to allow the user seeing the name
			
			request.setAttribute("userCommand", form);
					
			map.put("usuario", "existe");
			return new ModelAndView("nuevoUsuario",map);			
		}	
		
	}



}
