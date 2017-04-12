/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;


@WebServlet(urlPatterns = {"/VerifyUser"})
public class VerifyUser extends HttpServlet {

     ResultSet rs;
    Connection con;
    PreparedStatement ps;
   public void init()
   {
       try
       {
           Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vocab","root","");
        String qr="select * from vocab2 where id=? and password=?";
        ps=con.prepareStatement(qr);
             }
       catch(Exception e)
       {
         
       }
       
   }
   public void destory()
   {
       try
       {
           con.close();
       }
       catch(Exception e)
       {
           
       }
   }

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         PrintWriter out=response.getWriter();
        String s1=request.getParameter("t1");
        String s2=request.getParameter("t2");
        try
        {
            ps.setString(1,s1);
            ps.setString(2,s2);
            rs= ps.executeQuery();
            boolean found =rs.next();
            if(found)
            {
                String username=rs.getString(1); 
                response.sendRedirect("home.jsp");
                
            }
            else
            {
                out.println("INVALID USER");
            }
        
        }
        catch(Exception e)
        {
                out.println("error "+e );
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
