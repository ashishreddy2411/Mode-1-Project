package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

@Entity
@Table(name="user")
public class User {
	@Id
	@Column
	@Size(min = 3, message ="Enter Valid Username")
	private String name;
	@Column
	@Size(min = 6, message ="Enter Valid Password")
	private String pass;
	@Column
	@Size(min = 10, message ="Enter Valid Email ID")
	private String email_id;
	@Column
	@Size(min = 10, message ="Enter Valid Mobile Number")
	private long mobile_no;
	@Column
	@Size(min = 2, message ="Enter Valid City")
	private String city;
	
	public User(String name, String pass, String email_id, long mobile_no, String city) {
		this.name = name;
		this.pass = pass;
		this.email_id = email_id;
		this.mobile_no = mobile_no;
		this.city = city;
	}
	public User() {
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getEmail_id() {
		return email_id;
	}
	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
	public long getMobile_no() {
		return mobile_no;
	}
	public void setMobile_no(long mobile_no) {
		this.mobile_no = mobile_no;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	
}
