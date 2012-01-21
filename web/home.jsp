
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page  import="java.sql.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>AdminControl</title>
        <script type="text/javascript">
            var tid1 = ' ';
                
            function Changetable(tid){
                      document.getElementById('tb4').style.display = 'none';                                                  
                if(tid1 != ' '){
                                                                        
                    document.getElementById(tid1).style.display = 'none';
                }
                tid1=tid;
                if( document.getElementById(tid1).style.display=='none'){
                    document.getElementById(tid1).style.display = 'block';
                                                                
                }else{
                    document.getElementById(tid1).style.display = 'none';
                }		
                
                        
                        
            }
                
                
        
        </script>
    </head>
    
    <body>
        
        <%
            src.Userdetail userd = (src.Userdetail) session.getAttribute("usr");
            if (userd == null) {

                response.sendRedirect("signin.jsp");

            } else if (userd.getAdminorusr() == 1) {
                response.sendRedirect("signin.jsp");
            }



        %>
        
        
        <table width="1144" border="1" align="center">
            <tr>
                <td width="1134" height="68" align="center"><p style="font-size:21px;"><strong>Admin Control Panel of Disaster Management</strong></p></td>
            </tr>
            <tr>
                <td height="33" align="center"><a href="index.jsp">Home </a>&nbsp;&nbsp;  <a href="Discussions.jsp">Discssions</a> &nbsp;&nbsp;<a href="R&amp;P.jsp">R&amp;P</a>&nbsp;&nbsp; <a href="Profile.jsp">MyProfile</a> &nbsp;&nbsp;<a href="projects.jsp">OurProjects</a>&nbsp;&nbsp;<a href="news.jsp"> News</a></td>
            </tr>
        </table>
        
        <table width="1142" border="1" align="center">
            
            <tr>
                <td width="200" height="664" valign="top"><table width="200" border="1" align="center">
                        <tr>
                            <td on><a href="#" onclick="Changetable('tb1');">User Settings</a></td>
                        </tr>
                        <tr>
                            <td><a href="#" onclick="Changetable('tb2');">about disaster managemnt</a></td>
                        </tr>
                        <tr>
                            <td><a href="#" onclick="Changetable('tb4');">Manage news</a></td>
                        </tr>
                        <tr>
                            <td><a href="#" onclick="Changetable('tb7');">Manage vibration</a></td>
                        </tr>
                        <tr>
                            <td><a href="#" onclick="Changetable('tb12');">Discussion</a></td>
                        </tr>
                        <tr>
                            <td><a href="newsletter.jsp">Send NewsLetters</a></td>
                        </tr>
                        <tr>
                            <td><a href="R&amp;PControl.jsp">R&amp;P</a></td>
                        </tr>
                        <tr>
                            <td><a href="ProjectsControl.jsp">OurProjects</a></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td width="926" valign="top">
                    
                    
                    <table width="100%" border="1" id="tb1" style="display:none;">
                        <tr align="center">
                            <td >&nbsp; </td>
                            <td width="20%" height="36">first name</td>
                            <td width="23%">last name</td>
                            <td width="18%">username</td>
                            <td width="12%">Making admin or user</td>
                            <td width="15%">remove this usr</td>
                            
                        </tr>
                        <%
            try {
                ResultSet rs33 = src.DB.getResultset("select* from user_role_registration order by user_rolesur_id desc");
                while (rs33.next()) {
                    ResultSet rs22 = src.DB.getResultset(" select* from user_login log, image_in_size image where (log.ul_id= image.user_loginul_id) && log.ul_id='" + rs33.getInt("user_loginul_id") + "' ");
                    if (rs22.next()) {

                        ResultSet rs11 = src.DB.getResultset("select* from subscriber where subscriber_id IN (select subscribersubscriber_id  from user_personal_information where upi_id IN (select user_personal_informationupi_id from user_login where ul_id ='" + rs22.getInt("log.ul_id") + "'))");

                        %>
                        <tr align="center">
                            <td width="12%"><img src="<%
                                    out.print(rs22.getString("image.name_or_path"));
                                    if (rs11.next()) {

                                                 %>" width="63" height="58"/></td>
                            <td height="69"><% out.print(rs11.getString("first_name"));%></td>
                            <td><% out.print(rs11.getString("last_name"));%></td>
                            <td><%}
                                    out.print(rs22.getString("log.user_name"));%></td>
                            
                            <td align="center"><% if (rs33.getInt("user_rolesur_id") == 2) {%><a  href="RemoveUser?prio=makeusr&rolid=<% out.print(rs33.getInt("user_loginul_id"));%>">Admin</a><% } else {%><a  href="RemoveUser?prio=makeadmin&rolid=<% out.print(rs33.getInt("user_loginul_id"));%>">User</a><%  }%></td>
                            <td align="center"><% if (rs33.getInt("is_active") == 1) {%><a href="RemoveUser?prio=deact&rolid=<% out.print(rs33.getInt("user_loginul_id"));%>">DeActivateUser</a><%} else {%><a href="RemoveUser?prio=act&rolid=<% out.print(rs33.getInt("user_loginul_id"));%>">ActivateUser</a><% }%></td>
                            
                        </tr>
                        <%
                    }
                }
            } catch (Exception e) {
                out.print(e);
            }
                        %>
                    </table>
                    <table width="100%" border="1" id="tb2" style="display:none;">
                        <form action="aboutDisastorManagent" method="post">
                            <tr align="center">
                                <td width="16%">Registration no</td>
                            </tr>
                            <tr>
                                <td height="34" align="center"><input type="text" name="reginub" /></td>
                            </tr>
                            <tr>
                                <td align="center">Vision</td>
                            </tr>
                            <tr>
                                <td height="110" align="center"><textarea name="vision" style="width:800px; height:100px;"></textarea></td>
                            </tr>
                            <tr>
                                <td align="center">Mision</td>
                            </tr>
                            <tr>
                                <td align="center"><textarea name="mission" style="width:800px; height:100px;"></textarea></td>
                            </tr>
                            <tr>
                                <td align="center">About_us</td>
                            </tr>
                            <tr>
                                
                                <td align="center"><textarea name="abtus" style="width:500px; height:100px;" ></textarea></td>
                            </tr>
                            <tr>
                                <td><input type="submit" style="float:right;"/></td>
                            </tr>
                        </form>
                    </table>
                    <%try{%>  
                     <table width="100%" border="1" cellpadding="0" cellspacing="0" id="tb4"  >
                         <%@ include file="imprort.jsp" %>
                  
                     </table>
                    
                    <table width="100%" border="1" id="tb7" style="display:none">
                        <tr align="center">
                            <td width="13%" height="25">Image</td>
                            <td width="47%">Title</td>
                            <td width="22%">Date</td>
                            <td width="18%">Status</td>
                          </tr>   
                            <%
                             ResultSet rs12 = src.DB.getResultset("select* from vibrates where thematic_areasta_id ='2' order by vibrate_id desc ");

                          while(rs12.next()){  
                            
                            %>
                       
                      
                        <tr align="center">
                            <td width="13%" height="52"><img src="<% out.print(rs12.getString("file_path")); %>" width="111" height="56"/></td>
                            <td width="47%"><a href="Mangevibrates.jsp?vibid=<% out.print(rs12.getInt("vibrate_id")); %>"><% out.print(rs12.getString("title")); %></a></td>
                            <td width="22%"><% out.print(rs12.getDate("date")); %></td>
                            <td width="18%"><% out.print(rs12.getInt("is_active")==1? "Posted" : "Pending"); %></td>
                        </tr>
                        <%}%>
                    </table>
                    <table width="100%" border="1" id="tb12" style="display:none"> 
  <tr align="center">
    <td width="69%">Title</td>
    <td width="15%">Date</td>
    <td width="16%">Status</td>
    </tr>
    <%
     ResultSet rdis = src.DB.getResultset("select* from discussion where thematic_areasta_id='2'  ORDER by discussion_id desc");
     while(rdis.next()){
    %>
  <tr align="center">
      <td><a href="ManageDiscussion.jsp?disid=<% out.print(rdis.getInt("discussion_id"));%>"><% out.print(rdis.getString("title")); %></a></td>
      <td><% out.print(rdis.getDate("date")); %></td>
      <td><% out.print(rdis.getInt("is_active")==1 ? "Posted" : "Pending"); %></td>
    </tr>
    
    <%}%>
                  </table>

                        <%
            } catch (Exception e) {

                out.print("fddddddddddddddddddddddddddddddddddddddddddddddddddddd"+e);
            }


                        %>
      
                </td>
            </tr>
        </table>
    </body>
</html>
