<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>News Letter</title>

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
                    height: '350px',
                 width: '1000px',
                    dompath: true,
                    focusAtStart: true,
                    handleSubmit:true
                };

                YAHOO.log('Create the Editor..', 'info', 'example');
                var myEditor = new YAHOO.widget.SimpleEditor('editor', myConfig);
                myEditor.render();

            })();
        </script> 
    

</head>

<body>
    
    <%
    src.Userdetail usr = (src.Userdetail)session.getAttribute("usr");
    if(usr == null){
    
        response.sendRedirect("signin.jsp");
    }else if(usr.getAdminorusr()==1){
    
    response.sendRedirect("signin.jsp");
    }
    
    %>
<table width="1020" border="1" align="center">
  <tr>
    <td height="35"><h1><strong>Sending NewsLetters</strong></h1></td>
  </tr>
  <tr>
    <td height="317" align="center">
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td  class="yui-skin-sam">
       
        <form method="post" action="sendnewsletter" id="form1">
           
            <p> <br/>
              <textarea id="editor" name="gotservlet" rows="20" cols="75" style="margin-top:20px;">

                    </textarea>
              <input type="submit" value="Submit" style="border:1px #666 ridge;  margin-top:5px; float:right;"/>
              
            </p>
        </form>
        </td>
    </tr>
        </table>
    
    
    </td>
  </tr>
  <tr>
    <td height="41"> Click submit to Send this message to all the members of SLNF      </td>
  </tr>
 
</table>
</body>
</html>
