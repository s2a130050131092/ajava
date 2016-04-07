<html>  
<body>  
130050131525
<form>  
<input type="text" name="name">  
<input type="submit" value="ok"><br/>  
</form>  

<%   
if(request.getParameter("name")!=null)
{
String name=request.getParameter("name");  
out.print("welcome "+name);  
}
%> 
 
</body>  
</html>   