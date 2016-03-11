package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/header.jsp");
  }

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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("\t\t\n");
      out.write("\t\t\n");
      out.write("        <title>E-HEALTH</title>\n");
      out.write("\t\t\n");
      out.write("\t\t\n");
      out.write("\t\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\" />\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"Semantic-UI-1.0/dist/semantic.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/homepage.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/flaticon.css\">\n");
      out.write("\n");
      out.write("        <script src=\"http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.js\"></script>\n");
      out.write("        <script src=\"Semantic-UI-1.0/dist/semantic.js\"></script>\n");
      out.write("        <script src=\"js/homepage.js\"></script>\n");
      out.write("        <script>\n");
      out.write("            $(function () {\n");
      out.write("                $('.ui.card').popup();\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"ui inverted masthead centered segment\" style=\"background-color: #182A73; width: 100%\">\n");
      out.write("            <div class=\"ui page grid\" style=\"background-color: #182A73; width: 100%\">\n");
      out.write("                <div class=\"column\" style=\"background-color: #182A73; width: 100%\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <div class=\"ui secondary pointing menu\" style=\"background-color: #182A73\">\n");
      out.write("                        <a class=\"logo item\" href=\"index.html\">\n");
      out.write("                            <img src=\"images/ehealth-logo.jpeg\" height=\"50\" width=\"70\">\n");
      out.write("                        </a>\n");
      out.write("                        <a class=\"item\" href=\"index.html\">\n");
      out.write("                            <i class=\"flaticon-home\"></i> Home\n");
      out.write("                        </a>\n");
      out.write("                        <a class=\"item\" href=\"aboutus.html\">\n");
      out.write("                            <i class=\"mail icon\"></i> Contact Admin\n");
      out.write("                        </a>\n");
      out.write("                        <a class=\"item\" href=\"http://www.nhp.gov.in/helpline_pg\">\n");
      out.write("                            <i class=\"heart icon\"></i> Emergency Nos.\n");
      out.write("                        </a>\n");
      out.write("                        <div class=\"right menu\">\n");
      out.write("                            <div class=\"item\">\n");
      out.write("                                <div class=\"ui icon input \">\n");
      out.write("                                    <input placeholder=\"Search...\" type=\"text\">\n");
      out.write("                                    <a href=\"search.html\" class=\"inverted circular search link icon\">\n");
      out.write("                                    <i class=\"inverted circular search link icon\"> </i>\n");
      out.write("                                    </a>\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <a class=\"ui item\" href=\"login.html\">\n");
      out.write("                                <!-- Login -->\n");
      out.write("                            </a>  \n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <br><br>\n");
      out.write("\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"stylesheet\" href=\"Semantic-UI-1.0/dist/semantic.min.css\" type=\"text/css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/constant.css\" type=\"text/css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/homepage.css\" type=\"text/css\">\n");
      out.write("         <script src=\"js/jquery-2.1.4.min.js\"></script>\n");
      out.write("          <script src=\"js/constant.js\"></script>\n");
      out.write("         <script src=\"Semantic-UI-1.0/dist/semantic.min.js\"></script>\n");
      out.write("         <link href=\"css/cdn.css\" rel=\"stylesheet\">\n");
      out.write("        <title>E-HEALTH|LOGIN PAGE</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <div class=\"container\">\n");
      out.write("        <div class=\"ui two column middle aligned very relaxed stackable grid\" align=\"center\">\n");
      out.write("            <form method=\"post\" action=\"LoginServlet.do\" onsubmit=\"return true\">\n");
      out.write("            <div class=\"column\">\n");
      out.write("                <div class=\"ui form\">\n");
      out.write("                    <div class=\"field\">\n");
      out.write("                        <label>Username</label>\n");
      out.write("                            <div class=\"ui left icon input\">\n");
      out.write("                                <input type=\"text\" placeholder=\"Username or E-mail ID\" name=\"userName\" value autofocus required pattern=\"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\\.[a-zA-Z0-9-.]+$\" data-error=\"Invalid email address\">\n");
      out.write("                                    <i class=\"user icon\"></i>\n");
      out.write("                            </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"field\">\n");
      out.write("                        <label>Password</label>\n");
      out.write("                            <div class=\"ui left icon input\">\n");
      out.write("                                <input type=\"password\" placeholder=\"Password\" name=\"passWord\" value autofocus required>\n");
      out.write("                                    <i class=\"lock icon\"></i>\n");
      out.write("                            </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!--<div class=\"ui blue submit button\" onclick=\"return true\">Login</div>-->\n");
      out.write("                    <div class=\"col-xs-offset-3 col-xs-9\">\n");
      out.write("                        <input type=\"submit\" class=\"ui positive large button\" name=\"validate\" value=\"Submit\">\n");
      out.write("                        <input type=\"reset\" class=\"ui negative large button\" value=\"Reset\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!--\n");
      out.write("            <div class=\"ui vertical divider\">\n");
      out.write("                Or\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"center aligned column\">\n");
      out.write("                <label> \n");
      out.write("                    Sign Up Using\n");
      out.write("                </label>    <br>\n");
      out.write("                <button class=\"ui facebook button large\">\n");
      out.write("                    <i class=\"facebook icon\"></i>\n");
      out.write("                        Facebook\n");
      out.write("                </button>\n");
      out.write("                <button class=\"ui twitter button large\">\n");
      out.write("                    <i class=\"twitter icon\"></i>\n");
      out.write("                        Twitter\n");
      out.write("                </button>\n");
      out.write("                \n");
      out.write("                <button class=\"ui google plus button large\">\n");
      out.write("                    <i class=\"google plus icon\"></i>\n");
      out.write("                        Google Plus\n");
      out.write("                </button>\n");
      out.write("                \n");
      out.write("                <button class=\"ui vk button large\">\n");
      out.write("                    <i class=\"vk icon\"></i>\n");
      out.write("                    VK \n");
      out.write("                </button>\n");
      out.write("                \n");
      out.write("                &nbsp;&nbsp;\n");
      out.write("                <button class=\"ui linkedin button large\">\n");
      out.write("                    <i class=\"linkedin icon\"></i>\n");
      out.write("                        LinkedIn\n");
      out.write("                </button>\n");
      out.write("                \n");
      out.write("            </div> \n");
      out.write("            -->\n");
      out.write("            </form>\n");
      out.write("        </div>   \n");
      out.write("        </div> \n");
      out.write("        <footer>\n");
      out.write("            <div class=\"ui inverted footer vertical segment center bottom\" style=\" position : absolute;bottom : 0;height: auto;margin-top : 40px; width: 100%;\">\n");
      out.write("                <div class=\"ui stackable center aligned page grid\">\n");
      out.write("                    <div class=\"three column row\">\n");
      out.write("\n");
      out.write("                        <div class=\"column\">\n");
      out.write("                            <h5 class=\"ui inverted header\">Schemes</h5>\n");
      out.write("                            <div class=\"ui inverted link list\">\n");
      out.write("                                <a class=\"item\">Schemes For SC/ST/OBC</a>\n");
      out.write("                                <a class=\"item\">Schemes For The Old</a>\n");
      out.write("                                <a class=\"item\">Schemes for BPL</a>\n");
      out.write("                                <a class='item'> Schemes For Handicapped </a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"column\">\n");
      out.write("                            <h5 class=\"ui inverted header\">Hospitals</h5>\n");
      out.write("                            <div class=\"ui inverted link list\">\n");
      out.write("                                <a class=\"item\">View List</a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <div class=\"column\">\n");
      out.write("                            <h5 class=\"ui inverted header\">Designed By</h5>\n");
      out.write("                            Us!\n");
      out.write("\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("copyright @ content\n");
      out.write("        <br />\n");
      out.write("       \n");
      out.write("        <br />\n");
      out.write("        ");
      out.print( request.getParameter("subTitle"));
      out.write("\n");
      out.write("        <br />\n");
      out.write("        ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.subTitle}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            </footer>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("\n");
      out.write("       \n");
      out.write("    </body>\n");
      out.write("    \n");
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
