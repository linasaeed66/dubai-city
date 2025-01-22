<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="styles.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap">
        <title>Register</title>
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
        <h2>Register</h2>
        <form action="./api2" method="post" id="registerForm">
            <label for="fname">First Name:</label>
            <input type="text" id="fname" name="fname" required>

            <label for="lname">Last Name:</label>
            <input type="text" id="lname" name="lname" required>

            <label for="mail">Email:</label>
            <input type="email" id="mail" name="mail" required>

            <label for="uname">Username:</label>
            <input type="text" id="uname" name="uname" required>

            <label for="psw">Password:</label>
            <div class="password-container">
                <input type="password" id="psw" name="psw" required>
                <span class="toggle-password" onclick="togglePassword()">Show</span>
            </div>

            <button type="submit">Register</button>
        </form>
    </div>

    <script src="script.js"></script>
</body>
</html>
