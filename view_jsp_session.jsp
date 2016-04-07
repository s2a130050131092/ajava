<%@ page language="java"  import="myPackage.*" %>
<%
User_Info n =(User_Info)session.getAttribute("nm");
out.println(n.getName());
%>