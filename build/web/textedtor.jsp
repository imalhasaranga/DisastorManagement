<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd"> 
<html> 
    <head>
        
        
        <meta http-equiv="content-type" content="text/html; charset=utf-8">
        <title>Simple Editor &mdash; Basic Buttons</title>
        
        
        
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

              /*
			    var myConfig = {
                    height: '300px',
                    width: '600px',
                    dompath: true,
                    focusAtStart: true,
                    handleSubmit:true
					
					
					
                };
				*/

                YAHOO.log('Create the Editor..', 'info', 'example');
                var myEditor = new YAHOO.widget.SimpleEditor('editor', {
    height: '400px',
    width: '600px',
    dompath: true,
    animate: true,
	handleSubmit:true,
    toolbar: {
        titlebar: 'My Editor',
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
        </script> 
        
    </head>
    
    <body >
    <table>
    
        <tr>
         <form method="post" action="aboutUs" id="form1" name="a">
            <td  class="yui-skin-sam" >
       
       
            <input type="text" value="Title" name="disid" style="width:350px; border:#999 1px ridge;" />&nbsp;&nbsp;&nbsp;&nbsp;<select style="width:120px; border:#999 1px ridge;"><option></option></select>
            <br><textarea id="editor" name="gotservlet" rows="20" cols="75" >

                    </textarea>
            
            <br/>
        
          
           <input type="submit" value="Submit" style="border:1px #666 ridge; margin-right:30px;" id="somebutton"/>
                    <input type="hidden"  id="hide" name="k" />
      
        </td>
          </form>
    </tr>
        </table>
    
     <img src="http://www.javaworldcongress.org/WorldCongress/images/121212121121.gif" width="200px;" height="200px;" />
    <!--
    
 <table width="970" border="0" cellpadding="0" cellspacing="0">
                    <form method="post" action="addpostfor_discussion" id="form1"> 
               
                <input type="hidden" name="did" value="<%//=discussioid%>"/>
                <input type="hidden" name="uid" value="<%//=usrnnowid%>"/>
               

                <tr>
                <td class="yui-skin-sam" align="center">
                
                
                <textarea id="editor" name="hello" rows="20" cols="75"> 
                </textarea> 
               
                </td>
            </tr>
  
            <tr>
                <td height="42">
                    <input type="submit" value="submit" style="float:right; margin-right:128px; border:1px #999 ridge;"/>
                </td>
            </tr>
             </form> 
             
             
             
             
            </table>    



-->
    
</html> 

