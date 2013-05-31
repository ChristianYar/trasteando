package proyecto.hibernate.beans;

/*
    USERNAME varchar(50) NOT NULL, 
    COMPANY_NAME varchar(50) NOT NULL, 
    PROFESSIONAL_ROLE varchar(50) NOT NULL, 
    NAME varchar(50) NOT NULL,   
    SURNAME varchar(50) NOT NULL, 
    ADDRESS varchar(50) NOT NULL,
    CITY  varchar(50) NOT NULL,
    COUNTRY varchar(50) NOT NULL,
    EMAIL varchar(50) NOT NULL,   
    MOBILE  varchar(20) NOT NULL,   
    PHONE varchar(20) NOT NULL, 
    NOTE varchar(50) NOT NULL,  
 */


public class Contacts {
	
	private ContactsId id;
	private Users users;
	private String companyName;
	private String professionalRole;
	private String name;
	private String surname;
	private String address;
	private String city;
	private String country;
	private String email;
	private String mobile;
	private String phone;
	private String note;
	private String usersUserName;
	
	
	// Constructors

	/** default constructor */
	public Contacts() {
	}

	/** full constructor */
	public Contacts(ContactsId id, Users users, String companyName, String professionalRole,
			String name, String surname, String address, String city, String country, String email,
			String mobile, String phone, String note, String usersUserName) {
		this.id = id;
		this.users = users;
		this.companyName = companyName;
		this.professionalRole = professionalRole;
		this.name = name;
		this.surname = surname;
		this.address = address;
		this.city = city;
		this.country = country;
		this.email = email;
		this.mobile = mobile;
		this.phone = phone;
		this.note = note;		
		this.usersUserName = usersUserName;
	}

	// Property accessors

	public ContactsId getId() {
		return this.id;
	}

	public void setId(ContactsId id) {
		this.id = id;
	}

	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getProfessionalRole() {
		return professionalRole;
	}

	public void setProfessionalRole(String professionalRole) {
		this.professionalRole = professionalRole;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public String getUsersUserName() {
		return usersUserName;
	}

	public void setUsersUserName(String usersUserName) {
		this.usersUserName = usersUserName;
	}
	
	
	

}