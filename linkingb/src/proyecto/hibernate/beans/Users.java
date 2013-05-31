package proyecto.hibernate.beans;

import java.util.HashSet;
import java.util.Set;

/**
 * Users entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Users implements java.io.Serializable {

	// Fields

	private String username;
	private String password;
	private Boolean enabled;
	private Set authoritieses = new HashSet(0);
	private Set contactises = new HashSet(0);

	// Constructors

	/** default constructor */
	public Users() {
	}

	/** minimal constructor */
	public Users(String username, String password, Boolean enabled) {
		this.username = username;
		this.password = password;
		this.enabled = enabled;
	}

	/** full constructor */
	public Users(String username, String password, Boolean enabled,
			Set authoritieses, Set contactises) {
		this.username = username;
		this.password = password;
		this.enabled = enabled;

		this.authoritieses = authoritieses;
		this.contactises = contactises;
	}

	// Property accessors

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Boolean getEnabled() {
		return this.enabled;
	}

	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}

	public Set getAuthoritieses() {
		return this.authoritieses;
	}

	public void setAuthoritieses(Set authoritieses) {
		this.authoritieses = authoritieses;
	}

	public Set getContactises() {
		return contactises;
	}

	public void setContactises(Set contactises) {
		this.contactises = contactises;
	}
	
	

}