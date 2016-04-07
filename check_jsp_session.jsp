<%@ page language="java" import="myPackage.*"%>
<%
    String n =request.getParameter("Name");
    User_Info na=new User_Info();
    na.setName(n);
    session.setAttribute("nm", na);
    response.sendRedirect("view_jsp_session.jsp");
 %>