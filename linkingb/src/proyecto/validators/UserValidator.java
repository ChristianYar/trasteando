package proyecto.validators;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import proyecto.commands.UserCommand;


 

public class UserValidator implements Validator
{

	private Log log = LogFactory.getLog(getClass());
	private UserCommand userCommand ;
	
	public boolean supports(Class clase) {
		return UserCommand.class.isAssignableFrom(clase);
	}


	public void validate(Object arg0, Errors errors) 
	{
		
		log.info("VALIDANDO REGISTRO USUARIO");
		userCommand=(UserCommand)arg0;
	

		if (userCommand==null || userCommand.getUsername()==null || userCommand.getUsername().trim().equals(""))
			errors.rejectValue("username","obligatorio.password","Username Obligatorio");
			
		if (userCommand==null || userCommand.getPassword()==null || userCommand.getPassword().trim().equals(""))
				errors.rejectValue("password","obligatorio.password","Password Obligatorio");
			
		
	}
	
}
