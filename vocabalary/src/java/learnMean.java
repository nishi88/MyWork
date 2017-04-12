

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.http.HttpSession;

public class learnMean extends HttpServlet {
    Connection con;
    ResultSet rs;
    PreparedStatement ps;
    static int count=1;
    public void init()
   {
       try
       {
           Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vocab","root","");
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
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
       
        try{
            String qr="";
            HttpSession session = request.getSession();
            String ID = (String)session.getAttribute("ID");
            
            int x;
            if(ID==null){
                x=1;
                qr="select * from vocab1 where id=1";
            }else{
                qr = "select * from vocab1 where id = '"+Integer.parseInt(ID)+"' ";
                x = Integer.parseInt(ID);
            }
                ps=con.prepareStatement(qr);
                rs=ps.executeQuery();
                rs.next();
     
        String s1=rs.getString(1);
        String s2=rs.getString(2);
        String s3=rs.getString(3);
    
        out.println(s1);
        out.println(s2);
        out.println(s3); 
      
        out.println("<html>");
        out.println("<body>");
        out.println("<a href=incrID?id="+x+"><input type=button value=NEXT></a>");
        out.println("<a href=MemoryKey.jsp?id="+x+">Learn-By-Memory-Key</a>");
        out.println("</body>");
        out.println("</html>");
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
