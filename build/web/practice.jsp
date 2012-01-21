<%-- 
    Document   : practice
    Created on : Jan 2, 2011, 11:13:03 PM
    Author     : Imal
--%>





<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
   

    <body>
        <%
        if(session.getAttribute("usr") ==null)
            out.print("Please login before going to this page");

               try {
                               ResultSet rs = src.DB.getResultset("select* from country ");



        %>

        <select style="width:100px; height:30px; " >
            <% while(rs.next()){ %>
            <option><% out.print(rs.getString("country_name")); %></option>
            <% } %>
        </select>
        <%

  } catch (Exception e) {
                               out.print(e);
                           }
%>
       <form action="passcheck" method="post">
    <input type="text" name="user"/>
    <br/>
    <input type="password" name="pass"/>
    <br/>
    <input type="submit" value="login"/>
    </form>
    </body>
</html>
