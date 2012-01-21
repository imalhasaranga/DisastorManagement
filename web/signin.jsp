<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Sign In</title>
        <style type="text/css">
            #log{
                width:270px;
                height:190px;
                margin-top:200px;
                
            }
            #logbut{
                width:66px;
                height:20px;
                border:2px #333 solid;
                margin-right:20px;
                cursor:pointer;
            }
            #log td{
                color:#000;
            }
            #log td a{
                font-size:14px;
                font-weight:500;
                color:#900;
                text-decoration:none;
            }
            #log td a:hover{
                text-decoration:underline;
            }
        </style>
    </head>
    
    <body>
        
        <table  id="log" align="center"> 
            <form action="new2">
                <tr>
                    <td align="right">User Email :</td>
                    
                    <td><input type="text" value="Type User name" onfocus="this.value=''" name="uname" /></td>
                </tr>
                <tr>
                    <td align="right">Password :</td>
                    <td><input type="text" value="Type Password" onfocus="this.value=''; this.type='password'" name="pass"/></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td align="right"><input type="submit" value="Login"/></td>
                    
                </tr>
            </form>
            <tr>
                <td align="center" colspan="2">
                    Remember me:
                    <input type="checkbox" />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <a href="#">Forget your password</a>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <a href="#" style="font-weight:bold;">Sign Up Here</a>
                </td>
            </tr>
        </table>
        
    </body>
</html>
