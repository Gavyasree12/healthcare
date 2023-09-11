package inpatientserv;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



//Httpservlet class
@WebServlet("/Inpatserv")
public class Inpatserv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Inpatserv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		 try{
	            System.out.println("hai");
	            PrintWriter out = response.getWriter();
	            DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
	            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");

	           String illness = request.getParameter("illness");

	           String hosname = request.getParameter("hosname");

	           String  appdate= request.getParameter("appdate");

	           int  days= Integer.parseInt(request.getParameter("days"));
	           System.out.println(illness);

	           String pres= request.getParameter("pres");
	          // out.print("<a href='Payinserv?days="+days+"'></a>");  
	      
		        int tot=(1000*days)+250+500;
		     
	           request.setAttribute("days", tot);
	           request.getRequestDispatcher("Payinpatient.jsp").forward(request, response);          
	            Random random=new Random();
	            int rand=random.nextInt(999);
	            String appid="App"+rand;
	            request.getRequestDispatcher("Payinpatient.jsp").include(request,response);
	    
	             
	                
	                
	            String sql="insert into sathya.inpatdet values(?,?,?,?,?,?)";
	            PreparedStatement stat=con.prepareStatement(sql);
	            System.out.println("hello");
	            stat.setString(1, illness);
	            stat.setString(2, hosname);
	            stat.setString(3, appdate);
	            stat.setInt(4, days);
	            stat.setString(5, pres);
	            stat.setString(6, appid);
	            stat.executeUpdate();
	            
	            
	    }catch(Exception e)
	        {
	        e.printStackTrace();
	        }
	    }

	}
