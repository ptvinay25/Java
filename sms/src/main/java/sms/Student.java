package sms;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Student {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int sid; 
	
	private String sname;
	private long phone;
	private String email;
	private String city;
	private char gender;
	private String course;
	private int sem;
	private String intDomain;
	
	
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getSem() {
		return sem;
	}
	public void setSem(int sem) {
		this.sem = sem;
	}
	public String getIntDomain() {
		return intDomain;
	}
	public void setIntDomain(String intDomain) {
		this.intDomain = intDomain;
	}
	public void setCourse(String course) {
		this.course= course;
	}
	public int getSid() {
		return sid;
	}
	public char getGender() {
		return gender;
	}
	public void setGender(char gender) {
		this.gender= gender ;
	}
	public String getCourse() {
		return course;
	}

}
