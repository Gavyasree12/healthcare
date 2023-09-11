package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
//Creating a class called Doctortest
public class Doctortest {
public Doctortest() {
		super();
	}
	//creating getters and setters
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getSpec() {
		return spec;
	}
	public void setSpec(String spec) {
		this.spec = spec;
	}
	public String getExp() {
		return exp;
	}
	public void setExp(String exp) {
		this.exp = exp;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
private String fname;
private String lname;
private String gender;
private String spec;
private String exp;
private String phone;
private String email;
private String addr;
public boolean docinsert(String userid,String password)
{
	boolean success=false;
	try
	{
	System.out.println("hai");
	DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	String sql="insert into sathyas.doctdet values(?,?,?,?,?,?,?,?,?,?)";
	PreparedStatement stat=con.prepareStatement(sql);
	stat.setString(1, fname);
	stat.setString(2, lname);	
	stat.setString(3, gender);
	stat.setString(4, spec);
	stat.setString(5, exp);
	stat.setString(6, phone);
	stat.setString(7, email);
	stat.setString(8, addr);
	stat.setString(9, userid);
	stat.setString(10, password);
	stat.executeUpdate();
success=true;
	}
	catch(SQLException e)
	{
		e.printStackTrace();
	}
	return success;
}



}

