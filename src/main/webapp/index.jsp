<<<<<<< HEAD
<!DOCTYPE html>
<html>
<head>
    <title>Cookie Management</title>
</head>
<body>

<h2>Add Cookie</h2>

<form action="addCookie.jsp" method="post">
    Name: <input type="text" name="cname" required><br><br>
    Domain: <input type="text" name="cdomain" required><br><br>
    Max Age (seconds): <input type="number" name="cage" required><br><br>

    <input type="submit" value="Add Cookie">
</form>

<br>
<a href="showCookies.jsp">Go to Active Cookie List</a>

=======

<!DOCTYPE html>
<html>
<head>
    <title>Factorial Calculator</title>
    <style>
        .container {
            margin: 20px;
            padding: 20px;
            width: 300px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .form-group {
            margin: 10px 0;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Factorial Calculator</h2>
        <form action="factorial" method="post">
            <div class="form-group">
                Enter a number: 
                <input type="number" name="number" min="0" max="20" required>
                <small>(Max: 20)</small>
            </div>
            <input type="submit" value="Calculate Factorial">
        </form>
    </div>
>>>>>>> branch 'master' of https://github.com/Hamsa-111/JAVA-PROGRAMS.git
</body>
</html>