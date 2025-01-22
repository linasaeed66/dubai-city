<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script>
        $(document).ready(function () {
            // Function to fetch data from servlet4 and update the table
            function updateTable() {
                $.get("./api4", function (data) {
                    $("#display tbody").html(data);
                });
            }

            // Form submission
            $("#addForm").submit(function (event) {
                event.preventDefault();
                // Perform form submission logic if needed
                // Then update the table
                $.post("./api5", $("#addForm").serialize(), function () {
                    updateTable();
                });
            });

            // Initial table update
            updateTable();
        });
    </script>
    <title>Document</title>
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
        <h1>Restaurant</h1><br>
        <form action="./api5" method="post" id="addForm">
            <label for="name">Name:</label>
            <input type="text" id="nam" name="nam" required>

            <label for="location">Location:</label>
            <input type="text" id="locatio" name="locatio" required>

            <label for="rating">Rating:</label>
            <input type="number" id="ratin" name="ratin" min="1" max="5" step="0.1" required>

            <label for="description">Description:</label>
            <textarea id="descriptio" name="descriptio" rows="4" required></textarea>

            <label for="image">Image URL:</label>
            <input type="url" id="imag" name="imag" required>

            <button id="add" type="submit">+ Add element +</button><br><br>
        </form>

        <table id="display">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Location</th>
                    <th>Rating</th>
                    <th>Description</th>
                    <th>Image</th>
                    <th>Admin</th>
                </tr>
            </thead>
            <tbody>
                <!-- Table rows will be dynamically populated here -->
            </tbody>
        </table>
    </div>

    <footer>
        &copy; 2024 Medina Smart City. All rights reserved.
    </footer>
</body>
</html>
