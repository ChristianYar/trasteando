package proyecto.hibernate.daos;


import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import proyecto.hibernate.beans.Authorities;
import proyecto.hibernate.beans.AuthoritiesId;



public class AuthoritiesDAO extends  HibernateDaoSupport{
    private static final Log log = LogFactory.getLog(AuthoritiesDAO.class);

  public void save(Authorities transientInstance) {
        log.debug("saving Authorities instance");
        try {
            getHibernateTemplate().saveOrUpdate(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
	public void delete(Authorities persistentInstance) {
        log.debug("deleting Authorities instance");
        try {
            getHibernateTemplate().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public Authorities findById(AuthoritiesId id) {
        log.debug("getting Authorities instance with id: " + id);
        try {
            Authorities instance = (Authorities) getHibernateTemplate().get(Authorities.class, id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    

   
    public List findByProperty(String propertyName, Object value) {
    	
      log.debug("finding Authorities instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from Authorities as model where model."	+ propertyName + "= ?";
         return getHibernateTemplate().find(queryString, value);
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }
	}


	public List findAll() {
		log.debug("finding all Authorities instances");
		try {
			//String queryString = "from Authorities";
	    	//ooo return getHibernateTemplate().find(queryString);
	    	DetachedCriteria criteria = DetachedCriteria.forClass(Authorities.class); 
			return getHibernateTemplate().findByCriteria(criteria);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
}