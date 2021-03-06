package proyecto.hibernate.beans;

// Generated 21-may-2013 17:32:08 by Hibernate Tools 3.4.0.CR1

import java.util.HashSet;
import java.util.Set;

/**
 * Users generated by hbm2java
 */
public class Users implements java.io.Serializable {

	private String username;
	private String password;
	private boolean enabled;
	private Set<Authorities> authoritieses = new HashSet<Authorities>(0);
	private Contacts contacts;

	public Users() {
	}

	public Users(String username, String password, boolean enabled) {
		this.username = username;
		this.password = password;
		this.enabled = enabled;
	}

	public Users(String username, String password, boolean enabled,
			Set<Authorities> authoritieses, Contacts contacts) {
		this.username = username;
		this.password = password;
		this.enabled = enabled;
		this.authoritieses = authoritieses;
		this.contacts = contacts;
	}

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

	public boolean isEnabled() {
		return this.enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public Set<Authorities> getAuthoritieses() {
		return this.authoritieses;
	}

	public void setAuthoritieses(Set<Authorities> authoritieses) {
		this.authoritieses = authoritieses;
	}

	public Contacts getContacts() {
		return this.contacts;
	}

	public void setContacts(Contacts contacts) {
		this.contacts = contacts;
	}

}
