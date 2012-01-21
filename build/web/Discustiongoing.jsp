
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
    <link href="discussiongoin.css" rel="stylesheet" type="text/css" media="screen" />
    
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
                    height: '250px',
                 width: '700px',
                    dompath: true,
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
        <div id="center">
            
            <table width="970" border="0" cellspacing="0" cellpadding="0">
                <tr >
                    <td width="471" height="54" valign="middle" ></br><h2 style="color: #00456e;"></br>
                        
                        <h2 style="color: #00456e;">Disaster Management &gt; Discussions</h2>
                    <h2 style="color: #00456e;">&nbsp;</h2></td>
                </tr>
            </table>
            <%





            String usrnnowid = user == null ? "" : String.valueOf(user.getLoginid());
            String discussioid = request.getParameter("disid");





            int pages = 1;
            ResultSet r11 = src.DB.getResultset("SELECT count(*) FROM comment where discussiondiscussion_id='" + discussioid + "'  "); //Paging table

            while (r11.next()) {
                pages = r11.getInt(1);
            }
            int cPage;
            cPage = (pages / 10) + 1;
            if ((cPage * 10) + 1 >= pages) {
                cPage++;
            }
            int cpages;
            int currentRs;
            String pt = request.getParameter("mv");

            if (pt == null) {
                currentRs = 0;
            } else {
                cpages = Integer.parseInt(pt);
                currentRs = 10 * (cpages - 1);

            }












            try {
                ResultSet r1 = src.DB.getResultset("select* from discussion where discussion_id='" + discussioid + "'  ");
                if (r1.next()) {
                    ResultSet r2 = src.DB.getResultset("select* from user_login log, image_in_size image where log.ul_id=image.user_loginul_id && log.ul_id='" + r1.getString("user_loginul_id") + "' && image.image_typeit_id='1' ");
                    if (r2.next()) {
            %>      
            <table width="970" border="0" cellpadding="0" cellspacing="0">
                <tr >
                    <td height="69" colspan="5"  align="center"><span style="font-size:16px; font-weight:bold;"><% out.print(r1.getString("title"));%></span></td>
                    
                </tr>
                <tr >
                    <td  colspan="5" ><p align="jutify" style="text-align:justify;"><% out.print(r1.getString("discussion"));%></p></td>
                    
                </tr>
                <tr>
                    
                    <td width="172" height="51" style="border-bottom:1px #999 solid;"><% out.print(r1.getDate("date"));%></td>
                    <td width="73" style="border-bottom:1px #999 solid;"><b>hits : <% out.print(r1.getString("hits"));%></b></td>
                    <td width="495" style="border-bottom:1px #999 solid;"><% if (!usrnnowid.equals(r2.getString("log.ul_id"))) {%><a href="likes?dsid=<% out.print(discussioid);%>&prio=1">like</a><% }%></td>
                    <td width="157" style="border-bottom:1px #999 solid;" align="right"><span style="font-weight:600;">by : &nbsp; <% out.print(r2.getString("log.user_name"));%> </span>&nbsp;&nbsp;</td>
                    <td width="73" style="border-bottom:1px #999 solid; padding:5px;" align="center"><img src="<% out.print(r2.getString("image.name_or_path"));%>" width="53" height="38"/></td>
                </tr>
            </table>
            &nbsp;
            <%
                    }
                }
                ResultSet rs3 = src.DB.getResultset("select* from comment where discussiondiscussion_id='" + discussioid + "' && comment_typect_id='1'  ORDER by comment_id desc limit " + currentRs + ",10");
                while (rs3.next()) {
                    ResultSet rs4 = src.DB.getResultset("select* from user_login log, image_in_size image where log.ul_id=image.user_loginul_id && log.ul_id='" + rs3.getString("user_loginul_id") + "' && image.image_typeit_id='1' ");
            %>
            <table width="970" border="0" cellpadding="0" cellspacing="0"   style="background:url(images/discussionup.png); background-position:top; background-repeat:no-repeat;" >
                <tr >
                    <td width="161" height="24" >&nbsp;</td>
                    <td width="777" >&nbsp;</td>
                    
                </tr>
                <tr>
                    <td height="120" style="border-left:1px #CCC solid" valign="top">
                        
                        <table width="171" border="0"  cellpadding="0" cellspacing="0">
                            <tr>
                                <td width="171" height="29" align="center"><%if (rs4.next()) {
                        out.print(rs4.getString("log.user_name"));%></td>
                            </tr>
                            <tr>
                                <td height="112" align="center"><img src="<% out.print(rs4.getString("image.name_or_path"));
                    }%>" width="114" height="102" alt="" /></td>
                            </tr>
                            <tr>
                                <%
                    ResultSet rs5 = src.DB.getResultset("select country_name from country where country_id =(select country_id from user_personal_information where upi_id = (select user_personal_informationupi_id from user_login where ul_id='" + rs3.getString("user_loginul_id") + "') ) ");

                                %>
                                <td height="20" align="center"><%  if (rs5.next()) {
                        out.print(rs5.getString("country_name"));
                    }%></td>
                            </tr>
                        </table>
                        
                    </td>
                    
                    <td style="border-right:1px #CCC solid" valign="top">
                        <table width="788" border="0">
                            <tr>
                                <td width="264" height="33" style="color:#999; font-style:italic; font-size:11px;" > &nbsp;&nbsp; posted  : 
                                <% out.print(rs3.getDate("date"));%></td>
                                <td width="398">&nbsp;</td>
                                <td width="132" align="right"><% if (rs3.getString("user_loginul_id").equals(usrnnowid)) {%><a href="deleteDescussioncomments?comid=<% out.print(rs3.getString("comment_id"));%>&dsid=<% out.print(discussioid);%>"> delete mypost</a>&nbsp;<% }%></td>
                            </tr>
                        </table><p style="max-width:750px;"><% out.print(rs3.getString("comment"));%></p>
                        
                    </td>
                </tr>
                <tr style="background:url(images/discussiondown.png); background-position:bottom; background-repeat:no-repeat;">
                    <td height="36" style="border-left:1px #CCC solid; color:#999">&nbsp;&nbsp;&nbsp; joind : <% out.print(rs4.getDate("log.date"));%></td>
                    
                    <td style="border-right:1px #CCC solid" align="right"><span style="float:left;"><%  if (!rs3.getString("user_loginul_id").equals(usrnnowid)) {%><a href="likes?dsid=<% out.print(discussioid);%>&prio=2&comid=<% out.print(rs3.getString("comment_id"));%>">like</a></span>hits : <%}
                    out.print(rs3.getString("hits"));%> &nbsp;&nbsp;</td>
                </tr>
            </table>
            <%
                }
            } catch (Exception e) {
                out.print(e);
            }

            %>
            
                &nbsp;
                <% if(user != null){ %>
                 <table width="970" border="0" cellpadding="0" cellspacing="0">
            
            
            
            
            
            <tr>
                <td class="yui-skin-sam" align="center">
                    <form method="post" action="addpostfor_discussion" id="form1"> 
                    <input type="hidden" name="did" value="<%=discussioid%>"/>
                    <input type="hidden" name="uid" value="<%=usrnnowid%>"/>
                    
                    <textarea id="editor" name="hello" rows="20" cols="75"> 
                    </textarea> 
                    <input type="submit" value="submit" style="float:right; margin-right:190px; margin-top:15px; border:1px #999 ridge;"/>
                    </form> 
                </td>
            </tr>
            
            <tr>
                <td height="42">
                    
                </td>
            </tr>
            
            
            
            
            
        </table>    
            <% }%>
            
            
            
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
