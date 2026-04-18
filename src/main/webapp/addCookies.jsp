<%@ page import="javax.servlet.http.Cookie" %>
<!DOCTYPE html>
<html>
<head>
    <title>Cookie Added</title>
</head>
<body>

<%
    String name = request.getParameter("cname");
    String domain = request.getParameter("cdomain");
    int age = Integer.parseInt(request.getParameter("cage"));

    // Store domain + age together (important fix)
    String value = domain + "|" + age;

    Cookie cookie = new Cookie(name, value);

    cookie.setMaxAge(age);   // works correctly on server side
    response.addCookie(cookie);
%>

<h2>Cookie Added Successfully</h2>

<p>Name: <%= name %></p>
<p>Domain: <%= domain %></p>
<p>Max Age: <%= age %> seconds</p>

<br>
<a href="showCookies.jsp">Go to Active Cookie List</a>

</body>
</html>
