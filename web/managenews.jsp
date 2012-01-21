
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page  import="java.sql.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Managenews</title>
    </head>

    <body>
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


                        ResultSet rnews = src.DB.getResultset("select* from news news1 where news1.thematic_areasta_id='2'&& news1.news_id='" + request.getParameter("nid") + "'  ORDER by news1.news_id desc ");

                        if (rnews.next()) {






        %>


        <table width="1030" height="404" border="1" align="center">
            <form action="newshandling">
                <tr>
                    <td valign="top" align="center">
                        <table width="100%" border="1" id="tb3" style="display:block;">
                            <tr align="center">
                                <td width="14%">image</td>
                                <td width="8%">date</td>
                                <td width="11%">meta-tag</td>
                                <td width="11%">meta-description</td>
                                <td width="11%">h1</td>
                                <td width="11%">h2</td>
                                <td width="12%">h3</td>
                                <td width="11%">Post this news(active or not)</td>
                                <td width="11%">User name</td>
                            </tr>
                            <tr align="center">

                                <td height="85"><%if (!request.getParameter("imgs").equals("")) {%>
                                    <img src="<%out.print(request.getParameter("imgs"));%>" width="105" height="92"/>
                                    <%}%></td>

                                <td><% out.print(rnews.getDate("news1.date"));%></td>
                                <td><textarea name="meta" style="width:100px;; height:110px;"><% out.print(rnews.getString("news1.meta_tag"));%></textarea></td>
                                <td><textarea name="metadesc" style="width:100px;; height:110px;"><% out.print(rnews.getString("news1.meta_description"));%></textarea></td>
                                <td><textarea name="h1" style="width:100px;; height:110px;"><% out.print(rnews.getString("news1.h1_tag"));%></textarea></td>
                                <td><textarea name="h2" style="width:100px;; height:110px;"><% out.print(rnews.getString("news1.h2_tag"));%></textarea></td>
                                <td><textarea name="h3" style="width:100px;; height:110px;"><% out.print(rnews.getString("news1.h3_tag"));%></textarea></td>
                                <input type="hidden" name="prio" value="<% out.print(rnews.getInt("is_active") == 1 ? "0" : "1");%>"/>
                                <input type="hidden" name="nwid" value="<% out.print(rnews.getInt("news1.news_id"));%>"/>

                                <td><input type="submit" value="<% out.print(rnews.getInt("is_active") == 1 ? "Remove" : "Post");%>" /></td>
                                <%
                                                    ResultSet usr = src.DB.getResultset("select user_name from user_login where ul_id='" + rnews.getString("news1.user_loginul_id") + "'");
                                %>
                                <td ><%if (usr.next()) {
                                                    out.print(usr.getString("user_name"));
                                                }%></td>
                            </tr>
                            <tr align="center">
                                <td height="70" colspan="9"><p>&nbsp;</p>
                                    <p><strong>title :-</strong>
                                        <% out.print(rnews.getString("news1.title"));%>
                                    </p>
                                    <p>&nbsp;</p></td>

                            </tr>
                            <tr align="center">
                                <td height="46" colspan="9"><p>&nbsp;</p>
                                    <p><strong>Content :- </strong>
                                        <% out.print(rnews.getString("news1.content"));%>
                                    </p>
                                    <p>&nbsp;</p>
                                    <p>&nbsp;</p>
                                    <p>&nbsp;</p>
                                    <p>&nbsp; </p></td>

                            </tr>
                            <tr align="center">

                            </tr>
                        </table>
                        <p>&nbsp;      </p>
                        <p>
                            <%if (!request.getParameter("imgs").equals("")) {%>
                            <img src="<%out.print(request.getParameter("imgs"));%>" width="628" height="320"/>
                            <%}%>
                        </p>
                        <p>&nbsp;</p></td>
                </tr>
            </form>
        </table>

        <%
                        }
                    } catch (Exception e) {
                        out.print(e);

                    }
        %>

        <table  width="1030" border="0" align="center"  cellpadding="1" cellspacing="0" id="comment" style="margin-top:2px;  text-align:left; background:#E1E1E1; ">

            <%






                        ResultSet rs = src.DB.getResultset("select* from news_comments a where a.newsnews_id='" + request.getParameter("nid") + "'");
                        while (rs.next()) {
                            String image = "";
                            String data1 = rs.getString("a.comment");

                            ResultSet rs1 = src.DB.getResultset("select* from image_in_size im,user_login ur  where im.user_loginul_id='" + rs.getInt("user_loginul_id") + "'&& im.user_loginul_id=ur.ul_id && image_typeit_id='1' ");

                            if (rs1.next()) {

                                image = rs1.getString("name_or_path");

                            }



            %>

            <tr >
                <td  width="3%" height="77"  >&nbsp;</td>

                <td width="8%" valign="top"><img src="<% out.print(image);%>" width="54" height="48" alt="SLNF"  align="top" style="margin-top:3px;"  />

                </td >
                <td width="85%"  style="border-bottom: 1px #999 solid " ><a href="#?nameid=<% out.print(rs1.getString("ur.ul_id"));%>"><%
                                                    out.print(rs1.getString("ur.user_name") + " ");
                        %></a>

                    <% out.print(data1);%>
                    <br/> <p style="float:left; font-size:10px; height:10px;">Date : <%
                                                        out.print(rs.getDate("a.date"));
                        %></p><a href="deletenewscomment?commentid=<%
                                                        out.print(rs.getString("a.nc_id"));
                               %>&prio=<%out.print(request.getParameter("nid"));%>"><p style="float:right; font-size:10px; height:10px;">Delete</p></a>
                </td>

                <td width="4%" >&nbsp;</td>
            </tr>

            <%





                        }
            %>



        </table>
    </body>
</html>
