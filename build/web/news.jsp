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
    
    <link rel="stylesheet" href="newsjquey/themes1/base/jquery.ui.all.css">
    <script src="newsjquey/jquery-1.4.2.js"></script>
    <script src="newsjquey/jquery.bgiframe-2.1.1.js"></script>
    <script src="newsjquey/jquery.ui.core.js"></script>
    <script src="newsjquey/jquery.ui.widget.js"></script> 
    <script src="newsjquey/jquery.ui.position.js"></script>
    <script src="newsjquey/jquery.ui.resizable.js"></script>
    <script src="newsjquey/jquery.ui.dialog.js"></script>
    <!--below jqueryis can be removed --> 
    <script src="newsjquey/jquery.ui.mouse.js"></script>
     <script src="newsjquey/jquery.ui.draggable.js"></script>
    <script src="newsjquey/jquery.effects.core.js"></script>
    <script src="newsjquey/jquery.effects.blind.js"></script>
   
    
    <script type="text/javascript">
        // increase the default animation speed to exaggerate the effect
        function displaymessage(a,b)
        {
        if(b=='abc'){
            document.getElementById('image11').style.display = "none";

            
        }else {
			document.getElementById('image11').src=b;
			document.getElementById('image11').style.display = "block";

			
			}
            document.getElementById('content1').innerHTML = document.getElementById(a).innerHTML;
            
        }


        
        // increase the default animation speed to exaggerate the effect
        $.fx.speeds._default = 1000;
        $(function() {
            $( "#dialog" ).dialog({
                autoOpen: false,
                show: "blind",
                hide: "explode"
            });

            $( ".opener" ).click(function() {
                $( "#dialog" ).dialog( "open" );
                return false;
            });
        });
        
    </script>
    
    
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
        #main #content #center1 h1 {
            font-style: italic;
            font-size: 60px;
        }
        #main #content h1 {
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


<!-- content begins -->
<div id="main">
    <div id="content">
        </br> 
        <h1 style="margin-left:10px; color:#00456e; font-size:50px; font-style:italic; margin-top:20px;">News....</h1>
        <div class="demo">
            
            
            
            
            
        </div><!-- End demo -->

            
         
        
        <table width="94%" border="1" cellpadding="1" cellspacing="1" align="center"> 
            
            
            
            
            <%
            ;
            //ResultSet r=s.executeQuery("select * from logint ");

            int pages = 1;
            ResultSet r1 = src.DB.getResultset("SELECT count(*) FROM news "); //Paging table

            while (r1.next()) {
                pages = r1.getInt(1);
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


                ResultSet rnews = src.DB.getResultset("select* from news news1 where news1.thematic_areasta_id='2' && news1.is_active='1' ORDER by news1.news_id desc limit " + currentRs + ",10");
                int x = 0;
                while (rnews.next()) {
                    String news1 = rnews.getString("news1.content");
                    ResultSet rimage1 = src.DB.getResultset("select img.name_or_path from image_in_size img, image_for_news news2 where (img.image_id=news2.image_in_sizeimage_id) && newsnews_id='" + rnews.getInt("news1.news_id") + "'");
                    x = ++x;
                    String k = "abc";
            %>
            <tr height="23%">
                <td>&nbsp;</td>
                <td width="83%"></td>
                <td></td>
            </tr>
            <tr >
                <td  width="7%"  align="center" height="112" valign="top" ></td>
                <td style="border-bottom:2px #747474 solid; "  valign="top"><% if (rimage1.next()) { if(!rimage1.getString("img.name_or_path").equals("")){%><img src="<%
    k = rimage1.getString("img.name_or_path");
     out.print(k);
			
                                                                                                               %>" width="164" height="119" style="float:left; margin-right:10px; margin-left:0px; " /><%}else{ k = "abc";} }%>
                    <p align="justify" style="height:110px; overflow:hidden; "  id="<% out.print(x + "abc");%>"><a href="fullnews.jsp?img=<%=k%>&id=<%=rnews.getInt("news1.news_id")%>" >
                            <%
                                out.print(rnews.getString("news1.title"));



                            %>
                            
                        </a>&nbsp;&nbsp;&nbsp;&nbsp; <%

                                out.print(news1/*news1.length() > 400 ? news1.substring(0, 400) + "........" : news1*/);
                    %></p>
                    
                    
                    
                    
                    
                    <button  class="opener"  style="float:right; background:#FFF;  cursor:pointer;  color:#00456e; " onclick="displaymessage('<% out.print(x + "abc");%>','<% out.print(k);%>')"  >Read within the page</button>
                </td >
                
                
                
                
                <td style="border-bottom:2px #747474 solid; " width="10%" align="center"><% out.print(rnews.getDate("news1.Date"));
                %></td>
            </tr>
            
            
            
            
            
            <%
                }

            } catch (Exception e) {
                out.print(e);
            }


            %>
        </table>
        
        
        
        
        <div id="dialog" >
            <img  width="673" height="258" id="image11"  style="float:left; margin-bottom:10px;"/>
            <p id="content1" style="padding-bottom:10px;" align="justify"></p>
            
            
            
            
        </div><!-- End demo -->

        
        
        
        
        <center> <div style="top:20px; margin-top:20px;">pages 
                <%
            int p;
            for (p = 1; p < (cPage - 1); p++) {%>
                <a href="news.jsp?mv=<%=p%>"><%=p%></a> | 
                <%}%>
                
        </div></center>
    </div>
    
    
    
    
    
    
</div><div style="clear: both"></div>
</div>

<div id="footer">
    <p align="center"></p>
    <p style="font-size:9px;">Copyright © 2010 slnf.org. All Rights Reserved <a href="Aboutus.jsp">| about us |</a></p>
</div>

</div>
</div>
</div>
<div style="text-align: center; font-size: 0.75em;"></div></body>
</html>
