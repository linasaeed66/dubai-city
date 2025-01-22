<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap">
    <title>Login</title>
</head>
<body>
    <header>
        <div id="logo">
            <a href="index.jsp">
            <img src="images/mylogo.png" alt="Logo">
        </a>
        </div>
        <nav>
            <a href="restaurant.jsp" >Restaurant</a>
            <a href="hotels.jsp" >Hotels</a>
            <a href="attractions.jsp" >Attractions</a>
            <a href="schools.jsp" >Schools</a>
            <a href="jobs.jsp">Jobs</a>
        </nav>
        <div id="user-controls">
            <a href="login.jsp" id="login">Login</a>
            <a href="register.jsp" id="register">Register</a>
        </div>
    </header>
    <div class="container">
        <h2>Login</h2>
        <form action="./api3" method="post" id="loginForm">

            <label for="usename">Username:</label>
            <input type="text" id="usename" name="usename" required>

            <label for="pass">Password:</label>
            <div class="password-container">
                <input type="password" id="pass" name="pass" required>
                <span class="toggle-password" onclick="togglePassword()">Show</span>
            </div>
            <button type="submit"> Log in</button>
        </form>
    </div>

    <script src="script.js"></script>
</body>
</html>
