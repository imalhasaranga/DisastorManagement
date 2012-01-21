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

        <link href="Projects.css" rel="stylesheet" type="text/css" media="screen" />

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
    </head>
    <body>
        <div id="mainbg">
            <!-- 

            Creator: imal hasaranga
            imal.hasaranga@gmail.com


            -->

            <%
                        HttpSession ses = request.getSession();
                        src.Userdetail user = (src.Userdetail) ses.getAttribute("usr");
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
                            <%                                                        } else {

                            %>
                            <td width="52" valign="middle"><form action="logout"><input type="submit" value="LogOut" style="background-color:#071434; cursor:pointer; color:white;" /></form></td>         
                            <%                                        }
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
                    <h2>Project Dates</h2>
                    <div class="left_bg">
                        <div class="left_grad">
                            <div class="categories">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <%

                                                ResultSet srr = src.DB.getResultset("select duration,prj_id from project where thematic_areasta_id='2' order by prj_id desc limit 12");
                                                while (srr.next()) {


                                    %>
                                    <tr >
                                        <td width="16%" height="37" align="center" valign="middle" style="border-bottom:2px white solid;"><img src="images/bullet.png" alt="d" width="15" height="15"/></td>
                                        <td width="84%" style="border-bottom:2px white solid;"><a href="projects.jsp?proid=<% out.print(srr.getString("prj_id"));%>">
                                                <%
                                                                                      out.print(srr.getString("duration"));

                                                %>
                                            </a></td>
                                    </tr>
                                    <%}%>
                                </table>
                            </div>
                        </div>
                    </div>

                    <div class="left_bot"></div>
                </div>


                <div id="center">
                    <h1>Projects Going On</h1>
                    <div class="text">


                        <table width="734" border="0" cellspacing="0" cellpadding="0">
                            <%
                            ResultSet details = null;
                            if(request.getParameter("proid").equals("null")){
                                         details = src.DB.getResultset("select* from project where thematic_areasta_id='2'&& prj_id=(select MAX(prj_id) from project where thematic_areasta_id='2') ");
                                      }else{
                                         details = src.DB.getResultset("select* from project where thematic_areasta_id='2'&& prj_id='" + request.getParameter("proid") + "' order by prj_id desc limit 12");

                                        }
                                        if (details.next()) {
                            %>

                            <tr>
                                <td width="734" height="34"><p><strong>Project :</strong>&nbsp; <% out.print(details.getString("prj_name"));%></p></td>
                            </tr>
                            <tr>
                                <td height="41"><strong>Project Description :</strong> &nbsp; <% out.print(details.getString("abt_prj"));%></td>
                            </tr>
                            <tr>
                                <td height="48"><strong>Project Cost :</strong> &nbsp; <% out.print(details.getString("prj_cost"));%></td>
                            </tr>
                            <tr>
                                <td height="37"><strong>Date  :</strong> &nbsp; <% out.print(details.getString("duration"));%></td>
                            </tr>
                            <tr>
                                <td height="37"><strong>Outcome of the Project :</strong> &nbsp; <% out.print(details.getString("prj_outcome"));%> </td>
                            </tr>
                            <tr>
                                <td height="37" align="right"><strong>Status</strong>&nbsp; <% out.print(details.getString("iscompleted").equals("1") ? "Successfully Finished" : "In Progress");%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            </tr>

                            <%}%>
                        </table>
                        <p  id="great1" style="text-align:justify;">&nbsp;</p>
                        <p style="text-align:justify;">&nbsp;</p>


                    </div>


                    <br/>
                    <br/>



                </div>
            </div>

            <div id="footer">
                <p align="center"></p>
                <p style="font-size:9px;">Copyright © 2010 slnf.org. All Rights Reserved <a href="Aboutus.jsp">| about us |</a></p>
            </div>

        </div>

        <div style="text-align: center; font-size: 0.75em;"></div></body>
</html>
