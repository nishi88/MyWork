

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class SaveUser extends HttpServlet {

     Connection con;   PreparedStatement ps;
    
    public void init()
    {
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vocab","root","");
	String qr="insert into vocab2 values(?,?,?,?,?)";
	ps=con.prepareStatement(qr);
	}
	catch(Exception ex){}
    }
    public void destroy()
    {
	try{
	    con.close();
	}
        catch(Exception e){}
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
	String s1=request.getParameter("t1");
	String s2=request.getParameter("t2");
	String s3=request.getParameter("t3");
	String s4=request.getParameter("t4");
	String s5=request.getParameter("t5");
	
	try
	{
	    ps.setString(1, s1);
	    ps.setString(2, s2);
	    ps.setString(3, s3);
	    ps.setString(4, s4);
	    ps.setString(5, s5);
	   
	    ps.executeUpdate();
	    out.println("REGISTRATION COMPLETED");
	    
	}
	catch(Exception e)
	{
	    out.println(e);
	}
	
	
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
