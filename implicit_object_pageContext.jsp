   <html>  
<body>  
ENTER NAME:
<form>  
<input type="text" name="name">  
<input type="submit" value="go"><br/>  
</form>

<%   
  if(request.getParameter("name")!=null)
  {
String name=request.getParameter("name");  
out.print("Welcome "+name);  
  
pageContext.setAttribute("user",name,PageContext.SESSION_SCOPE); 
%>
<br>
<%
    
  
String name1=(String)pageContext.getAttribute("user",PageContext.SESSION_SCOPE);  
out.print("Hello "+name1);  
  }
%>  
 
</body>  
</html>   