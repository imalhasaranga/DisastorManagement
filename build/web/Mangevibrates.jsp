<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page  import="java.sql.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ManageVibrates</title>
</head>

<body>
<table width="1000" border="1" align="center">
  <tr align="center"> 
    <td width="234" height="32"><strong>date</strong></td>
    <td width="172"><strong>hits</strong></td>
    <td width="214"><strong>User Ip</strong></td>
    <td width="166"><strong>country</strong></td>
    <td width="180"><strong>city</strong></td>
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

  
  try{
  
  ResultSet rs = src.DB.getResultset("select* from vibrates where vibrate_id='"+request.getParameter("vibid")+"'");
  
  if(rs.next()){
    ResultSet place = src.DB.getResultset("select* from city  where city_id='"+rs.getInt("citycity_id")+"' ");
     ResultSet coutnry = src.DB.getResultset("select* from country  where country_id='"+rs.getInt("countrycountry_id")+"' ");
  %>
  
  
   <tr align="center"> 
       <td height="49"><% out.print(rs.getDate("date")); %></td>
       <td><% out.print(rs.getString("hits")); %></td>
    <td><% out.print(rs.getString("user_ip")); %></td>
    <td><%if(place.next()){ out.print(place.getString("city_name")); }%></td>
    <td><%if(coutnry.next()){ out.print(coutnry.getString("country_name")); }%></td>
  </tr>
  <tr align="center">
    <td height="29" colspan="5"><strong>Title</strong></td>
     
   
  </tr>
  <tr align="center">
      <td colspan="5"><% out.print(rs.getString("title")); %></td>
   
  </tr>
  <tr align="center">
    <td height="35" colspan="5"><strong>Description</strong></td>
    
  </tr>
  <tr align="center">
      <td colspan="5"><% out.print(rs.getString("description")); %></td>
   
  </tr >
  <tr align="center">
    <td height="30" colspan="5"><strong>Image</strong></td>
    
  </tr>
  <tr align="center">
      <td colspan="5"><% if(!rs.getString("file_path").equals("")){ %><img src="<% out.print(rs.getString("file_path")); %>" width="607" height="298" /><% }else{ out.print("no image"); } %></td>
   
  </tr>
  <tr align="center">
      <td align="center"><a href="home.jsp">AdminHome</a></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><a href="#">Comments</a></td>
    <td ><a href="manageVibrates?vibid=<% out.print(request.getParameter("vibid")); %>&&active=<% out.print(rs.getInt("is_active")); %>"><% out.print(rs.getInt("is_active")==1 ? "Remove Vibrate" : "Post Vibrate"); %></a></td>
  </tr>
  <%
  }
  }catch(Exception e){
  
  out.print(e);
  }
  
  %>
</table>



  <table  width="995" border="1" align="center"  cellpadding="0" cellspacing="0" id="comment" style="margin-top:2px; text-align:left;" >
                            
                            <%

                               




                                ResultSet rs = src.DB.getResultset("select* from vibration_comments a where a.vibratesvibrate_id='" +request.getParameter("vibid")+ "'");
                                while (rs.next()) {
                                    String image = "";
                                    String data1 = rs.getString("a.comment");
                                    

                                    ResultSet rs1 = src.DB.getResultset("select* from image_in_size im,user_login ur  where im.user_loginul_id='" + rs.getInt("user_loginul_id") + "'&& im.user_loginul_id=ur.ul_id && image_typeit_id='1' ");

                                    if (rs1.next()) {

                                        image = rs1.getString("name_or_path");

                                    }



                            %>
                            
                            <tr>
                                <td  width ="3%" >&nbsp;</td>
                                <td width="8%" height="77" valign="top"><img src="<% out.print(image);
                                                                      %>" width="80" height="62" alt="SLNF"  align="top" style="margin-top:5px;"  />
                                    
                                </td>
                              <td width="88%"  style="border-bottom: 1px #999 solid " ><a href="#?nameid=<% out.print(rs1.getString("ur.ul_id"));%>"><%
                                                                out.print(rs1.getString("ur.user_name") + " ");
                                    %></a>
                                    
                                    <% out.print(data1);%>
                                    <br/> <p style="float:left; font-size:10px; height:10px;">Date : <%
                                                                out.print(rs.getDate("a.date"));
                                    %></p><a href="deleteAlertComment?commentid=<%
                                                                out.print(rs.getString("a.vc_id"));
                                                                %>&vibid=<% out.print(request.getParameter("vibid")); %>"><p style="float:right; font-size:10px; height:10px;"> Delete</p></a>
                                </td>
                                
                                <td width="1%" >&nbsp;</td>
                            </tr>
                            
                            <%

                                }

%>
                      
  </table>






</body>
</html>
