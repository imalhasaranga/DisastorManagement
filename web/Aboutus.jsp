<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<%@ page import="java.sql.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <!-- Design by

       Imal hasaranga Perera
	0778 195095	
        sri Lanka-->
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>SLNF Disaster Management</title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link href="AboutUs.css" rel="stylesheet" type="text/css" media="screen" />

        <script type="text/javascript" src="jquery-1.3.1.min.js"></script>




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
    </head>
    <body>
        <%

                    HttpSession ses = request.getSession(false);
                    src.Userdetail user = (src.Userdetail) ses.getAttribute("usr");


        %>
        <div id="mainbg">
            <!-- 

            Creator: imal hasaranga
            imal.hasaranga@gmail.com


            -->
            <div id="header">
                <div style="background:url(images/maintitl.png); height:56px; margin-bottom:5px;">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin:auto">
                        <tr>
                            <td width="654" height="56">&nbsp;</td>




                            <td width="124" valign="middle">&nbsp;</td>
                            <td width="121" valign="middle">&nbsp;</td>
                            <%
                                        if (user == null) {

                            %>
                            <td width="52" valign="middle"><form action="signin.jsp"><input type="submit" value="SignIn" style="background-color:#071434; cursor:pointer; color:white;" /></form></td>         
                            <%                                                        } else {

                            %>
                            <td width="52" valign="middle"><form action="logout"><input type="submit" value="LogOut" style="background-color:#071434; cursor:pointer; color:white;" /></form></td>         
                            <%                                        }
                            %>
                            <td width="65" valign="middle"><form action="Signup.jsp"><input type="submit" value="SignUp" style="background-color:#071434;  color:white; cursor:pointer;" /></form></td>
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
                <% try {
                                        ResultSet rs1 = src.DB.getResultset("select* from global_development_organization where gdo_id='2'");%>
                <% if (rs1.next()) {%>
                <div id="center">

                    <h1 id="d" style="text-decoration:none">Why  SLNF Disaster management ????</h1>
                    <br/>
                    <p style="text-align:justify"><% out.print(rs1.getString("about_us"));%></p><br />
                    <br/>
                    <h1>Our Vision</h1>
                    <br/>
                    <p style="text-align:justify"><% out.print(rs1.getString("vision"));%></p>
                    <br/>
                    <h1>Our mission</h1>
                    <br/>
                    <p style="text-align:justify"><% out.print(rs1.getString("mission"));%></p><br/><br/>
                </div>
                <%}
                                  } catch (Exception e) {
                                      out.print(e);
                                  }%>
            </div>

            <div id="footer">
                <p align="center"></p>
                <p style="font-size:9px;">Copyright © 2010 slnf.org. All Rights Reserved. </p>

            </div>

        </div>
        </div>
        </div>
        <div style="text-align: center; font-size: 0.75em;"></div></body>
</html>
