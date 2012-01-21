<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page  import="java.sql.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Manage Discussion</title>
    </head>
    
    <body>
        <table width="975" border="1" align="center">
            <tr align="center" style="background:#F0F0F0">
                <td width="185">Date</td>
                <td width="257">Hits</td>
                <td width="511">User Name</td>
            </tr>
            <%

              src.Userdetail useer = (src.Userdetail) request.getSession().getAttribute("usr");

                    if (useer != null) {
                        if (useer.getAdminorusr() == 1) {
                            response.sendRedirect("index.jsp");
                        }
                    }else{

                    response.sendRedirect("index.jsp");
                    }



            try {
                ResultSet rdis = src.DB.getResultset("select* from discussion where  discussion_id= '" + request.getParameter("disid") + "'");
                if (rdis.next()) {

            %>
            <tr align="center">
                <td height="38"><% out.print(rdis.getDate("date"));%></td>
                <td><% out.print(rdis.getInt("hits"));%></td>
                <%
                  ResultSet sr = src.DB.getResultset("select user_name from user_login where ul_id='" + rdis.getString("user_loginul_id") + "'");
                %>
                
                <td><%if (sr.next()) {
                      out.print(sr.getString("user_name"));
                  }%></td>
            </tr>
            <tr align="center">
                <td height="45" colspan="3" style="background:#F0F0F0"><strong>Title</strong></td>
                
            </tr>
            <tr align="center">
                <td height="27" colspan="3"><% out.print(rdis.getString("title"));%></td>
                
            </tr>
            <tr align="center">
                <td height="42" colspan="3" style="background:#F0F0F0"><strong>Description</strong></td>
                
            </tr>
            <tr align="center">
                <td colspan="3"><% out.print(rdis.getString("discussion"));%></td>
                
            </tr>
            <tr align="center" style="background:#F0F0F0">
                <td>&nbsp;</td>
                <td>Des-Comments</td>
                <td><a href="manageDes?disid=<% out.print(request.getParameter("disid"));%>&active=<% out.print(rdis.getInt("is_active"));%>"><% if (rdis.getInt("is_active") == 0) {%>Post<% } else {%>RemovePost<% }%></a></td>
            </tr>
            <%
                }
            } catch (Exception e) {
                out.print(e);
            }
            %>
        </table>
        
        
        <%
            try {
                ResultSet rs3 = src.DB.getResultset("select* from comment where discussiondiscussion_id='" + request.getParameter("disid") + "' && comment_typect_id='1'  ORDER by comment_id desc ");
                
                while (rs3.next()) {
                    ResultSet rs4 = src.DB.getResultset("select* from user_login log, image_in_size image where log.ul_id=image.user_loginul_id && log.ul_id='" + rs3.getString("user_loginul_id") + "' && image.image_typeit_id='1' ");
        %>
        <table width="970" border="0" align="center" cellpadding="0" cellspacing="0"   style="background:url(images/discussionup.png); background-position:top; background-repeat:no-repeat;" >
            <tr >
                <td width="161" height="24" >&nbsp;</td>
                <td width="777" >&nbsp;</td>
                
            </tr>
            <tr>
                <td height="120" style="border-left:1px #CCC solid" valign="top">
                    
                    <table width="171" border="0"  cellpadding="0" cellspacing="0">
                        <tr>
                            <td width="171" height="29" align="center"><%if (rs4.next()) {
             out.print(rs4.getString("log.user_name"));%></td>
                        </tr>
                        <tr>
                            <td height="112" align="center"><img src="<% out.print(rs4.getString("image.name_or_path"));
         }%>" width="114" height="102" alt="" /></td>
                        </tr>
                        <tr>
                            <%
         ResultSet rs5 = src.DB.getResultset("select country_name from country where country_id =(select country_id from user_personal_information where upi_id = (select user_personal_informationupi_id from user_login where ul_id='" + rs3.getString("user_loginul_id") + "') ) ");

                            %>
                            <td height="20" align="center"><%  if (rs5.next()) {
             out.print(rs5.getString("country_name"));
         }%></td>
                        </tr>
                    </table>
                    
                </td>
                
                <td style="border-right:1px #CCC solid" valign="top">
                    <table width="788" border="0">
                        <tr>
                            <td width="264" height="33" style="color:#999; font-style:italic; font-size:11px;" > &nbsp;&nbsp; posted  : 
                            <% out.print(rs3.getDate("date"));%></td>
                            <td width="398">&nbsp;</td>
                            <td width="132" align="right"><% if (true) {%><a href="deleteDescussioncomments?comid=<% out.print(rs3.getString("comment_id"));%>&dsid=<% out.print(request.getParameter("disid"));%>&prio=0"> delete mypost</a>&nbsp;<% }%></td>
                        </tr>
                    </table><p style="max-width:750px;"><% out.print(rs3.getString("comment"));%></p>
                    
                </td>
            </tr>
            <tr style="background:url(images/discussiondown.png); background-position:bottom; background-repeat:no-repeat;">
                <td height="36" style="border-left:1px #CCC solid; color:#999">&nbsp;&nbsp;&nbsp; joind : <% out.print(rs4.getDate("log.date"));%></td>
                
                <td style="border-right:1px #CCC solid" align="right">
         <% out.print(rs3.getString("hits"));%> &nbsp;&nbsp;</td>
            </tr>
        </table>
        <%
                }
            } catch (Exception e) {
                out.print(e);
            }

        %>
        
    </body>
</html>
