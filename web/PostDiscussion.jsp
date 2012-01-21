
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
   
        <link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.8.1/build/fonts/fonts-min.css" />
        <link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.8.1/build/editor/assets/skins/sam/simpleeditor.css" />
        <script type="text/javascript" src="http://yui.yahooapis.com/2.8.1/build/yahoo-dom-event/yahoo-dom-event.js"></script>
        <script type="text/javascript" src="http://yui.yahooapis.com/2.8.1/build/element/element-min.js"></script>
        <script type="text/javascript" src="http://yui.yahooapis.com/2.8.1/build/container/container_core-min.js"></script>
        <script type="text/javascript" src="http://yui.yahooapis.com/2.8.1/build/editor/simpleeditor-min.js"></script>
        <script>

            (function() {
                var Dom = YAHOO.util.Dom,
                Event = YAHOO.util.Event;

                var myConfig = {
                    height: '300px',
                 width: '600px',
                    dompath: true,
                    animate: true,
                    focusAtStart: true,
                    handleSubmit:true
                };

                YAHOO.log('Create the Editor..', 'info', 'example');
                var myEditor = new YAHOO.widget.SimpleEditor('editor', myConfig);
                myEditor.render();

            })();
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
        #main #center table tr td span {
            color: #00456e;
        }
    </style>
</head>
<body>
<%

            HttpSession ses = request.getSession(false);
            src.Userdetail user = (src.Userdetail) ses.getAttribute("usr");
            if (user == null) {

                response.sendRedirect("signin.jsp");
            }
            String usrnnowid = user == null ? "" : String.valueOf(user.getLoginid());

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
                            <li><a href="#">Create Discussion</a></li>
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
                    <%  try {
                ResultSet rnews1 = src.DB.getResultset("select* from discussion where thematic_areasta_id='2' && is_active='1' ORDER by discussion_id desc limit 2 ");
                while (rnews1.next()) {
                    %>
                    <div class="company">
                        <div class="numleft"><p><%

                        out.print(rnews1.getDate("date").getDate());
                        %></p></div>
                        <div class="newsright"><a href="Discustiongoing.jsp?disid=<% out.print(rnews1.getString("discussion_id"));%>"><%out.print(rnews1.getDate("date"));%></a>
                            <p><% out.print(rnews1.getString("title"));%></p>
                        </div>
                        <div class="read"><a href="Discustiongoing.jsp?disid=<% out.print(rnews1.getString("discussion_id"));%>">read more</a></div>
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
        </div>
        <div class="left_bot"></div>
    </div>
    
    
    <div id="center">
        
        <table width="96%" border="0" cellspacing="0" cellpadding="0">
           
                <tr style="border:1px black solid;">
                    <td width="6%" height="47" align="left"  valign="middle"><span style="color:#00456e; font-size: 16px; font-weight: bold;">Disaster Management &gt; Discussions&gt;Post Discussions</span></td>
                </tr >
                <tr><td align="center">
                <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td  class="yui-skin-sam">
       
        <form method="post" action="CreateDiscussion" id="form1">
            <p>
              <input type="text" value="Title" name="disid" style="width:350px; border:#999 1px ridge;" onclick="this.value=''"/>
              &nbsp;&nbsp;&nbsp;&nbsp;
              <select style="width:120px; border:#999 1px ridge;">
                <option></option>
              </select>
              '</p>
            <p> <br/>
              <textarea id="editor" name="gotservlet" rows="20" cols="75" style="margin-top:20px;">

                    </textarea>
              <input type="submit" value="Submit" style="border:1px #666 ridge;  margin-top:5px; float:right;"/>
              <input type="hidden" value="<%
            out.print(usrnnowid);
                           %>" name="uid" />
            </p>
        </form>
        </td>
    </tr>
        </table>
        </tr>
        </td>
        </table>
        </br>
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
