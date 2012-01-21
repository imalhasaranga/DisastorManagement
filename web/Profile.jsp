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
        
        <link href="Prifile.css" rel="stylesheet" type="text/css" media="screen" />
        
        <script type="text/javascript" src="jquery-1.3.1.min.js"></script>
        <script type="text/javascript" src="jquery.js"></script>
        
        <link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.8.1/build/fonts/fonts-min.css" />
        <link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.8.1/build/editor/assets/skins/sam/simpleeditor.css" />
        <script type="text/javascript" src="http://yui.yahooapis.com/2.8.1/build/yahoo-dom-event/yahoo-dom-event.js"></script>
        <script type="text/javascript" src="http://yui.yahooapis.com/2.8.1/build/element/element-min.js"></script>
        <script type="text/javascript" src="http://yui.yahooapis.com/2.8.1/build/container/container_core-min.js"></script>
        <script type="text/javascript" src="http://yui.yahooapis.com/2.8.1/build/editor/simpleeditor-min.js"></script>
        <script>
var myEditor; 
            (function() {
                var Dom = YAHOO.util.Dom,
                Event = YAHOO.util.Event;

            
                YAHOO.log('Create the Editor..', 'info', 'example');
              myEditor   = new YAHOO.widget.SimpleEditor('editor', {
                    height: '150px',
                    width: '685px',
                    dompath: false,
                    animate: true,
                    handleSubmit:true,
                    toolbar: {
                        titlebar: 'Post News',
                        buttons: [
                            { group: 'textstyle', label: 'Font Style',
                                buttons: [
                                    { type: 'push', label: 'Bold', value: 'bold' },
                                    { type: 'push', label: 'Italic', value: 'italic' },
                                    { type: 'push', label: 'Underline', value: 'underline' },
                                    { type: 'separator' },
                                    { type: 'select', label: 'Arial', value: 'fontname', disabled: true,
                                        menu: [
                                            { text: 'Arial', checked: true },
                                            { text: 'Arial Black' },
                                            { text: 'Comic Sans MS' },
                                            { text: 'Courier New' },
                                            { text: 'Lucida Console' },
                                            { text: 'Tahoma' },
                                            { text: 'Times New Roman' },
                                            { text: 'Trebuchet MS' },
                                            { text: 'Verdana' }
                                        ]
                                    },
                                    { type: 'spin', label: '13', value: 'fontsize', range: [ 9, 75 ], disabled: true },
                                    { type: 'separator' },
                                    { type: 'color', label: 'Font Color', value: 'forecolor', disabled: true },
                                    { type: 'color', label: 'Background Color', value: 'backcolor', disabled: true }
                                ]
                            }
                        ]
                    }
                });
                myEditor.render();
                                
                YAHOO.util.Event.on('somebutton', 'click', function() {
                    //Put the HTML back into the text area
                    myEditor.saveHTML();
 
                    //The var html will now have the contents of the textarea
                    var html = myEditor.get('element').value;
                    document.getElementById("hide").value = html;
        
                });
                                

            })();
			
			function addto(){
                    //Put the HTML back into the text area
                    myEditor.saveHTML();
 alert("Thank you");
                    //The var html will now have the contents of the textarea
                    var html = myEditor.get('element').value;
                    document.getElementById("hide").value = html;
        
                }




        </script>
        
        
        <script type="text/javascript">
                var clickk1 = '';
            function vidble(clickk){
				
				if(clickk1 != ''){
					  document.getElementById(clickk1).style.display = 'none';
					}
				clickk1=clickk;
                        
                if(document.getElementById(clickk1).style.display == 'block'){
                    document.getElementById(clickk1).style.display = 'none';
                }else{
                    document.getElementById(clickk1).style.display = 'block';
                                        
                }
                
                        
            }
            function vidble1(){
				
                        
                if(document.getElementById("submittable").style.display == 'block'){
                    document.getElementById("submittable").style.display = 'none';
                }else{
                    document.getElementById("submittable").style.display = 'block';
                                        
                }
                
                        
            }
                
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

                    ResultSet rsl2 = st.executeQuery("select name_or_path from image_in_size where user_loginul_id='"+user.getLoginid()+"'&& image_typeit_id='1'");

                                    %>
                                    
                                    
                                    <tr>
                                        <td width="175" height="162"><%
                                            if (rsl2.next()) {
                                            %> <img src="<%
                                                out.print(rsl2.getString("name_or_path"));
                                                    %>" alt=" " width="175" height="162"/><%
                                            } else {
                                            %> <img src="images/nouser.jpg" alt="imalhasarnaga" width="175" height="162"/><%                                        }

                                        %></td>
                                    </tr>
                                </table>
                                
                            </div>
                            
                            <table width="250" border="0" cellpadding="0" cellspacing="0" align="center">
                                <tr>
                                    <td width="250" height="32" align="center"><a style=" text-decoration:none; font-size:10px;" onclick="vidble1()">change my profile picture </a></td>
                                </tr>
                                <tr><form method="post" action="profilepic"  enctype="multipart/form-data"  >
                                        <td align="center" width="250">
                                            <table width="245" align="center" style="display:none;" id="submittable">
                                                <tr >
                                                    <td align="center"><input type="file" value="Image"   name="imagefornews"/></td>
                                                </tr>
                                                <td align="center"><input type="submit" value="Upload" style="border:1px #999 ridge;" id="somebutton" onclick="document.getElementById('submittable').style.display='none'"/></td>
                                            </table>
                                        </td>
                                    </form>
                                </tr>
                            </table>
                            
                            
                            
                        </div>
                    </div>
                    
                    <div class="left_bot"></div>
                    
                    <h2>&nbsp;</h2>
                    <div class="left_bg">
                        <div class="left_grad">
                            <div class="company">
                                <div style="clear: both"><ul>
                                        
                                        <li><a onclick="vidble('vibration')" style="cursor:pointer;">Post Vibrate</a></li>
                                        <li><a href="PostDiscussion.jsp" style="cursor:pointer;">Post Discussion</a></li>
                                        <li><a onclick="vidble('news')">Suggest news</a></li>
                                        
                                </ul></div>
                                
                            </div>
                            
                        </div>
                    </div>
                    <div class="left_bot"></div>
                    
                    
                    
                </div>
                
                
                <div id="center">
                    <h2 style="font-size:24px"><% out.print(firstname);%> <% out.print(lastname);%>                        </h2>
                    <p style="font-size:24px">&nbsp;</p>
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
                &nbsp;
                <div>
                    <table width="746" border="0" cellpadding="0" cellspacing="0" style="float:left; border:1px #999 dotted; margin-top: 5px; margin-left:10px; display:none;" id="vibration" >
                        <form method="post" action="postvibrate?pro=1" enctype="multipart/form-data">
                            
                            <tr>
                                <td width="8" height="39">&nbsp;</td>
                                <td width="109">&nbsp;</td>
                                <td width="511" align="center"><input type="text" name="vib" style="width:400px; border:1px #999 ridge;"/></td>
                                <td width="73">&nbsp;</td>
                                <td width="43">&nbsp;</td>
                            </tr>
                            <tr>
                                <td height="167">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td><textarea  name="vides" cols="80" rows="10" style="border:1px #999 ridge;"></textarea></td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td height="43">&nbsp;</td>
                                <td>&nbsp;</td>
                                <% ResultSet rs = src.DB.getResultset("select* from country");%>
                                <td><span style="float:left">Vibrating Country : &nbsp;<select name="country1" style="width:150px; border:1px #999 ridge; "><% while (rs.next()) {%><option value="<%out.print(rs.getInt("country_id"));%>"> <% out.print(rs.getString("country_name"));%></option><% }%></select></span>
                                    <%  ResultSet rs1 = src.DB.getResultset("select* from city");%>
                                <span style="float:right;">Vibrating City : <select name="city1" style="border:1px #999 ridge;"><% while (rs1.next()) {%><option  value="<%out.print(rs1.getInt("city_id"));%>" > <% out.print(rs1.getString("city_name"));%></option><% }%></select></span> </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td height="28">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td><span style="float:left;">Select Image &nbsp;</span><input type="file" value="Image" style="float:left; "  name="image1"/><input type="submit" value="Sugesst" style="float:right;border:1px #999 ridge;"/></td>
                                
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            
                        </form>
                    </table>
                    <table width="745" border="0" cellpadding="0" cellspacing="0" style="float:left; border:1px #999 dotted; margin-top: 5px; margin-left:10px; display:none;" id="news" >
                        <form method="post" action="postvibrate?pro=2" id="form1" enctype="multipart/form-data">
                            
                            <tr>
                                
                                <td width="8" height="39">&nbsp;</td>
                                <td width="109">&nbsp;</td>
                                <td width="512" align="center"><input type="text" name="news" style="width:400px; border:1px #999 ridge;"/></td>
                                <td width="114">&nbsp;</td>
                            </tr>
                            <tr>
                                <td height="167">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td align="center" > <textarea textarea id="editor1" name="newsbody" cols="80" rows="10" style="border:1px #999 ridge;"></textarea></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td height="19">&nbsp;</td>
                                <td>&nbsp;</td>
                                
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td height="32">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td><input type="file" value="Image" style="float:left; "  name="imagefornews"/>      <input type="submit" value="Sugesst" style="float:right;border:1px #999 ridge;" id="somebutton1" /></td>
                                <td>&nbsp;</td>
                            </tr>
                            <input type="hidden"  id="hide" name="k" />
                        </form>
                    </table>
                    &nbsp;
                    
                    <div id="center">
                        <h2>&nbsp;</h2>
                        <h2>New to network</h2>
                        <div class="text1"  name="k1">
                            <br/>
                            
                            <%  try {
                ResultSet rs22 = st.executeQuery(" select* from user_login log, image_in_size image where (log.ul_id= image.user_loginul_id && image.image_typeit_id = '1') order by log.ul_id desc limit 5");
                while (rs22.next()) {
                            %>
                            <table width="729" border="0" cellpadding="0" cellspacing="0" style="border-bottom:1px #999 solid; margin-top:3px;">
                                
                                <tr>
                                    <td width="88" height="65"><span style="text-align:justify; color: #565649;"><img src="<% out.print(rs22.getString("image.name_or_path"));%>" alt="<% out.print(rs22.getString("image.alt_tag"));%>" width="65" height="57" style="margin-left:5px;"/></span></td>
                                    <td width="641">
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
                </div>
                <div style="clear: both"></div>
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
