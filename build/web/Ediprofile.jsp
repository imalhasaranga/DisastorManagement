<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<%@ page  import="java.sql.*" %>
<%@ page  import="java.*" %>


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
        
        <link href="Prifile.css" rel="stylesheet" type="text/css" media="screen" />
        
        <script type="text/javascript" src="jquery-1.3.1.min.js"></script>
        <script type="text/javascript" src="jquery.js"></script>
        
        <script type="text/javascript">
            $(document).ready(function(){
                $("#viewcomments").click(function(){
                    $("#comments").slideToggle("slow");
                });
            });
        </script>
        
        
        <script type="text/javascript">
            function rollOver(id){
                document.getElementById(id).src = 'images/'+id+'_on.png';
                
            }
            function rollOut(id){
                document.getElementById(id).src = 'images/'+id+'_off.png';
            }
        
        
            $(document).ready(function() {		
        
                slideShow();

            });

            function slideShow() {

                // Methana Value Venas karala Balanna as U Wish	
                $('#gallery a').css({opacity: 0.0});
        
                $('#gallery a:first').css({opacity: 1.0});
        
                $('#gallery .caption').css({opacity: 0.7});
        
                $('#gallery .caption').css({width: $('#gallery a').find('img').css('width')});
                
                $('#gallery .content').html($('#gallery a:first').find('img').attr('rel'))
                .animate({opacity: 0.7}, 400);
        
                // Image Time eke mathanata set Karanna milisecond
                setInterval('gallery()',3000);
        
            }

            function gallery() {
        
                var current = ($('#gallery a.show')?  $('#gallery a.show') : $('#gallery a:first'));

                var next = ((current.next().length) ? ((current.next().hasClass('caption'))? $('#gallery a:first') :current.next()) : $('#gallery a:first'));	
        
                var caption = next.find('img').attr('rel');	
        
                next.css({opacity: 0.0})
                .addClass('show')
                .animate({opacity: 1.0}, 1000);

                current.animate({opacity: 0.0}, 1000)
                .removeClass('show');
        
                $('#gallery .caption').animate({opacity: 0.0}, { queue:false, duration:0 }).animate({height: '1px'}, { queue:true, duration:300 });	
        
                $('#gallery .caption').animate({opacity: 0.7},100 ).animate({height: '100px'},500 );
        
                $('#gallery .content').html(caption);
        
        
            }

            function subOn(id){
                document.getElementById(id).className = "sub_on";
        
            }

            function subOff(id){
                document.getElementById(id).className = "sub_off";
        
            }

        </script>
        <style type="text/css">
            #main #content #center .text table tr td {
                color: #565649;
            }
            #main #content #center .text table {
                color: #960;
            }
            #main #content #center h2 {
                color: #00456e;
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

            src.Userdetail user = null;
            int loginid = 0;
            int userpersonal = 0;
            if ((src.Userdetail) session.getAttribute("usr") == null) {
                response.sendRedirect("signin.jsp");

            } else {
                user = (src.Userdetail) session.getAttribute("usr");
                loginid = user.getLoginid();
                userpersonal = user.getUsr_personal_id();
            }




            Statement st = null;


             %>
             
             
            <div id="header">
                <div style="background:url(images/maintitl.png); height:56px; margin-bottom:5px;">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin:auto">
                        <tr>
                            <td width="648" height="56">&nbsp;</td>
                            
                            
                            
                            
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
                <div id="left">
                    <h2>MyProfile</h2>
                    <div class="left_bg">
                        <div class="left_grad">
                            <div class="categories">
                                
                                
                                <br />
                                <table width="141" height="135" border="1" cellpadding="1" cellspacing="1"  style="margin-right:auto; margin-left:auto;">
                                    <%
            try {
                st = src.DB.getmyCon().createStatement();
                ResultSet rs = st.executeQuery("select* from subscriber a, user_personal_information b where (a.subscriber_id=b.subscribersubscriber_id) && b.upi_id='" + userpersonal + "' ");
                if (rs.next()) {

                    String email = rs.getString("a.email");
                    String biday = rs.getString("b.dob");
                    int cityid = rs.getInt("citycity_id");
                    String firstname = rs.getString("a.first_name");
                    String lastname = rs.getString("a.last_name");

                    ResultSet rsl2 = st.executeQuery("select name_or_path from image_in_size where user_loginul_id='" + user.getLoginid() + "'");

                                    %>
                                    
                                    
                                    <tr>
                                        <td width="175" height="162"><%
                                            if (rsl2.next()) {
                                            %> <img src="<%
                                                out.print(rsl2.getString("name_or_path"));
                                                    %>" alt="imalhasarnaga" width="175" height="162"/><%
                                            } else {
                                            %> <img src="images/nouser.jpg" alt="imalhasarnaga" width="175" height="162"/><%                                        }

                                        %></td>
                                    </tr>
                                </table>
                                
                            </div>
                            <p><a href="#" style="float:right; margin-right:6px;">Edit profile</a></p>
                            <p>&nbsp;</p>
                            </br>
                            </br>
                        </div>
                    </div>
                    
                    <div class="left_bot"></div>
                    
                    <h2>&nbsp;</h2>
                    <div class="left_bg">
                        <div class="left_grad">
                            <div class="company">
                                <div style="clear: both"><ul>
                                        <li>Post Vibrate</li>
                                        <li>Post Discussion</li>
                                        <li>Post Artical</li>
                                        <li>Post Artical</li>
                                        <li>Suggest news</li>
                                        <li>view Galary</li>
                                        
                                </ul></div>
                                
                            </div>
                            
                        </div>
                    </div>
                    <div class="left_bot"></div>
                    
                    
                    
                </div>
                
                
                <div id="center">
                    <h1><% out.print(firstname);%> <% out.print(lastname);%>                        </h1>
                    <div class="text">
                        <br/>
                        
                        
                        <%


                                            ResultSet rs1 = st.executeQuery("select city_name from city where city_id='" + cityid + "'");



                        %>
                        <table width="729" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td width="156" height="30"><span style="text-align:justify; color: #565649;">&nbsp;&nbsp;&nbsp;&nbsp;Birthday</span></td>
                                <td width="557">: <%out.print(biday);%>  </td>
                            </tr>
                            <tr>
                                <td height="28"><span style="text-align:justify; color: #565649;">&nbsp;&nbsp;&nbsp;&nbsp;City</span></td>
                                <td>: <%  if (rs1.next()) {
                                                out.print(rs1.getString("city_name"));
                                            }%> </td>
                            </tr>
                            <tr>
                                <td height="27"><span style="text-align:justify; color: #565649;">&nbsp;&nbsp;&nbsp;&nbsp;email</span></td>
                                <td>: <%out.print(email);%></td>
                            </tr>
                        </table>
                        <%
                }
            } catch (Exception e) {
                out.print(e);
            }

                        %>
                        <p style="text-align:justify;">&nbsp;</p>
                    </div>
                    
                    
                    
                    
                    
                    
                </div>
                <div id="center">
                    <h2>&nbsp;</h2>
                    <h2>New to network</h2>
                    <div class="text1">
                        <br/>
                        
                        <%  try {
                ResultSet rs22 = st.executeQuery(" select* from user_login log, image_in_size image where (log.ul_id= image.user_loginul_id) order by log.ul_id desc limit 5");
                while (rs22.next()) {
                        %>
                        <table width="729" border="0" cellpadding="0" cellspacing="0" style="border-bottom:1px #999 solid; margin-top:3px;">
                            
                            <tr>
                                <td width="93" height="65"><span style="text-align:justify; color: #565649;"><img src="<% out.print(rs22.getString("image.name_or_path"));%>" alt="<% out.print(rs22.getString("image.alt_tag"));%>" width="82" height="59" style="margin-left:5px;"/></span></td>
                                <td width="636">
                                    <table width="615" border="1" >
                                        <tr>
                                            <td width="585">&nbsp;&nbsp;&nbsp;<% out.print(rs22.getString("user_name"));%> </td>
                                            <td width="14">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td height="32"><p style="float:right; height:5px;">Joind : 
                                            <% out.print(rs22.getDate("date"));%></p></td>
                                            <td>&nbsp;</td>
                                        </tr>
                                </table></td>
                            </tr>
                            
                        </table>
                        <%
                }
            } catch (Exception e) {
                out.print(e);
            }
                        %>
                        <p style="text-align:justify;">&nbsp;</p>
                    </div>
                    
                    
                    
                    
                    
                    
                </div>
                
                <div style="clear: both"></div>
            </div>
            
            <div id="footer">
                <p align="center"><marquee behavior="scroll" width="800px;"> <strong>sri Lanka government has put a brave desition on donating to the worlds first javaworld congress</strong></marquee></p>
                <p style="font-size:9px;">Copyright © 2010 slnf.org. All Rights Reserved <a href="Aboutus.jsp">| about us |</a></p>
            </div>
            
        </div>
        </div>
        </div>
    <div style="text-align: center; font-size: 0.75em;"></div></body>
</html>
