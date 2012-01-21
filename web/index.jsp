<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<%@ page  import="java.sql.*" %>



<html xmlns="http://www.w3.org/1999/xhtml">
<head>
        <!-- Design by 
    
    Imal hasaranga Perera
    Another successful project of IJTS
    Sri Lanka
        0778 195095	
     sri Lanka-->
    
     
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>SLNF Disaster Management</title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        
        <link href="styles.css" rel="stylesheet" type="text/css" media="screen" />
        
        <script type="text/javascript" src="jquery-1.3.1.min.js"></script>
        <script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="javascripts/mainjavascript.js"></script>
        
<style type="text/css">
#main #content #left .left_bg .left_grad .categories ul li a em {
	font-size: 16px;
}
#main #content #left .left_bg .left_grad .categories ul li a em {
	font-size: 12px;
}
</style>
    </head>
<body>
        <div id="mainbg">
            <!-- 
            
            Creator: imal hasaranga
            imal.hasaranga@gmail.com
            
            
             -->
             
             <%
            HttpSession ses = request.getSession(false);
            src.Userdetail user = (src.Userdetail) ses.getAttribute("usr");


             %>
             
             
            <div id="header">
                <div style="background:url(images/maintitl.png); height:56px; margin-bottom:5px;">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin:auto">
                        <tr>
                            <td width="648" height="56">&nbsp; &nbsp; &nbsp; <strong>&nbsp;<%if(user != null){ if(user.getAdminorusr()==2){  %> <a href="home.jsp">Admin</a><%} }%> </strong></td>
                            
                            
                            
                            
                            <td width="125" valign="middle">&nbsp;</td>
                            <td width="122" valign="middle">&nbsp;</td>
                            
                            <%
            if (user == null) {

                            %>
                            <td width="52" valign="middle"><form action="signin.jsp"><input type="submit" value="SignIn" style="background-color:#071434; cursor:pointer; color:white;" /></form></td>         
                            <%                            } else {

                            %>
                            <td width="52" valign="middle"><form action="logout"><input type="submit" value="LogOut" style="background-color:#071434; cursor:pointer; color:white;" /></form></td>         
                  <%            }
                            %>
                            <td width="69" valign="middle"><form action="Signup.jsp"><input type="submit" value="SignUp" style="background-color:#071434;  color:white; cursor:pointer;" /></form></td>     
                        </tr>
                        
                    </table>
                </div>
                
                <div class="right_bot" id="logo">
                    
                    
                    <div class="animation" id="gallery">
                        <div align="center" id="titleofthepage">
                        <h1>Disaster Management</h1></div>
                        
                        <a href="#">
                            <img src="images/landslides.jpg"  width="1015px;" height="269"  align="middle" rel="<h3>%%%%</h3> "/>
                        </a>
                        
                        <a href="#">
                            <img src="images/pops.jpg"   width="1015px;" height="269"  align="middle" rel="<h3>$$$$</h3>"/>
                        </a>
                        
                        <a href="#">
                            <img src="images/floods.jpg"   width="1015px;" height="269" align="middle"  rel="<h3>@@@@</h3>"/>
                        </a>
                        
                        <a href="#">
                            <img src="images/2st.jpg"   width="1015px;" height="269" align="middle" rel="<h3>####</h3>"/>
                        </a>
                        <a href="#">
                            <img src="images/waset.jpg"   width="1015px;" height="269" align="middle" rel="<h3>&&&&</h3>"/>
                        </a>
                    </div>
                </div>
                
                
                
            </div>
        </div>
        
        <div id="buttons">
            <ul>
                <li><a href="index.jsp" title="" class="active">Home</a></li>
                <li><a href="Discussions.jsp" title="">Discussions </a></li>
                <li><a href="R&P.jsp" title="" >R &amp; P</a></li>
                <li><a href="Profile.jsp" title="">MyProfile</a></li>
                <li><a href="projects.jsp?proid=null" title="">OurProjects</a></li>
                <li><a href="news.jsp" title="">News</a></li>
            </ul>
        </div>
        
        <!-- header ends -->
        <!-- content begins -->
        <div id="main">
            <div id="content">
                <div id="right">
                    <h2>Research and publications</h2>
                    <div class="right_bg">
                        <div class="right_grad">
                            <div class="categories">
                               <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                   <% 
                                   ResultSet srr = src.DB.getResultset("select publication_typepublication_id,publication_name,publication_typepublication_id from publications where thematic_areasta_id='2' order by date desc limit 6");
                                  while(srr.next()){
                                      if(srr.getInt("publication_typepublication_id") != 8){
                                   %>
  <tr >
    <td width="17%" height="37" valign="middle" align="center" style="border-bottom:2px white solid;"><img src="images/bullet.png" width="15" height="15"/></td>
    <td width="83%" style="border-bottom:2px white solid;"><a href="calculateposition?pubid=<% out.print(srr.getString("publication_typepublication_id")); %>"><% 
            out.print(srr.getString("publication_name"));  
    
    %></a></td>
  </tr>
 
 
 <%}}%>
 
 
                              </table>
                            </div>
                        </div>
                    </div>
                    <div class="right_bot"></div>
                    
                    <h2>Our Projects</h2>
                    <div class="right_bg">
                        <div class="right_grad">
                            <div class="recent">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">


                                    <% ResultSet projects = src.DB.getResultset("select* from project where thematic_areasta_id='2'"); while(projects.next()){ %>
                                    <tr >
    <td width="19%" height="37" valign="middle" align="center" style="border-bottom:2px white solid;"><img src="images/bullet.png" width="15" height="15"/></td>
    <td width="2%" style="border-bottom:2px white solid;">&nbsp;</td>
    <td width="79%" style="border-bottom:2px white solid;"><a href="projects.jsp?proid=<% out.print(projects.getInt("prj_id")); %>"><% out.print(projects.getString("duration")); %></a></td>
  </tr>

         <%  } %>
 
  
 

 
 
 
                              </table>
                            </div>
                        </div>
                    </div>
                    <div class="right_bot"></div>
                    
                    <h2>They are with us</h2>
                    <div class="right_bg">
                        <div class="right_grad">
                            <div class="categories" align="c">
                                <%
            ResultSet rsl = src.DB.getResultset("SELECT user_name,ul_id from user_login ORDER BY RAND() LIMIT 6");



            while (rsl.next()) {

                ResultSet rsl2 = src.DB.getResultset("select name_or_path from image_in_size where user_loginul_id='" + rsl.getString("ul_id") + "' && image_typeit_id='1' ");
                                %>
                                
                                <table width="30%"   height="94" border="0" cellpadding="3" cellspacing="0" style="margin:auto; font-size:10px; line-height:1;"  align="left">
                                    <tr valign="bottom">
                                        <td width="33%" height="60"><img src="<% if (rsl2.next()) {
                                                                out.print(rsl2.getString("name_or_path"));
                                                            }%>" alt="helo" width="60" height="54"/></td>
                                    </tr>
                                    <tr>
                                        <td height="30" align="center"><% out.print(rsl.getString("user_name"));%></td>
                                    </tr>
                                </table>
                                <%

            }

                                %>  
                                
                            </div>
                        </div>
                    </div>
                    <div class="right_bot">
                        
                    </div>
                    
                    
                    <div id="mobile" style="float:left; width:100%; margin-top:10px;"><a>Download Mobile Application</a></div>
                </div>
                
                <div id="left">
                    <h2>Departments</h2>
                    <div class="left_bg">
                        <div class="left_grad">
                            <div class="categories">
                               <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr >
    <td width="16%" height="37" valign="middle" align="center" style="border-bottom:2px white solid;"><img src="images/bullet.png" width="15" height="15"/></td>
    <td width="1%" style="border-bottom:2px white solid;">&nbsp;</td>
    <td width="83%" style="border-bottom:2px white solid;"><a href="#">Land Degradation</a></td>
  </tr>
  <tr>
    <td width="16%" height="33" valign="middle" align="center" style="border-bottom:2px white solid;"><img src="images/bullet.png" width="15" height="15"/></td>
    <td style="border-bottom:2px white solid;">&nbsp;</td>
    <td style="border-bottom:2px white solid;">Waste Management</td>
  </tr>
  <tr>
     <td width="16%" height="33" valign="middle" align="center" style="border-bottom:2px white solid;"><img src="images/bullet.png" width="15" height="15"/></td>
    <td style="border-bottom:2px white solid;">&nbsp;</td>
    <td style="border-bottom:2px white solid;">Persistent Organic Pollutants (POP)</td>
  </tr>
  <tr>
     <td width="16%" height="33" valign="middle" align="center" style="border-bottom:2px white solid;"><img src="images/bullet.png" width="15" height="15"/></td>
    <td style="border-bottom:2px white solid;">&nbsp;</td>
    <td style="border-bottom:2px white solid;">Invasive Plants and Animals</td>
  </tr>
  <tr>
    <td width="16%" height="33" valign="middle" align="center" style="border-bottom:2px white solid;"><img src="images/bullet.png" width="15" height="15"/></td>
    <td style="border-bottom:2px white solid;">&nbsp;</td>
    <td style="border-bottom:2px white solid;">Epidemic Diseases</td>
  </tr>
  <tr>
     <td width="16%" height="33" valign="middle" align="center" style="border-bottom:2px white solid;"><img src="images/bullet.png" width="15" height="15"/></td>
    <td style="border-bottom:2px white solid;">&nbsp;</td>
    <td style="border-bottom:2px white solid;">Land Slide</td>
  </tr>
  <tr>
    <td width="16%" height="33" valign="middle" align="center" ><img src="images/bullet.png" width="15" height="15"/></td>
    <td >&nbsp;</td>
    <td >Floading</td>
  </tr>
 
 
                              </table>

                          </div>
                        </div>
                    </div>
                    
                    <div class="left_bot"></div>
                    
                    <h2>Discussions </h2>
                    <div class="left_bg">
                        <div class="left_grad">
                            <%  try {
                ResultSet rnews = src.DB.getResultset("select* from discussion where thematic_areasta_id='2' && is_active='1' ORDER by discussion_id desc limit 2 ");
                while (rnews.next()) {
                            %>
                            <div class="company" style="border-bottom:2px white solid;">
                                <div class="numleft"><p><%

                                out.print(rnews.getDate("date").getDate());
                                %></p></div>
                                <div class="newsright"><a href="Discustiongoing.jsp?disid=<% out.print(rnews.getString("discussion_id"));%>"><%out.print(rnews.getDate("date"));%></a>
                                    <p><% out.print(rnews.getString("title"));%></p>
                                </div>
                                <div class="read"><a href="Discustiongoing.jsp?disid=<% out.print(rnews.getString("discussion_id"));%>">read more</a></div>
                                <div style="clear: both"></div>
                            </div>
                            
                            <%
                }
            } catch (Exception e) {
                System.out.println(e);
            }

                            %>
                        </div>
                    </div>
                    <div class="left_bot"></div>
                    
                    
                    <h2>Subscribe</h2>
                    <div class="left_bg1">
                        <div class="left_grad">
                            <div class="categories">
                                <br/>
                                <form action="Subscriber" method="post" onsubmit="return userinformation(this);">
                                    <table align="center" width="100%" cellpadding="2" >
                                        <tr>
                                            <td align="center"><input type="text" id="fname1" name="fname" style="width:210px; font-style:italic;" value="First Name" onclick="this.value = ''"/></td>
                                        </tr>
                                        <tr>
                                            <td align="center"><input type="text" id="lname1" name="lname" style="width:210px; font-style:italic;" value="Last Name" onclick="this.value = ''"/></td>
                                        </tr>
                                        <tr>
                                            <td align="center"><input type="text" id="email1" name="email" style="width:210px; font-style:italic;" value="email" onclick="this.value = ''"/></td>
                                        </tr>
                                        <tr>
                                            <td height="48" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#F00;"><%if (request.getParameter("ehave") != null) {
                out.print(request.getParameter("ehave"));
            }%></span><input type="submit" value="submit" style="float:right; margin-right:15px; cursor:pointer;"/></td>
                                      </tr>
                                    </table>
                                </form>
                            </div>
                        </div>
                    </div>
                    
                    <div class="left_bot"></div>
                    
                    
                </div>
                
                
                <div id="center">
                    <h1 id="h11">Welcome 
                      To SLNF Disaster Management
                      <% out.print(user == null ? "" : user.getUsername());%></h1>
                    <div class="text" ><div style="width:525px; max-width:525px;">
                        
                        <% ResultSet aoubt = src.DB.getResultset("select* from global_development_organization where gdo_id='2'");%>
                        
                        <p  id="great1" style="text-align:justify; height:150; overflow:hidden;"><% if(aoubt.next()){ out.print(aoubt.getString("about_us")); }  %></p>
                        <p style="text-align:justify; width:522px;">&nbsp;</p>
                        </div>
                        <br/>
                    </div>
                    <div class="read"><a href="Aboutus.jsp">read more</a></div>
                    
                    <h1 id="h11" align="left">Vibrations<img src="images/wave.gif" width="133" height="26" alt="Vibrations" style="float:right;margin-right:320px;"/></h1>
                    <div class="text">
                        <%
            try {



                ResultSet rs11 = src.DB.getResultset("select* from vibrates where thematic_areasta_id ='2'&& is_active=1 order by vibrate_id desc limit 1");


                if (rs11.next()) {
                    int vibration_id = rs11.getInt("vibrate_id");
                        %>
                        <table width="100%" border="0" cellspacing="0" cellpadding="2" >
                            <tr  >
                                <td width="24%" style="max-height:69px; min-height:0px;"><% if (!rs11.getString("file_path").equals("") && rs11.getString("file_path") != null) {%><img src="<% out.print(rs11.getString("file_path"));%>" alt="hello" hspace="5px;" width="89" height="77" align="left" style="margin-right:5px; "/><% }%>
                                    <p align="justify"> <span style="font-weight:600;"><% out.print(rs11.getString("title"));%></span>&nbsp;&nbsp;&nbsp;<span style="font-size:10px;"><% out.print(rs11.getDate("Date"));%><br /></span><% out.print(rs11.getString("description"));%></p><a id="viewcomments" style="cursor:pointer;"><br/> <p id="view" style="float:right; height:10px; font-size:10px; vertical-align:bottom;">| View Comments</p></a>
                                    
                                </td>
                            </tr>
                            
                        </table>
                        
                        <table id="comment"  width="100%" border="0"  cellpadding="1" cellspacing="0" style="margin-top:2px; text-align:left; display:none;">
                            
                            <%

                                String session1 = user == null ? "" : String.valueOf(user.getLoginid());




                                ResultSet rs = src.DB.getResultset("select* from vibration_comments a where a.vibratesvibrate_id='" + vibration_id + "'");
                                while (rs.next()) {
                                    String image = "";
                                    String data1 = rs.getString("a.comment");
                                    //byte[] bdata = blob.getBytes(1, (int) blob.length());
                                    // data1 = new String(bdata);


                                    ResultSet rs1 = src.DB.getResultset("select* from image_in_size im,user_login ur  where im.user_loginul_id='" + rs.getInt("user_loginul_id") + "'&& im.user_loginul_id=ur.ul_id && image_typeit_id='1' ");

                                    if (rs1.next()) {

                                        image = rs1.getString("name_or_path");

                                    }



                            %>
                            
                            <tr >
                                <td  width="9%" >&nbsp;</td>
                                <td width="12%" valign="top"><img src="<% out.print(image);
                                                                      %>" width="54" height="48" alt="SLNF"  align="top" style="margin-top:5px;"  />
                                    
                                </td>
                                <td width="67%"  style="border-bottom: 1px #999 solid " ><a href="#?nameid=<% out.print(rs1.getString("ur.ul_id"));%>"><%
                                                                out.print(rs1.getString("ur.user_name") + " ");
                                    %></a>
                                    
                                    <% out.print(data1);%>
                                    <br/> <p style="float:left; font-size:10px; height:10px;">Date : <%
                                                                out.print(rs.getDate("a.date"));
                                    %></p><a href="deleteAlertComment?commentid=<%
                                                                out.print(rs.getString("a.vc_id"));
                                             %>"><p style="float:right; font-size:10px; height:10px;"><%

                                                                if (rs1.getString("ur.ul_id").equals(session1)) {
                                            %>Delete<%                                                                    }

                                    %></p></a>
                                </td>
                                
                                <td width="12%" >&nbsp;</td>
                            </tr>
                            
                            <%

                                }




                            %>
                            
                      <%
                                if (!session1.equals("")) {
                            %>
                            <tr>
                                <form method="post" action="commenting?vibrateid=<% out.print(vibration_id);
                                      %>">
                                    <input type="hidden" name="id1" value="<%
                                out.print(session1);
                                           %>"/>
                                    <td></td>
                                    <td  width="12%"></td>
                                    <td>
                                        <br/>
                                        <textarea  name="postsometing" style="width:350px; height:15px; padding-top:3px; resize: none;" onclick="this.style.height='50px'" ></textarea>
                                    </td>
                                    <td valign="top"><br/><input type="submit"  value="comment"style="margin-left:2px; cursor:pointer;"/></td>
                                </form>
                            </tr>
                            
                            <%
                                }
                            }


                            %>
                        </table>
                        
                        
                        
                        
                        
                    </div>
                    <div class="read1"></div>
                    
                    
                    <h1 id="h11"> Latest News ...</h1>
                    <%
                            ResultSet rnews = src.DB.getResultset("select* from news news1,image_for_news newsimag where news1.thematic_areasta_id='2' && news1.is_active='1'&& news1.news_id=newsimag.newsnews_id order by news1.news_id desc limit 1");
                            String news1 = "";
                            if (rnews.next()) {
                                ResultSet rimage1 = src.DB.getResultset("select name_or_path from image_in_size where image_id='" + rnews.getString("newsimag.image_in_sizeimage_id") + "'");

                    %>
                    <div class="text" style="min-height:80px;"  >
                        <% if (rimage1.next()) {
                            if (rimage1.getString("name_or_path") != null && !rimage1.getString("name_or_path").equals("")) {
                        %>
                        <img src="<%out.print(rimage1.getString("name_or_path"));%>" alt="slnf news" width="99" height="76" hspace="10" vspace="12"  style="float:left; margin-right:5px;"/>
                  <%}
                        }%>
                        <p id="news" style="text-align:justify;"><a href="fullnews.jsp?img=<%out.print(rimage1.getString("name_or_path"));%>&id=<%out.print(rnews.getString("news1.news_id"));%>" >
                            <% out.print(rnews.getString("news1.title") );%>
                        </a>&nbsp;&nbsp;&nbsp;&nbsp; <%
                        news1 = rnews.getString("news1.content").length() >= 270 ? rnews.getString("news1.content").substring(0, 270) + "........." : rnews.getString("news1.content");
                        out.print(news1);
                        %>
                    </div>
                    <div class="read"><a href="news.jsp">more news</a></div>                            
                    
                    <%
                            }



                    %>
                </div><div style="clear: both"></div>
                
            </div>
            
            <div id="footer">
                <p align="center"><marquee behavior="scroll" width="800px;"> <strong><% out.print(news1);
                %></strong></marquee></p>
                <p style="font-size:9px;">Copyright © 2010 slnf.org. All Rights Reserved <a href="Aboutus.jsp">| about us |</a></p>
            </div>
            
        </div>
        </div>
        </div>
    <div style="text-align: center; font-size: 0.75em;"></div></body>
    <%
            } catch (Exception e) {
                out.print(e);
            }

    %>
</html>
