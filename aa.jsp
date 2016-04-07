 <%@ page errorPage="implicit_object_exception.jsp" %> 
<% 
String num1=request.getParameter("firstnum"); 
String num2=request.getParameter("secondnum"); 
int v1= Integer.parseInt(num1);
int v2= Integer.parseInt(num2);
int add= v1+v2;
out.print("Output is: "+ add);
%>