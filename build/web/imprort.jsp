<%@ page  import="java.sql.*" %>  

 
    <tr>
                        	<td width="17%" align="center">Image</td>
                            <td width="56%" align="center">Title </td>               
                            <td width="13%" align="center">Date  </td>                
                            <td width="14%" align="center">Status </td>
              </tr>
 
 
<%

            try {


                ResultSet rnews = src.DB.getResultset("select* from news news1 where news1.thematic_areasta_id='2'  ORDER by news1.news_id desc ");
               
                while (rnews.next()) {
                   
                    ResultSet rimage1 = src.DB.getResultset("select img.name_or_path from image_in_size img, image_for_news news2 where (img.image_id=news2.image_in_sizeimage_id) && newsnews_id='" + rnews.getInt("news1.news_id") + "'");
       
                    %>
                    
                  
                   
                  
                        <tr>
                        	<td height="59" align="center">
                            <%
                            String img = "";
                            if (rimage1.next() ) {
                                
                                img = rimage1.getString("img.name_or_path");
                                
                                if( !rimage1.getString("img.name_or_path").equals("")){ %><img src="<%out.print(rimage1.getString("img.name_or_path"));%>" width="110" height="51"/> <%}}%></td>
                            <td align="center">
                              <a href="managenews.jsp?nid=<% out.print(rnews.getString("news1.news_id"));%>&imgs=<%out.print(img);%>" ><% out.print(rnews.getString("news1.title"));%></a>
                            </td>
                            <td align="center">
                               <%out.print(rnews.getString("news1.date"));%>
                        </td>
                            <td align="center">
                               <% out.print(rnews.getInt("news1.is_active")==0 ? "Pending" : "Posted");%>
                          </td>
                        </tr>
                   
                    <%
                        }


                    %>
                     
                    
                 
                        
                        <%
}catch(Exception e){

}
            
            %>
			