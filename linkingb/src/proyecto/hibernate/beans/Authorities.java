package proyecto.hibernate.beans;
  
/**
 * Authorities entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Authorities implements java.io.Serializable {

	// Fields

	private AuthoritiesId id;
	private Users users;

	// Constructors

	/** default constructor */
	public Authorities() {
	}

	/** full constructor */
	public Authorities(AuthoritiesId id, Users users) {
		this.id = id;
		this.users = users;
	}

	// Property accessors

	public AuthoritiesId getId() {
		return this.id;
	}

	public void setId(AuthoritiesId id) {
		this.id = id;
	}

	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

}