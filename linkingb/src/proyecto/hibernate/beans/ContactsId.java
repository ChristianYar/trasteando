package proyecto.hibernate.beans;

public class ContactsId implements java.io.Serializable {
	
		// Fields

		private Users users;
		private String contacts;

		// Constructors

		/** default constructor */
		public ContactsId() {
		}

		/** full constructor */
		public ContactsId(Users users, String contacts) {
			this.users = users;
			this.contacts = contacts;
		}

		// Property accessors

		public Users getUsers() {
			return this.users;
		}

		public void setUsers(Users users) {
			this.users = users;
		}

		public String getContacts() {
			return this.contacts;
		}

		public void setContacts(String contacts) {
			this.contacts = contacts;
		}

		public boolean equals(Object other) {
			if ((this == other))
				return true;
			if ((other == null))
				return false;
			if (!(other instanceof ContactsId))
				return false;
			ContactsId castOther = (ContactsId) other;

			return ((this.getUsers() == castOther.getUsers()) || (this.getUsers() != null
					&& castOther.getUsers() != null && this.getUsers().equals(
					castOther.getUsers())))
					&& ((this.getContacts() == castOther.getContacts()) || (this
							.getContacts() != null
							&& castOther.getContacts() != null && this.getContacts().equals(castOther.getContacts())));
		}

		public int hashCode() {
			int result = 17;

			result = 37 * result
					+ (getUsers() == null ? 0 : this.getUsers().hashCode());
			result = 37 * result
					+ (getContacts() == null ? 0 : this.getContacts().hashCode());
			return result;
		}

	}