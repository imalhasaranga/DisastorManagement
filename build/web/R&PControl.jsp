<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <%@page  import="java.sql.*" %>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>RPControl</title>
        <script type="text/javascript">
        
		
        function showtable(){
			if(document.getElementById('addtable').style.display == 'none'){
				document.getElementById('addtable').style.display='block';
				
				}else{
					
					document.getElementById('addtable').style.display = 'none'
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

        <table width="933" border="1" cellspacing="1" cellpadding="1" align="center">
            <% ResultSet sr = src.DB.getResultset("select* from publications where publication_id='1' "); if(sr.next()){ %>
            <form action="AddRP?para=1" method="post">
            <tr>
                <td width="925px" height="37" align="center"><a style="float:left; color:#00F;" href="home.jsp">HomeAdmin</a><h1>Research and publications</h1></td>
            </tr>
            <tr>
                <td height="202" align="center"><textarea name="resuarch" style="width:740px;; height:180px"><% out.print(sr.getString("description")); %></textarea></td>
            </tr>
            <tr>
                <td align="right"><input type="submit"  value="Change" style="margin-right:100px;"/></td>
            </tr>

            </form>
            <% }%>
            <tr>
                <td height="45"><span style="float:left">Select Division to view R&amp;P documents :&nbsp; &nbsp; &nbsp;
                        <% ResultSet divsion = src.DB.getResultset("select* from publication_type"); %>
                        <select name="division" >
                            <%while(divsion.next()){  %> <option value="<%out.print(divsion.getString("publication_id")); %>"><% out.print(divsion.getString("publication_type")); %></option><% }%>

                        </select>

                    </span>
                    <a href="#"><span style="float:right" onclick="showtable();">Click here to add a new R&P doucment</span></a></td>
            </tr>
            <tr>
                <td align="center" width="932">

                   

                        <table width="920" border="0" cellspacing="0" cellpadding="0" id="addtable"   style="display:none;">
                         <form action="AddRP?para=2" method="post"  enctype="multipart/form-data" >
                        <tr>
                            <td width="920" height="38" align="center">Publication Title : <input type="text" name="pubtitle" style="width:300px;"/>
                             <% ResultSet divsion1 = src.DB.getResultset("select* from publication_type"); %>
                        <select name="divisione" >
                            <%while(divsion1.next()){  %> <option value="<%out.print(divsion1.getString("publication_id")); %>"><% out.print(divsion1.getString("publication_type")); %></option><% }%>

                        </select>

                            </td>
                        </tr>
                        <tr>
                            <td height="31" align="center">Description : </td>
                        </tr>
                        <tr>
                            <td height="51" align="center"><textarea name="pubdesc" style="width:80%; height:180px"></textarea></td>
                        </tr>
                        <tr>
                            <td height="38" align="center">Upload the PDF file : <input type="file" name="filele" value="imageForRP" /></td>
                        </tr>
                        <tr>
                            <td height="36" align="center"><input type="submit" value="Add to site" /></td>
                        </tr>
                        <tr>
                            <td height="36" align="center">&nbsp;</td>
                        </tr>

						           
                    </form>
                    </table>
                            
                 
                </td>
            </tr>
            <tr>
                <td height="41"><table width="930" border="1" cellspacing="1" cellpadding="1">
                        <tr>
                            <td width="529" height="23" align="center">Title</td>
                            <td width="115" align="center">Date</td>
                            <td width="268" align="center">DeleteFile</td>
                        </tr>

                        <% ResultSet sr1 = src.DB.getResultset("select* from publications where thematic_areasta_id='2' "); while(sr1.next()){ if(sr1.getInt("publication_id")!=1){ %>
                        <tr>
                            <td height="23" align="center"><% out.print(sr1.getString("publication_name")); %></td>
                            <td align="center"><% out.print(sr1.getString("date")); %>;</td>
                            <td align="center"><a href="AddRP?para=3&pubid=<% out.print(sr1.getInt("publication_id")); %>">Delete this</a></td>
                        </tr>

                        <%}}%>
                    </table></td>
            </tr>
        </table>


    </body>
</html>
