
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page  import="java.sql.*" %>
<%@ page  import="java.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!-- Design by 
    
    Imal hasaranga Perera
        0778 195095	
     sri Lanka-->
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>Discussions </title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <link href="Discussions.css" rel="stylesheet" type="text/css" media="screen" />
    
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
                    <%                    } else {

                    %>
                    <td width="52" valign="middle"><form action="logout"><input type="submit" value="LogOut" style="background-color:#071434; cursor:pointer; color:white;" /></form></td>         
                    <%            }
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
        <div id="left">
            <h2>&nbsp;</h2>
            <div class="left_bg">
                <div class="left_grad">
                    <div class="categories">
                        <ul>
                            <li ><input type="text" name="search" value="Search Post" style="width:170px; font-style:italic; margin-top:10px;  " onclick="this.value=''" />&nbsp;<input type="submit" value="Search"  style="cursor:pointer;"/><br/> </li>
                            <li><a href="PostDiscussion.jsp">Create Discussion</a></li>
                            <li><a href="#">My Posts</a></li>
                            <li><a href="#">Recently Commented My Posts</a></li>
                            <li><strong>Departments -Vise</strong></li>
                            <li style="margin-left:15px;"><img src="images/l2.gif" alt="bult" width="30" height="14"/><a href="#"> Land Slide</a> </li>
                            <li style="margin-left:15px;"><img src="images/l2.gif" alt="bult" width="30" height="14"/><a href="#"> Persistent organic pollutants </a> </li>
                            <li style="margin-left:15px;"><img src="images/l2.gif" alt="bult" width="30" height="14"/><a href="#"> Land Slide</a> </li>
                            <li style="margin-left:15px;"><img src="images/l2.gif" alt="bult" width="30" height="14"/><a href="#"> Land Slide</a> </li>
                            <li style="margin-left:15px;"><img src="images/l2.gif" alt="bult" width="30" height="14"/><a href="#"> Land Slide</a>  </li>  <li style="margin-left:15px;"><img src="images/l2.gif" alt="bult" width="30" height="14"/><a href="#"> Land Slide</a>  </li>
                            
                            
                        </ul>
                    </div>
                </div>
            </div>
            
            <div class="left_bot"></div>
            
            <h2>Discussions </h2>
            <div class="left_bg">
                <div class="left_grad">
                      <%  try{
                            ResultSet rnews1 = src.DB.getResultset("select* from discussion where thematic_areasta_id='2' && is_active='1' ORDER by discussion_id desc limit 2 ");
                            while(rnews1.next()){
                            %>
                            <div class="company">
                                <div class="numleft"><p><% 
                                
                                out.print(rnews1.getDate("date").getDate()); 
                                        %></p></div>
                                <div class="newsright"><a href="Discustiongoing.jsp?disid=<% out.print(rnews1.getString("discussion_id")); %>"><%out.print(rnews1.getDate("date"));%></a>
                                    <p><% out.print(rnews1.getString("title")); %></p>
                                </div>
                                <div class="read"><a href="Discustiongoing.jsp?disid=<% out.print(rnews1.getString("discussion_id")); %>">read more</a></div>
                                <div style="clear: both"></div>
                            </div>
                           
                           <% 
                           }
                           }catch(Exception e){
                           System.out.println(e);
                           }
                           
                           %>
                        
                    </div>
                    
                </div>
            </div>
            <div class="left_bot"></div>
        </div>
        
        
        <div id="center">
            
            <table  border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="743" height="112" valign="middle"></br><img src="images/discussion.jpg" alt="discussion" width="80" height="75" style="float:left"/><h2 style="color: #00456e;"></br>
                   
                    <h2 style="color: #00456e;">&nbsp;</h2>
                    <h2 style="color: #00456e;"><span style="float:left; margin-left:5px;" >Recent Topics</span></h2></td>
                </tr>
            </table>
            
      <table width="97%" border="0" cellspacing="0" cellpadding="0">
                <%

            int pages = 1;
            ResultSet r1 = src.DB.getResultset("SELECT count(*) FROM discussion "); //Paging table

            while (r1.next()) {
                pages = r1.getInt(1);
            }
            int cPage;
            cPage = (pages / 13) + 1;
            if ((cPage * 13) + 1 >= pages) {
                cPage++;
            }
            int cpages;
            int currentRs;
            String pt = request.getParameter("mv");

            if (pt == null) {
                currentRs = 0;
            } else {
                cpages = Integer.parseInt(pt);
                currentRs = 13 * (cpages - 1);

            }






            try {

            int x = 0;
                ResultSet rnews = src.DB.getResultset("select* from discussion where thematic_areasta_id='2' && is_active='1' ORDER by discussion_id desc limit " + currentRs + ",13");
                while (rnews.next()) {
                
                %>
                <tr style="border:1px black solid;">
                    <td width="6%" height="48" align="center"  valign="middle"><% out.print(++x); %></td>
                    <td width="5%"><img src="images/topic.jpg" alt="topic" width="30" height="26"/></td>
                    <td width="62%" valign="middle"><a href="Discustiongoing.jsp?disid=<% out.print(rnews.getString("discussion_id")); %>" style="text-decoration:none"><% out.print(rnews.getString("title")); %></a></td>
                    <td width="14%" align="center" valign="middle" ><% out.print(rnews.getDate("Date")); %></td>
                    <td width="13%" align="center" valign="middle" style="font-size:10px; height:10px;"><%
                    
                    ResultSet srr = src.DB.getResultset("select user_name from user_login where ul_id ='"+rnews.getString("user_loginul_id")+"'");
                    if(srr.next()){
                    out.print(srr.getString("user_name"));} %></td>
              </tr>
                <%                }
            } catch (Exception e) {

                out.print(e);
            }



                %>
            </table>
             <center> <div style="top:20px; margin-top:20px;">pages 
                <%
            int p;
            for (p = 1; p < (cPage - 1); p++) {%>
                <a href="news.jsp?mv=<%=p%>"><%=p%></a> | 
                <%}%>
                
        </div></center>
            
        </div><div style="clear: both"></div>
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
