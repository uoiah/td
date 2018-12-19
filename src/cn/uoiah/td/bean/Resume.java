package cn.uoiah.td.bean;

public class Resume {
	
	private String name;
	private String email;
	private String gender = "M";//M->male,F->female
	private String favs;
	private String memo;
	private String subject;
	
	public Resume() {
		
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getFavs() {
		return favs;
	}
	public void setFavs(String favs) {
		this.favs = favs;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}

	@Override
	public String toString() {
		return name + "," + email + "," + gender + "," + subject + "," + favs + "," + memo;
	}
	
	

}
