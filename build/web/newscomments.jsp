<%-- 

    Document   : newscomments
    Created on : Sep 24, 2010, 3:07:24 AM
    Author     : Imal
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page  import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
<table width="595" border="1">
    <tr>
        <td width="585" height="135">&nbsp;</td>
    </tr>
    <tr>
        <td height="223"><table width="735">
        
        <form method="post" action="commenting">
        <%
            int user_id = 1;

//  if (userdetails != null) {

        %>
        <input type="hidden"  name="id" value=<% out.print(user_id);
               %>/>
               <tr>
        <td align="center"><textarea name="postsometing" style="width:600px;"></textarea></td>
    </tr>
    <tr>
        <td align="right" style="padding:1px;"><input type="submit" value="Post Message"/>
            <input type="hidden" name="shopid" value="<%
            //out.print(id);
%>" /></td>
        <%
            //    }
%>
    </tr>
    </form>
    <tr style="padding-bottom:3px;">
        <td width="713" height="85" style="vertical-align:bottom; padding:1px;"  align="center"><%
            // Statement st = src.DB.getmyCon().createStatement();
            //ResultSet rs = st.executeQuery("select* from shopcomments where shopid='" + id + "'");
            // while (rs.next()) {


            %>
            <table width="83%" border="0" cellspacing="0" cellpadding="0" style=" background:#D8D8D8; margin-bottom:3px;" >
                <tr>
                    <td width="9%"  style="background:#FFF; " valign="top"><img src="images/<%
            //  out.print(rs.getString("usrimage"));
%>"  alt="imal" width="46" height="44" style="margin-left:6px;" /></td>
                    <td width="91%" ><p style="margin-left:8px; margin-top:-1px; font:Georgia, 'Times New Roman', Times, serif; font-weight:normal;">
                            <%// out.print(rs.getString("usershopcomment"));
%>
                    </p></td>
                </tr>
                <tr style="border-bottom:3px #FFF solid;">
                    <td  style="border-bottom:1px #FFF solid; background:#FFF;"></td>
                    <%
            try {
                // if (userdetails.getPassword().equals(rs.getString("email"))) {
                if (true) {
                    %>
                    <td style="border-bottom:1px #FFF solid; background:#FFF;"><p style="text-align:right; font-size:9px; vertical-align:top; margin-top:-1px;" ><a id="none" style="text-decoration:none;" href="shopcommentDelete?commentid=<%//out.print(rs.getString("commentid"));%>&amp;shopid=<%// out.print(id);%>"  >Delete</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></td>
                    <%                }
            } catch (Exception e) {
                out.print(e);
            }
                    %>
                </tr>
            </table>
            <%


        //  }
%></td>
    </tr>
</table></td>
</tr>
</table>
</body>
</html>
