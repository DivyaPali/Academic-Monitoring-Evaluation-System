public class Member {
	
	private String name,sem, email, phone,uname, password;
	private int rollno;

	
	public Member() {
		super();
	}

	public Member(String name, int rollno,String sem,String email, String phone,String uname, String password) {
		super();
		this.name=name;
		this.rollno=rollno;
		this.sem=sem;
		this.uname = uname;
		this.password = password;
		this.email = email;
		this.phone = phone;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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

	public int getRollno() {
		return rollno;
	}

	public void setRollno(int rollno) {
		this.rollno = rollno;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSem() {
		return sem;
	}

	public void setSem(String sem) {
		this.sem = sem;
	}
	
	

}