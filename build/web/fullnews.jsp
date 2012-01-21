
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
        <%
		 
        try{
        
               ResultSet rs11 = src.DB.getResultset("select* from news where news_id='"+request.getParameter("id")+"'");
               if(rs11.next()){
				   
        %>
        </br> 
    <h1 style="margin-left:10px; color:#00456e; font-size:30px;  margin-top:20px;"><%out.print(rs11.getString("title")); %></h1>
       
       
       
       
       
        
    <table width="77%" border="0" cellpadding="0" cellspacing="0" style="margin-top:35px; float:left;">
 
 
  <tr>
  <td width="0%"></td>
    <td width="100%"   valign="top">
        <%if(!request.getParameter("img").equals("abc")&& !request.getParameter("img").equals("")){%>  <img src="<%out.print(request.getParameter("img"));%>" width="625" height="304" alt="news" style="float:left; margin-right:10px; margin-bottom:5px;" /><%}%><p style="margin-top:-1px;" align="justify">
<% 
out.print(rs11.getString("content"));
%></p>
    
    </td>
   
   <tr>
   
   <td height="72"></td>
   <td>
   <table id="comment"  width="100%" border="0"  cellpadding="1" cellspacing="0" style="margin-top:20px;  text-align:left; background:#EAEAEA; ">
                            
                            <%

                                String session1 = user == null ? "" : String.valueOf(user.getLoginid());



                               
                                ResultSet rs = src.DB.getResultset("select* from news_comments a where a.newsnews_id='" +request.getParameter("id")+ "'");
                                while (rs.next()) {
                                    String image = "";
                                    String data1 = rs.getString("a.comment");
                                  
                                    ResultSet rs1 = src.DB.getResultset("select* from image_in_size im,user_login ur  where im.user_loginul_id='" + rs.getInt("user_loginul_id") + "'&& im.user_loginul_id=ur.ul_id && image_typeit_id='1' ");

                                    if (rs1.next()) {

                                        image = rs1.getString("name_or_path");

                                    }



                            %>
                            
                            <tr >
                                <td  width="2%" height="56"  >&nbsp;</td>
                                
                                <td width="8%" valign="top"><img src="<% out.print(image);                                                                      %>" width="54" height="48" alt="SLNF"  align="top" style="margin-top:3px;"  />
                                    
                              </td >
                                <td width="88%"  style="border-bottom: 1px #999 solid " ><a href="#?nameid=<% out.print(rs1.getString("ur.ul_id"));%>"><%
                                                                out.print(rs1.getString("ur.user_name") + " ");
                                    %></a>
                                    
                                    <% out.print(data1);%>
                                    <br/> <p style="float:left; font-size:10px; height:10px;">Date : <%
                                                                out.print(rs.getDate("a.date"));
                                    %></p><a href="deletenewscomment?commentid=<%
                                                                out.print(rs.getString("a.nc_id"));
                                             %>"><p style="float:right; font-size:10px; height:10px;"><%

                                                                if (rs1.getString("ur.ul_id").equals(session1)) {
                                            %>Delete<%                                                                    }

                                    %></p></a>
                                </td>
                                
                                <td width="2%" >&nbsp;</td>
                            </tr>
                            
                            <%

                                



}
                            %>
                            
                            <%
                                if (!session1.equals("")) {
                            %>
                            <tr>
                                <form method="post" action="newscomments?newscommentsid=<% out.print(request.getParameter("id"));
                                      %>">
                                    <input type="hidden" name="id1" value="<%
                                out.print(session1);
                                           %>"/>
                                    <td></td>
                                    <td  width="8%" valign="middle"  height="20px;"></td>
                                    <td style="margin-bottom:5px;" valign="middle" align="center">
                                        <br/>
                                        <textarea  name="postsometing" style="width:525px; float:left;  height:15px; padding-top:3px; resize: none;" onclick="this.style.height='50px'" ></textarea>
                                    <input type="submit"  value="comment" style="margin-left:2px; float:right; cursor:pointer;"/></td>
                                    <td valign="top"><br/></td>
                                </form>
                            </tr>
                            <tr>
                              <td></td>
                              <td valign="middle"></td>
                              <td style="margin-bottom:5px;" valign="middle" height="22">&nbsp;</td>
                              <td valign="top">&nbsp;</td>
                            </tr>
                            
                            <%
                                }
                            


                            %>
          </table>
          <table width="95%" border="0" cellpadding="0" cellspacing="0" style="float:left; margin-top:5px; min-height:100px;">
      <tr>
       
<td width="91%">

</td>
                <td width="9%">&nbsp;</td>
      </tr>
    </table>
   
   
   </td>
   </tr>
   
 
</table>

<% 
}
 ResultSet rs1 = src.DB.getResultset("select* from news news1 where news1.thematic_areasta_id='2' && news1.is_active='1' ORDER by news1.news_id desc limit 15"); 

%>&nbsp;

<table width="228" border="0" cellpadding="0" cellspacing="0" style="margin-left:5px; margin-top:15px; float:left;" bgcolor="#E3F4F1">
  <tr>
    <td height="35" align="center"><strong>Recent News</strong></td>
  </tr>
 
    <td height="485" valign="top"><%while(rs1.next()){
         ResultSet rimage1 = src.DB.getResultset("select img.name_or_path from image_in_size img, image_for_news news2 where (img.image_id=news2.image_in_sizeimage_id) && newsnews_id='" + rs1.getInt("news1.news_id") + "'");
         
         %>
    <div style="width:100%; min-height:23px; vertical-align:top;  font-size:10px; border-bottom:2px white solid;"><a href="fullnews.jsp?img=<%if(rimage1.next()){out.print(rimage1.getString("img.name_or_path")); }%>&id=<% 
                                                                                            out.print(rs1.getString("news_id"));
    %>" style="text-decoration:none; ">&nbsp;&nbsp;&nbsp;&nbsp;<p style="font-size:10px; margin-left:7px; margin-top:-2px;"><% 
          
     out.print(rs1.getString("title"));
%></p></a></div>
    <%}%>
    </td>
  </tr>
</table>

    
  </div>
    
<% 

}catch(Exception e){
    out.print(e);
}

%>&nbsp;    
    
    
    
    
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
