<%@ page import="java.util.*" %>
<%
    Cookie[] cookies = request.getCookies();
    
    if (cookies == null) {
        cookies = new Cookie[0];
    }
    
    Date d= new Date();

    
    Cookie c = new Cookie("Last_Visited", "" +d);
    response.addCookie(c);

    String name = request.getParameter("name");
    String value = request.getParameter("value");
    Cookie added = null;
    if (name != null && value != null && name.length() > 0) {

        Cookie cookie = null;
        for (int i = 0; i < cookies.length; i++) {

            if (cookies.length >= 10) {
                cookie = cookies[0];
                cookie.setMaxAge(0);
                response.addCookie(cookie);
            }

        }

        added = new Cookie(name, value);
        response.addCookie(added);

    }
%>
<HTML>
    <HEAD>
        <TITLE>Cookies</TITLE>
    </HEAD>
    <BODY>
        <
    
        <b>Number of cookies: <%= cookies.length%></b><BR>
        <H3>Cookies</H3>
            <%

                for (int i = 0; i < cookies.length; i++) {
                    out.println("cookie number:\n" + i);
                    out.println( " \t cookie name:\n" + cookies[i].getName());
                    out.println("\t cookie value:\n" + cookies[i].getValue());
                    %>
        <br>
        <%

                    if (added != null && added.getName().equals(cookies[i].getName())) {
                        added = null;
                    }
                }
                if (added != null) {
                    out.println("new cookie: " + added.getName() + ":\t"
                            + added.getValue() + "<BR>");
                }
            %>
        <H2>New cookie</H2>
        <FORM>
            <P>Name: <INPUT TYPE='TEXT' NAME='name'></P>
            <P>Value: <INPUT TYPE='TEXT' NAME='value'></P>
            <INPUT TYPE='SUBMIT' VALUE='Add new value'>
        </FORM>
    </BODY>
</HTML>

