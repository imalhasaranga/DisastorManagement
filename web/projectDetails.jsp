<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <%@page import="java.sql.*" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Details</title>
</head>
<%


  src.Userdetail useer = (src.Userdetail) request.getSession().getAttribute("usr");

                    if (useer != null) {
                        if (useer.getAdminorusr() == 1) {
                            response.sendRedirect("index.jsp");
                        }
                    }else{

                    response.sendRedirect("index.jsp");
                    }



%>
<body>
<table width="733" border="1" cellspacing="1" cellpadding="1" align="center">
    <% ResultSet sr = src.DB.getResultset("select* from project where prj_id='"+request.getParameter("proid")+"'"); if(sr.next()){  %>
  <tr>
    <td width="100" height="28" align="center" style="background:#CCC;">Project</td>
  </tr>
  <tr>
      <td height="50"><% out.print(sr.getString("prj_name")); %></td>
  </tr>
  <tr>
    <td height="28" align="center" style="background:#CCC">Description</td>
  </tr>
  <tr>
    <td height="28"><% out.print(sr.getString("abt_prj")); %></td>
  </tr>
  <tr>
    <td height="28" align="center" style="background:#CCC">Cost</td>
  </tr>
  <tr>
    <td height="28"><% out.print(sr.getString("prj_cost")); %></td>
  </tr>
  <tr>
    <td height="28" align="center" style="background:#CCC">Date</td>
  </tr>
  <tr>
    <td height="28"><% out.print(sr.getString("duration")); %></td>
  </tr>
  <tr>
    <td height="28" align="center" style="background:#CCC">OutCome</td>
  </tr>
  <tr>
    <td height="28"><% out.print(sr.getString("prj_outcome")); %></td>
  </tr>
  <tr>
      <td height="28" align="right"><a href="Mangeprojects?para=2&proid=<% out.print(sr.getInt("prj_id")); %>" >Delete Project</a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <% } %>
</table>

</body>
</html>
