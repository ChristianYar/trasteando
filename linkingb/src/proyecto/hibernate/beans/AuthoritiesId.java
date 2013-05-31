package proyecto.hibernate.beans;
/**
 * AuthoritiesId entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class AuthoritiesId implements java.io.Serializable {

	// Fields

	private Users users;
	private String authority;

	// Constructors

	/** default constructor */
	public AuthoritiesId() {
	}

	/** full constructor */
	public AuthoritiesId(Users users, String authority) {
		this.users = users;
		this.authority = authority;
	}

	// Property accessors

	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public String getAuthority() {
		return this.authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof AuthoritiesId))
			return false;
		AuthoritiesId castOther = (AuthoritiesId) other;

		return ((this.getUsers() == castOther.getUsers()) || (this.getUsers() != null
				&& castOther.getUsers() != null && this.getUsers().equals(
				castOther.getUsers())))
				&& ((this.getAuthority() == castOther.getAuthority()) || (this
						.getAuthority() != null
						&& castOther.getAuthority() != null && this
						.getAuthority().equals(castOther.getAuthority())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getUsers() == null ? 0 : this.getUsers().hashCode());
		result = 37 * result
				+ (getAuthority() == null ? 0 : this.getAuthority().hashCode());
		return result;
	}

}