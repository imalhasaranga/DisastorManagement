<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <%@page  import="java.sql.*" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>

 <script type="text/javascript">
        
		
        function showtable(){
			if(document.getElementById('t11').style.display == 'none'){
				document.getElementById('t11').style.display='block';
				
				}else{
					
					document.getElementById('t11').style.display = 'none'
					}
			
			
			}
        
        
        </script>

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
<table width="1001" border="1" align="center" cellpadding="1" cellspacing="1">

  <tr>
    <td height="104" colspan="3" align="center"><a href="home.jsp" style="float:left">AdminHome</a>SLNF Projects</td>
    
  </tr>
  <tr>
    <td height="30" colspan="3" align="right" ><a href="#" onclick="showtable();" >AddProject</a>&nbsp;&nbsp;</td>
    
  </tr>
  <tr>
    <td  colspan="3" >


        <table width="977" border="1" cellspacing="1" cellpadding="1" align="center" id="t11"  style="display:none;">
            <form action="Mangeprojects?para=3" method="post">
      <tr>
        <td width="969" height="23" align="center" style="background:#CCC;">Project</td>
      </tr>
      <tr>
        <td height="40" align="center"><input type="text" name="projname"  style="width:800px;"/></td>
      </tr>
      <tr>
        <td height="24" align="center" style="background:#CCC">Description</td>
      </tr>
      <tr>
        <td height="221" align="center"><textarea name="description" style="width:600px; height:200px;"></textarea></td>
      </tr>
      <tr>
        <td height="28" align="center" style="background:#CCC">Cost</td>
      </tr>
      <tr>
        <td height="28" align="center"><input type="text" name="cost" />
        &nbsp;&nbsp; /= (use only nubers)</td>
      </tr>
      <tr>
        <td height="23" align="center" style="background:#CCC">Date</td>
      </tr>
      <tr>
        <td height="28" align="center"><input type="text" name="date"/> (use an one standerd to fill date)</td>
      </tr>
      <tr>
        <td height="23" align="center" style="background:#CCC">OutCome</td>
      </tr>
      <tr>
        <td height="111" align="center"><textarea name="description2" style="width:600px; height:100px;"></textarea></td>
      </tr>
      <tr>
        <td height="28" >
        
        <select name="iscomp" style="float:left">
        <option value="1">Finished</option>
        <option value="0">InProgress</option>
        
        </select>
        
        <input type="submit" style="float:right" />&nbsp;&nbsp;&nbsp;&nbsp;</td>
      </tr>
            </form>
    </table></td>
    
  </tr>
  <tr>
    <td width="449" height="26" align="center">Project</td>
    <td width="90" align="center">Date</td>
    <td width="446" align="center">Status</td>
  </tr>
  <%  ResultSet srr = src.DB.getResultset("select* from project where thematic_areasta_id='2'");  while(srr.next()){ %>
  <tr>
      <form action="Mangeprojects?para=1" method="post">
          <td height="38" align="center"><a href="projectDetails.jsp?proid=<% out.print(srr.getInt("prj_id")); %>"><% out.print(srr.getString("prj_name")); %></a></td>
      <td align="center"><% out.print(srr.getString("duration")); %></td>
      <td align="center"><input type="submit" value="<% out.print(srr.getInt("iscompleted")==1? "Finished" : "InProgress"); %>" /></td>
      <input type="hidden" value="<% out.print(srr.getInt("iscompleted")); %>" name="iscomp"/>
      <input type="hidden" value="<% out.print(srr.getInt("prj_id")); %>" name="proid"/>

      </form>
  </tr>

  <% } %>
</table>

</body>
</html>
