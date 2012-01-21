// JavaScript Document


  
            $(document).ready(function(){
                $("#view").click(function(){
                    $("#comment").slideToggle("slow");
                });
            });
       
        
        
        
		
		
		function userinformation(form){
			var fname1 = document.getElementById("fname1").value;
			var lname1 = document.getElementById("lname1").value;
			var email1 = document.getElementById("email1").value;
			
			
			
			if(fname1== '' || lname1 == '' || email1== ''){
				
				alert("Please fill all the fields");
				return false;
				}else if(email1 != ''){
				var str = email1;
				var at="@"
		var dot="."
		var lat=str.indexOf(at)
		var lstr=str.length
		var ldot=str.indexOf(dot)
		if (str.indexOf(at)==-1){
		   alert("Invalid E-mail ID")
		   return false
		}

		if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
		   alert("Invalid E-mail ID")
		   return false
		}

		if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
		    alert("Invalid E-mail ID")
		    return false
		}

		 if (str.indexOf(at,(lat+1))!=-1){
		    alert("Invalid E-mail ID")
		    return false
		 }

		 if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
		    alert("Invalid E-mail ID")
		    return false
		 }

		 if (str.indexOf(dot,(lat+2))==-1){
		    alert("Invalid E-mail ID")
		    return false
		 }
		
		 if (str.indexOf(" ")!=-1){
		    alert("Invalid E-mail ID")
		    return false
		 }

 		 return true	
				
					
				return false;	
					
					}else {
						
						return true;	
						}
			



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

        