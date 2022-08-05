
public class Faculty {
	
	private String name,email, phone,uname, pass;


	
	public Faculty() {
		super();
	}

	public Faculty(String name,String email, String phone,String uname, String pass) {
		super();
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.uname = uname;
		this.pass = pass;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPassword() {
		return pass;
	}

	public void setPassword(String pass) {
		this.pass = pass;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}


	

}