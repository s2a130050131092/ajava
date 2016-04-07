 <html>  
<body>  

<form>  
<input type="text" name="name">  
<input type="submit" value="go"><br/>  
</form>
130050131525

<%  

if(request.getParameter("name")!=null)
{	
String param=request.getParameter("name");
if(param.equals("yahoo"))
{
response.sendRedirect("http://www.yahoo.com");  
}
if(param.equals("Ankit_Desai"))
{
    response.sendRedirect("https://sites.google.com/site/desaiankitb/advanced-java/lab-work");
}
}
%>  
 
</body>  
</html>   