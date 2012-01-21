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
        
        <link href="R&P.css" rel="stylesheet" type="text/css" media="screen" />
        
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
            HttpSession ses = request.getSession(false);
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
                    <h2>Research and publications</h2>
                    <div class="left_bg">
                        <div class="left_grad">
                            <div class="categories">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <% ResultSet topics = src.DB.getResultset("select * from publication_type ");

            while (topics.next()) {
                if (topics.getInt("publication_id") != 8) {%>
                                    <tr >
                                        <td width="16%" height="37" align="center" valign="middle" style="border-bottom:2px white solid;"><img src="images/bullet.png" width="15" height="15"/></td>
                                        <td width="2%" style="border-bottom:2px white solid;">&nbsp;</td>
                                        <td width="82%" style="border-bottom:2px white solid;"><a href="R&Pcontent.jsp?id=<% out.print(topics.getString("publication_id"));%>&nam=<% out.print(topics.getString("publication_type"));%>" ><%=topics.getString("publication_type")%></a></td>
                                    </tr>
                                    <%}
            }%>
                                </table>
                                
                            </div>
                        </div>
                    </div>
                    
                    <div class="left_bot"></div>
                    
                    <h2>Search publication</h2>
                    <div class="left_bg">
                        <div class="left_grad">
                            <div class="company">
                                <div style="clear: both">
                                    <table width="228" border="0" cellspacing="0" cellpadding="0">
                                       
                                       <form action="R&PSearchdetails.jsp">
                                           
                                       <tr>
                                            <td width="29" height="31">&nbsp;</td>
                                            <td width="199" style="border-bottom:2px #97B8DF ridge" ><strong>Search by</strong></td>
                                        </tr>
                                        
                                        <tr>
                                            <td height="41">&nbsp;</td>
                                            <td>
                                                
                                                Title  <input type="radio" name="title"  id="rad1" checked value="a"  /> 
                                     &nbsp;&nbsp;&nbsp;Content 
                                     <input type="radio" name="title"  id="rad2"  value="b"  />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="66">&nbsp;</td>
                                            <td>
                                            <textarea name="textsearch" id="textsearch"  style="height:100%; width:200px;"></textarea></td>
                                        </tr>
                                        <tr>
                                            <td height="35">&nbsp;</td>
                                            <td align="right"><input type="submit" name="serach" id="serach" value="Search" /></td>
                                        </tr>
                                        
                                    </form>
                                    
                                    </table>
                                    
                                </div>
                                
                            </div>
                            
                        </div>
                    </div>
                    <div class="left_bot"></div>
                    
                    
                    
                </div>
                
                
                <% 
                
                
                
                
                
                
                 int pages = 1;
            ResultSet r1 = src.DB.getResultset("SELECT count(*) FROM publications "); //Paging table

            while (r1.next()) {
                pages = r1.getInt(1);
            }
            int cPage;
            cPage = (pages / 8) + 1;
            if ((cPage * 8) + 1 >= pages) {
                cPage++;
            }
            int cpages;
            int currentRs;
            String pt = request.getParameter("mv");

            if (pt == null) {
                currentRs = 0;
            } else {
                cpages = Integer.parseInt(pt);
                currentRs = 8 * (cpages - 1);

            }
                
                
                
                
                
                %>
                
                <% ResultSet sr = src.DB.getResultset("select* from publications where publication_typepublication_id='" + request.getParameter("id") + "' ORDER by publication_id desc limit " + currentRs + ",8 ");%>
            
                <div id="center">
               
               <h1><%int x=0; out.print(request.getParameter("nam"));%></h1>
                    <div class="text">
                        <table width="729" border="0" cellspacing="0" cellpadding="0"  >
                           <% while(sr.next()) {
                           if(sr.getInt("publication_typepublication_id") != 8){
                               %>
                           
                           <tr>
                                <td width="52" height="46" align="center"><%=++x%></td>
                                <td width="60" align="center"><img src="images/pdf.jpg" width="23" height="35" alt="" /></td>
                                <td width="342" align="left"><%out.print(sr.getString("publication_name")); %></td>
                                <td width="127" align="center"><% out.print(sr.getDate("date")); %></td>
                                <td width="148" align="center"><a href="filedownload?filename=<%out.print(sr.getString("publication_name")); %>.pdf">Download File</a></td>
                            </tr>
                            
                            <tr style="border-bottom:#DCE1F8">
                                
                                <td height="44" colspan="5" align="justify"><p><strong>Content : </strong><% out.print(sr.getString("description")); %></p></td>
                                
                            </tr>
                             <%}}%>
                        </table>




                         <center>
                             <div style="top:20px; margin-top:20px;">pages
                <%
            int p;
            for (p = 1; p < (cPage - 1); p++) {%>
                <a href="news.jsp?mv=<%=p%>"><%=p%></a> | 
                <%}%>
                
        </div>
                         </center>
                        
                    </div>
                    
                    
                   
                    
                    
                  
                </div>
                <div style="height:10px;"></div>
            </div>
            
            <div id="footer">
                <p align="center"></p>
                <p style="font-size:9px;">Copyright © 2010 slnf.org. All Rights Reserved <a href="Aboutus.jsp">| about us |</a></p>
            </div>
            
        </div>
       
    <div style="text-align: center; font-size: 0.75em;"></div></body>
</html>
