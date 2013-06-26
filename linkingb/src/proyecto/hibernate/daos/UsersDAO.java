package proyecto.hibernate.daos;

import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.acegisecurity.context.SecurityContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Example;
import org.hibernate.sql.JoinFragment;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import proyecto.hibernate.beans.Users;

public class UsersDAO extends  HibernateDaoSupport {
	
	private static final Log log = LogFactory.getLog(UsersDAO.class);

	// property constants
	public static final String PASSWORD = "password";
	public static final String ENABLED = "enabled";
	public static final String USER_EMAIL = "userEmail";

	public void save(Users transientInstance) {
		log.debug("saving Users instance");
		try {
			getHibernateTemplate().saveOrUpdate(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}
	
	public void update(Users transientInstance) {
		log.debug("updating Users instance");
		
		try {	
			getHibernateTemplate().saveOrUpdate(transientInstance); //saveOrUpdate(transientInstance);
			log.debug("save successful");
			
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Users persistentInstance) {
		log.debug("deleting Users instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Users findById(java.lang.String id) {
		log.debug("getting Users instance with id: " + id);
		try {
			Users instance = (Users) getHibernateTemplate().get(Users.class, id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
	
	@SuppressWarnings("static-access")
	public static Users GetUserLogged(HttpServletRequest request, UsersDAO usersDAO){
			
			try{
				
			SecurityContext contexto = (SecurityContext) request.getSession()
					.getAttribute("ACEGI_SECURITY_CONTEXT");

			Users user = (Users) contexto.getAuthentication().getPrincipal();
			
			long userID = new Long(user.getUsername());
	        String usuario="";
	        usuario.valueOf(userID);
			user =usersDAO.findById(usuario);
			
			System.out.println("retorno "+user);
			System.out.println("retorno 222 "+usuario);
			
			return user;
			
			}catch (Exception e){
				
				return null;
			}
		
		}
		

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding Users instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Users as model where model."	+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByPassword(Object password) {
		return findByProperty(PASSWORD, password);
	}

	public List findByEnabled(Object enabled) {
		return findByProperty(ENABLED, enabled);
	}

	
	public List findAll() {
		log.debug("finding all Users instances");
		try {
			DetachedCriteria criteria = DetachedCriteria.forClass(Users.class); 
  			return getHibernateTemplate().findByCriteria(criteria);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
}