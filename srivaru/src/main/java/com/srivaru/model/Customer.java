package com.srivaru.model;

import java.math.BigInteger;
import java.util.Date;
import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Type;
import org.hibernate.validator.constraints.NotEmpty;
import org.joda.time.LocalDate;
import org.springframework.format.annotation.DateTimeFormat;
 

@Entity
@Table(name="CUSTOMER")
public class Customer {
 
	/*@Id
	@GeneratedValue(generator = "UUID")
	@GenericGenerator(name = "UUID", strategy = "org.hibernate.id.UUIDGenerator")
	
	@Column(name = "id", updatable = false, nullable = false)
	/
	 * 
	 */
	@Id
	@Column(name="uuid",insertable=true)
	@GeneratedValue
    private String id;
 
    @Size(min=3, max=50)
    @Column(name = "FIRSTNAME", nullable = false)
    private String fname;
 

    @Size(min=3, max=50)
    @Column(name = "LASTNAME", nullable = false)
    private String lname;
    

    @Size(min=3, max=50)
    @Column(name = "EMAIL", nullable = false)
    private String email;
    
    @Size(min=3, max=50)
    @Column(name = "MOBNO", nullable = false)
    private String mobNo;
    
 
    @NotEmpty
    @Column(name = "USERNAME", unique=true, nullable = false)
    private String username;
 

    @NotEmpty
    @Column(name = "PASSWORD", nullable = false)
    private String password;
    
 
    public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getFname() {
		return fname;
	}


	public void setFname(String fname) {
		this.fname = fname;
	}


	public String getLname() {
		return lname;
	}


	public void setLname(String lname) {
		this.lname = lname;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getMobNo() {
		return mobNo;
	}


	public void setMobNo(String mobNo) {
		this.mobNo = mobNo;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}
	


	@Override
    public String toString() {
        return "Customer [id=" + id + ", name=" + fname +  "]";
    }
     
}
