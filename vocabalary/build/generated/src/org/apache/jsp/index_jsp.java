package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!--\n");
      out.write("Author: W3layouts\n");
      out.write("Author URL: http://w3layouts.com\n");
      out.write("License: Creative Commons Attribution 3.0 Unported\n");
      out.write("License URL: http://creativecommons.org/licenses/by/3.0/\n");
      out.write("-->\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("\t\n");
      out.write("<head>\n");
      out.write("\t<title>The Login-Animated Website Template | Home :: w3layouts</title>\n");
      out.write("\t\t<meta charset=\"utf-8\">\n");
      out.write("\t\t<link href=\"css/style.css\" rel='stylesheet' type='text/css' />\n");
      out.write("\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\t\t<script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>\n");
      out.write("\t\t<!--webfonts-->\n");
      out.write("\t\t<link href='http://fonts.googleapis.com/css?family=Open+Sans:600italic,400,300,600,700' rel='stylesheet' type='text/css'>\n");
      out.write("\t\t<!--//webfonts-->\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t\n");
      out.write("\t\t\t\t <!-----start-main---->\n");
      out.write("\t\t\t\t<div class=\"login-form\">\n");
      out.write("\t\t\t\t\t\t<h1>Sign In</h1>\n");
      out.write("\t\t\t\t\t\t<h2><a href=\"#\">Create Account</a></h2>\n");
      out.write("                                                <form action=\"VerifyUser\" method=\"post\"> \n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" class=\"text\" value=\"User Name\" name=\"t1\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {this.value = 'User Name';}\" ><a href=\"#\" class=\" icon user\"></a>\n");
      out.write("                                        \n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t<input type=\"password\" value=\"Password\" name=\"t2\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {this.value = 'Password';}\"><a href=\"#\" class=\" icon lock\"></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t <div class =\"forgot\">\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t<input type=\"submit\" onclick=\"myFunction()\" value=\"Sign In\" > <a href=\"#\" class=\" icon arrow\"></a>                                                                                                                                                                                                                                 \n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</form>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<!--//End-login-form-->\n");
      out.write("\t\t\t\t\t<div class=\"ad728x90\" style=\"text-align:center\">\n");
      out.write("\t\t\t\t<script async src=\"//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js\"></script>\n");
      out.write("\t\t\t\t<!-- w3layouts_demo_728x90 -->\n");
      out.write("\t\t\t\t<ins class=\"adsbygoogle\"\n");
      out.write("\t\t\t\t     style=\"display:inline-block;width:728px;height:90px\"\n");
      out.write("\t\t\t\t     data-ad-client=\"ca-pub-9153409599391170\"\n");
      out.write("\t\t\t\t     data-ad-slot=\"8639520288\"></ins>\n");
      out.write("\t\t\t\t<script>\n");
      out.write("\t\t\t\t(adsbygoogle = window.adsbygoogle || []).push({});\n");
      out.write("\t\t\t\t</script>\n");
      out.write("\t\t   </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\t  <!-----start-copyright---->\n");
      out.write("   \t\t\t\t\t<div class=\"copy-right\">\n");
      out.write("\t\t\t\t\t\t<p>Template by <a href=\"http://w3layouts.com\">w3layouts</a></p> \n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t<!-----//end-copyright---->\n");
      out.write("\t\t \t\t\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
