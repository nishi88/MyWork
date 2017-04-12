
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.sql.*"%>
<%@page import="MyPkg.DbConnection" %>
<!DOCTYPE html>
<html>
    <head>
       
    </head>
    <body>
        <%
            try{
        Connection con=DbConnection.MyCon();
        
        session = request.getSession();
        String id = request.getParameter("id");
        int x =Integer.parseInt(id);
        String q="Select memory,image from vocab1 where id=?";
        PreparedStatement ps= con.prepareStatement(q);
        ps.setInt(1,x);
        ResultSet rs=ps.executeQuery();
        rs.next();
        String memory = rs.getString(1);
        Blob image=rs.getBlob(2);
        out.println(memory);
        out.println(image);
            }
            catch(Exception e)
            {
                out.println(e);
            }
        %>
        <a href="learnMean">Back</a>
    </body>
</html>
