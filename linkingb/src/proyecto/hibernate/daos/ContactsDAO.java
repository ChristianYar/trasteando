package proyecto.hibernate.daos;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.acegisecurity.context.SecurityContext;
import org.acegisecurity.context.SecurityContextHolder;
import org.apache.catalina.deploy.ContextHandler;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import proyecto.hibernate.beans.Contacts;
import proyecto.hibernate.beans.ContactsListId;
import proyecto.hibernate.beans.Users;


public class ContactsDAO extends  HibernateDaoSupport {
	
private static final Log log = LogFactory.getLog(ContactsDAO.class);

    public void save(Contacts transientInstance) {
        log.debug("saving Contacts instance");
        try {
            getHibernateTemplate().save(transientInstance);
            log.debug("save successful Contacts DAO");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
    public void update(Contacts transientInstance) {
        log.debug("saving Contacts instance");
        try {
            getHibernateTemplate().update(transientInstance);
            log.debug("save successful Contacts DAO");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
	public void delete(Contacts persistentInstance) {
        log.debug("deleting Contacts instance");
        try {
            getHibernateTemplate().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public Contacts findById(ContactsListId id) {
        log.debug("getting Contacts instance with id: " + id);
        try {
            Contacts instance = (Contacts) getHibernateTemplate().get(Contacts.class, id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    public static String getUserName(){
    	SecurityContextHolder context=(SecurityContextHolder) SecurityContextHolder.getContext();
    	if(context instanceof SecurityContext){
    	SecurityContext secureContext=(SecurityContext) context;
    	return(String)
    	secureContext.getAuthentication().getPrincipal();
    	}
    	return null;
    	}

    public List findByProperty(String propertyName, Object value) {
    	
      log.debug("finding Contacts instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from Contacts as model where model."	+ propertyName + "= ?";
         return getHibernateTemplate().find(queryString, value);
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }
	}


	public List findAll() {
		log.debug("finding all Contacts instances");
		try {
			//String queryString = "from Contacts";
	    	//ooo return getHibernateTemplate().find(queryString);
	    	DetachedCriteria criteria = DetachedCriteria.forClass(Contacts.class); 
			return getHibernateTemplate().findByCriteria(criteria);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
}
	
	
	


