/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author DELL
 */
public class Meaning extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        String s =request.getParameter("t1");
        String qr="select * from vocab1 where word=?";
        try{
                Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vocab","root","");
            PreparedStatement ps=con.prepareStatement(qr);
            ps.setString(1,s);
            ResultSet rs=ps.executeQuery();
            out.println("<html>");
            out.println("<body>");
            out.println("<h2>Meaning</h2>");
            //out.println("<hr>");
            rs.next();
            String s1=rs.getString(1);
            String s2=rs.getString(2);
            String s3=rs.getString(3);
            String s4=rs.getString(4);
            String s5=rs.getString(5);
            out.println("<table border=2>");
            out.println("<tr>");
            out.println("<td>Id</td>");
            out.println("<td>Word</td>");
            out.println("<td>Meaning</td>");
            out.println("<td>Antonyms</td>");
            out.println("<td>Synonyms</td>");
            out.println("</tr>");
            out.println("<tr>");
            out.println("<td>"+s1+"</td>");
            out.println("<td>"+s2+"</td>");
            out.println("<td>"+s3+"</td>");
            out.println("<td>"+s4+"</td>");
            out.println("<td>"+s5+"</td>");
            out.println("</tr>");
            out.println("</table>");
            //out.println("<hr>");
            out.println("</body>");
            out.println("</html>");
        
        }
        catch(Exception e)
        {
            out.println("error "+ e);
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
