package demo;
import java.sql.*;
public class Patientclass {
	public Patientclass()
	{
	}
	//defining the variables
	String fname;
	String lname;
	String dob;
	String gender;
	String phone;
	String bg;
	String email;
	String addr;
	// getters and setters
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
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getBg() {
		return bg;
	}
	public void setBg(String bg) {
		this.bg = bg;
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
		public boolean insert(String appid,String userid,String password)
	{
		boolean success=false;
		try 
		{
			System.out.println("hello");
			DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
			String sql="insert into sathyas.patientdet values(?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement stat=con.prepareStatement(sql);
			stat.setString(1, fname);
			stat.setString(2, lname);	
			stat.setString(3, dob);
			stat.setString(4, gender);
			stat.setString(5, phone);
			stat.setString(6, email);
			stat.setString(7, bg);
			stat.setString(8, addr);
			stat.setString(9, appid);
			stat.setString(10, userid);
			stat.setString(11, password);
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

