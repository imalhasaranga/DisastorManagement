<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<%@ page import="java.sql.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <!-- Design by 
    Imal hasaranga Perera
    
        0778 195095	
     sri Lanka-->
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>Sign up</title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link href="SignupCss.css" rel="stylesheet" type="text/css" media="screen" />
        
        <script type="text/javascript" src="jquery-1.3.1.min.js"></script>
       
        <script type="text/javascript">
function IsNumeric(sText)

{
   var ValidChars = "0123456789.";
   var IsNumber=true;
   var Char;

 
   for (i = 0; i < sText.length && IsNumber == true; i++) 
      { 
      Char = sText.charAt(i); 
      if (ValidChars.indexOf(Char) == -1) 
         {
         IsNumber = false;
         }
      }
   return IsNumber;
   
   }
		
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
    <link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
</head>
    <body>
        <div id="mainbg">
            <!-- 
            
            Creator: imal hasaranga
            imal.hasaranga@gmail.com
            
            
             -->
              <% 
        
      HttpSession ses = request.getSession(false);
      src.Userdetail user= (src.Userdetail)ses.getAttribute("usr");
      
        %>
            <div id="header">
                <div style="background:url(images/maintitl.png); height:56px; margin-bottom:5px;">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin:auto">
                        <tr>
                            <td width="648" height="56">&nbsp;</td>
                            
                            
                            
                            
                            <td width="125" valign="middle">&nbsp;</td>
                            <td width="122" valign="middle">&nbsp;</td>
                           <%    
                            if(user==null){
                                
                            
                            %>
                            <td width="52" valign="middle"><form action="signin.jsp"><input type="submit" value="SignIn" style="background-color:#071434; cursor:pointer; color:white;" /></form></td>         
                            <% 
                            }else{
                            
                            %>
                            <td width="52" valign="middle"><form action="logout"><input type="submit" value="LogOut" style="background-color:#071434; cursor:pointer; color:white;" /></form></td>         
                            <% 
                            }
                            %>
                            <td width="69" valign="middle">
                            <form action="Signup.jsp"><input type="submit" value="SignUp" style="background-color:#071434;  color:white; cursor:pointer;" /></form></td>     
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
              <div id="left" style="height:400px; width:250px;">
              
  <h1></h1>
  <p></p>
  <p></p>
  <p></p>
  <p></p>
  <p></p>
  <p></p>
  <p></p>
              </div>

                
                
                <div id="center">
                    <form action="SignUp">
                        <table width="99%" border="0" cellspacing="0" cellpadding="0" height="734">
                            <tr>
                                <td width="15%" height="89">&nbsp;</td>
                                <td width="29%"><p style="font-size:18px; font-weight:bold;">&nbsp;</p>
                                <p style="font-size:18px; font-weight:bold;">Sign Up</p></td>
                                <td width="56%"><% out.print(request.getParameter("fnam") == null ? "" : request.getParameter("fnam"));
                                %></td>
                            </tr>
                            <tr>
                                <td height="29">&nbsp;</td>
                                <td>First Name</td>
                                <td><input type="text" name="fname" style="border: 1px #D4D4D4 solid; width:200px;"/></td>
                            </tr>
                            <tr>
                                <td height="30">&nbsp;</td>
                                <td>Last Name</td>
                                <td><input type="text" name="lname" style="border: 1px #D4D4D4 solid; width:200px;"/></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>Middle Name</td>
                                <td><input type="text" name="mname" style="border: 1px #D4D4D4 solid; width:200px;"/></td>
                            </tr>
                            <tr>
                                <td height="28">&nbsp;</td>
                                <td>User Namea</td>
                                <td><input type="text" name="username" style="border: 1px #D4D4D4 solid; width:200px;"/></td>
                            </tr>
                            <tr>
                                <td height="39">&nbsp;</td>
                                <td>Date of Birth</td>
                                <td><span class="field_container">
                                        <select class="" id="birthday_month" name="birthday_month" style="border: 1px #D4D4D4 solid; ">
                                           
                                        <option value="01">Jan</option>
                                            <option value="02">Feb</option>
                                            <option value="03">Mar</option>
                                            <option value="04">Apr</option>
                                            <option value="05">May</option>
                                            <option value="06">Jun</option>
                                            <option value="07">Jul</option>
                                            <option value="08">Aug</option>
                                            <option value="09">Sep</option>
                                            <option value="10">Oct</option>
                                            <option value="11">Nov</option>
                                            <option value="12">Dec</option>
                                        </select>
                                        &nbsp;&nbsp;
                                    </span><span class="field_container" >
                                        <select name="birthday_day" id="birthday_day" style="border: 1px #D4D4D4 solid;" >
                                           
                                        <option value="1">01</option>
                                            <option value="2">02</option>
                                            <option value="3">03</option>
                                            <option value="4">04</option>
                                            <option value="5">05</option>
                                            <option value="6">06</option>
                                            <option value="7">07</option>
                                            <option value="8">08</option>
                                            <option value="9">09</option>
                                            <option value="10">10</option>
                                            <option value="11">11</option>
                                            <option value="12">12</option>
                                            <option value="13">13</option>
                                            <option value="14">14</option>
                                            <option value="15">15</option>
                                            <option value="16">16</option>
                                            <option value="17">17</option>
                                            <option value="18">18</option>
                                            <option value="19">19</option>
                                            <option value="20">20</option>
                                            <option value="21">21</option>
                                            <option value="22">22</option>
                                            <option value="23">23</option>
                                            <option value="24">24</option>
                                            <option value="25">25</option>
                                            <option value="26">26</option>
                                            <option value="27">27</option>
                                            <option value="28">28</option>
                                            <option value="29">29</option>
                                            <option value="30">30</option>
                                            <option value="31">31</option>
                                        </select>
                                        &nbsp;&nbsp;
                                    </span><span class="field_container" >
                                        
                                        <select name="birthday_year" id="birthday_year"  style="border: 1px #D4D4D4 solid;">
                                           
                                        <option value="2010">2010</option>
                                            <option value="2009">2009</option>
                                            <option value="2008">2008</option>
                                            <option value="2007">2007</option>
                                            <option value="2006">2006</option>
                                            <option value="2005">2005</option>
                                            <option value="2004">2004</option>
                                            <option value="2003">2003</option>
                                            <option value="2002">2002</option>
                                            <option value="2001">2001</option>
                                            <option value="2000">2000</option>
                                            <option value="1999">1999</option>
                                            <option value="1998">1998</option>
                                            <option value="1997">1997</option>
                                            <option value="1996">1996</option>
                                            <option value="1995">1995</option>
                                            <option value="1994">1994</option>
                                            <option value="1993">1993</option>
                                            <option value="1992">1992</option>
                                            <option value="1991">1991</option>
                                            <option value="1990">1990</option>
                                            <option value="1989">1989</option>
                                            <option value="1988">1988</option>
                                            <option value="1987">1987</option>
                                            <option value="1986">1986</option>
                                            <option value="1985">1985</option>
                                            <option value="1984">1984</option>
                                            <option value="1983">1983</option>
                                            <option value="1982">1982</option>
                                            <option value="1981">1981</option>
                                            <option value="1980">1980</option>
                                            <option value="1979">1979</option>
                                            <option value="1978">1978</option>
                                            <option value="1977">1977</option>
                                            <option value="1976">1976</option>
                                            <option value="1975">1975</option>
                                            <option value="1974">1974</option>
                                            <option value="1973">1973</option>
                                            <option value="1972">1972</option>
                                            <option value="1971">1971</option>
                                            <option value="1970">1970</option>
                                            <option value="1969">1969</option>
                                            <option value="1968">1968</option>
                                            <option value="1967">1967</option>
                                            <option value="1966">1966</option>
                                            <option value="1965">1965</option>
                                            <option value="1964">1964</option>
                                            <option value="1963">1963</option>
                                            <option value="1962">1962</option>
                                            <option value="1961">1961</option>
                                            <option value="1960">1960</option>
                                            <option value="1959">1959</option>
                                            <option value="1958">1958</option>
                                            <option value="1957">1957</option>
                                            <option value="1956">1956</option>
                                            <option value="1955">1955</option>
                                            <option value="1954">1954</option>
                                            <option value="1953">1953</option>
                                            <option value="1952">1952</option>
                                            <option value="1951">1951</option>
                                            <option value="1950">1950</option>
                                            <option value="1949">1949</option>
                                            <option value="1948">1948</option>
                                            <option value="1947">1947</option>
                                            <option value="1946">1946</option>
                                            <option value="1945">1945</option>
                                            <option value="1944">1944</option>
                                            <option value="1943">1943</option>
                                            <option value="1942">1942</option>
                                            <option value="1941">1941</option>
                                            <option value="1940">1940</option>
                                            <option value="1939">1939</option>
                                            <option value="1938">1938</option>
                                            <option value="1937">1937</option>
                                            <option value="1936">1936</option>
                                            <option value="1935">1935</option>
                                            <option value="1934">1934</option>
                                            <option value="1933">1933</option>
                                            <option value="1932">1932</option>
                                            <option value="1931">1931</option>
                                            <option value="1930">1930</option>
                                            <option value="1929">1929</option>
                                            <option value="1928">1928</option>
                                            <option value="1927">1927</option>
                                            <option value="1926">1926</option>
                                            <option value="1925">1925</option>
                                            <option value="1924">1924</option>
                                            <option value="1923">1923</option>
                                            <option value="1922">1922</option>
                                            <option value="1921">1921</option>
                                            <option value="1920">1920</option>
                                            <option value="1919">1919</option>
                                            <option value="1918">1918</option>
                                            <option value="1917">1917</option>
                                            <option value="1916">1916</option>
                                            <option value="1915">1915</option>
                                            <option value="1914">1914</option>
                                            <option value="1913">1913</option>
                                            <option value="1912">1912</option>
                                            <option value="1911">1911</option>
                                            <option value="1910">1910</option>
                                            <option value="1909">1909</option>
                                            <option value="1908">1908</option>
                                            <option value="1907">1907</option>
                                            <option value="1906">1906</option>
                                            <option value="1905">1905</option>
                                            <option value="1904">1904</option>
                                            <option value="1903">1903</option>
                                            <option value="1902">1902</option>
                                            <option value="1901">1901</option>
                                            <option value="1900">1900</option>
                                        </select>
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td height="36">&nbsp;</td>
                                <td>Country</td>
                                <td><select name="country" style="width:200px; border: 1px #D4D4D4 solid;">
                                        <%
           
                
                ResultSet rs = src.DB.getResultset("select* from country");
                while (rs.next()) {
                    
                                        %>
                                        <option value="<%   out.print(rs.getInt("country_id"));                                                %>">
                                            <% out.print(rs.getString("country_name"));                                                %>
                                        </option>
                                        <%                    
                }
           
            
                                        %>
                                </select></td>
                            </tr>
                            <tr>
                                <td height="30">&nbsp;</td>
                                <td>City</td>
                                <td><select name="city" style="width:200px; border: 1px #D4D4D4 solid;">
                                        <%
            
                
                ResultSet rs1 = src.DB.getResultset("select* from city");
                while (rs1.next()) {
                    
                                        %>
                                        <option value="<%  out.print(rs1.getInt("city_id"));                                                %>">
                                            <% out.print(rs1.getString("city_name"));                                                %>
                                        </option>
                                        <%                    
                }
           
            
                                        %>
                                </select></td>
                            </tr>
                            <tr>
                                <td height="30">&nbsp;</td>
                                <td>Address</td>
                                <td><input type="text" name="address1" style="border: 1px #D4D4D4 solid; "/></td>
                            </tr>
                            <tr>
                                <td height="33">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td><input type="text" name="address2" style="border: 1px #D4D4D4 solid;"/></td>
                            </tr>
                            <tr>
                                <td height="33">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td><input type="text" name="address3" style="border: 1px #D4D4D4 solid;"/></td>
                            </tr>
                            <tr>
                                <td height="20">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>Your email</td>
                              <td><span id="sprytextfield1">
                                  <input type="text" name="email" style="border: 1px #D4D4D4 solid; width:200px; " onclick="alrertt()"/>
                                <span class="textfieldRequiredMsg"></span></span></td>
                            </tr>
                            <tr>
                                <td height="20">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td height="28">&nbsp;</td>
                                <td>Password</td>
                                <td><input type="password" name="pass1" style="border: 1px #D4D4D4 solid; width:200px;" onkeypress=IsNumeric()/> 
                              </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>Re-enter Password </td>
                                <td><input type="password" name="pass2" style="border: 1px #D4D4D4 solid; width:200px;"/>
                              </td>
                            </tr>
                            <tr>
                                <td height="27">&nbsp;</td>
                                <td>Phone</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td height="31">&nbsp;</td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Office Phone </td>
                                <td><input type="text" name="officephone" style="border: 1px #D4D4D4 solid; width:200px;"/></td>
                            </tr>
                            <tr>
                                <td height="28">&nbsp;</td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Home Phone</td>
                                <td><input type="text" name="homephone" style="border: 1px #D4D4D4 solid; width:200px;"/></td>
                            </tr>
                            <tr>
                                <td height="30">&nbsp;</td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mobile Phone</td>
                                <td><input type="text" name="mobilephone" style="border: 1px #D4D4D4 solid; width:200px;"/></td>
                          </tr>
                            <tr>
                                <td height="54">&nbsp;</td>
                                <td><span id="sprytextfield2"><span class="textfieldRequiredMsg"></span></span></td>
                              <td><p>&nbsp;
                                    </p>
                                    <br/>
                                    <p>
                                      <input type="submit" value="Submit" style="float:right; "/>
                                        
                                </p>
                                <br/>
                                <br/></td>
                            </tr>
                        </table>
                  </form>
                </div><div style="clear: both"></div>
            </div>
            
            <div id="footer">
                <p align="center"></p>
                <p style="font-size:9px;">Copyright © 2010 slnf.org. All Rights Reserved. </p>
                
            </div>
            
        </div>
        </div>
        </div>
    <div style="text-align: center; font-size: 0.75em;"></div>
    <script type="text/javascript">
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1");
var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2");
    </script>
    </body>
</html>
