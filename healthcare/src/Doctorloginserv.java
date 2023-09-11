

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//new changes
@WebServlet("/Doctorloginserv")
public class Doctorloginserv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Doctorloginserv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		try

        {

        PrintWriter out = response.getWriter();

        String userid = request.getParameter("userid");

        String password = request.getParameter("password");

        DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        Statement stmt = con.createStatement();

        ResultSet rs =stmt.executeQuery("select * from bhaskar.doctdet where userid='"+userid+"' and password='"+password+"' ");
        //request.getRequestDispatcher("Nav.jsp").include(request,response);
        HttpSession session=request.getSession();  
        session.setAttribute("userid",userid);  
        if(rs.next())

        {

            request.getRequestDispatcher("Navdoctor.jsp").include(request,response);
                

        }

        else

        {
            
             out.println("<html><body>");
             out.println("<script type=\"text/javascript\">");
             out.println("alert('Invalid User name and password');");
             out.println("</script>");
             out.println("</body></html>");         
             request.getRequestDispatcher("Doctorsignin.jsp").include(request,response); 
        }

                }

        catch(Exception e)

        {

        e.printStackTrace();

        }
    }


	}


