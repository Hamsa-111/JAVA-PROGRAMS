<%@ page import="javax.servlet.http.Cookie" %>
<!DOCTYPE html>
<html>
<head>
    <title>Active Cookies</title>
</head>
<body>

<h2>Active Cookie List</h2>

<%
    Cookie[] cookies = request.getCookies();

    if (cookies != null) {
        for (Cookie c : cookies) {

            String[] data = c.getValue().split("\\|");

            String domain = data[0];
            String age = (data.length > 1) ? data[1] : "Not Available";
%>

<p>
    Name: <%= c.getName() %> |
    Domain: <%= domain %> |
    Max Age: <%= age %> seconds
</p>

<%
        }
    } else {
%>
        <p>No cookies found</p>
<%
    }
%>

<br>
<a href="index.jsp">Back</a>

</body>
</html>