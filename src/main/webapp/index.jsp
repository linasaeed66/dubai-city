<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Smart City</title>
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap">
</head>
<body>
    <header>
        <div id="logo">
            <p><%= new Date() %></p>
            <a href="index.jsp">
                <img src="images/mylogo.png" alt="Logo">
            </a>
        </div>
        <nav>
            <a href="restaurant.jsp">Restaurant</a>
            <a href="hotels.jsp">Hotels</a>
            <a href="attractions.jsp">Attractions</a>
            <a href="schools.jsp">Schools</a>
            <a href="jobs.jsp">Jobs</a>
        </nav>
        <div id="user-controls">
            <a href="login.jsp" id="login">Login</a>
            <a href="register.jsp" id="register">Register</a>
        </div>
    </header>
    <div id="welcome-section">
        <div id="left-content">
            <h1>Welcome to Rabat Smart City!</h1>
            <div id="video-container">
                <iframe width="560" height="315" src="https://www.youtube.com/" 
                    title="Tangier 2023 by drone" frameborder="0" 
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
                    allowfullscreen>
                </iframe>
            </div>
        </div>
        <div id="right-content">
            <img src="images/destination.svg" alt="Rabat Smart City">
        </div>
    </div>
    <footer>
        &copy; 2024 Rabat Smart City. All rights reserved.
    </footer>
</body>
</html>
