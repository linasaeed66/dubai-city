<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
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
    <h1>Jobs</h1><br>
    <form id="addForm">
      <label for="name">Position:</label>
      <input type="text" id="name" name="name" required>

      <label for="location">Location:</label>
      <input type="text" id="location" name="location" required>

      <label for="rating">Company:</label>
      <input type="number" id="rating" name="rating" min="1" max="5" step="0.1" required>

      <label for="description">Description:</label>
      <textarea id="description" name="description" rows="4" required></textarea>

      <label for="image">Image URL:</label>
      <input type="url" id="image" name="image" required>

      <button id="add">+ Add element +</button><br><br>
    </form>
  </form>
    <table id="display">
        <tr>
          <th>Position</th>
          <th>Location</th>
          <th>Company</th>
          <th>Description </th>
          <th>CV </th>
          <th> Admin </th>
        </tr>
        <tr>
          <td>Position 1</td>
          <td>Rabat</td>
          <td>IBM</td>
          <td>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</td>
          <td>Upload CV...</td>
          <td><button id="edit">Edit</button><button id="delete">Delete</button></td>
        </tr>
        <tr>
          <td>Hotel 2</td>
          <td>Here</td>
          <td>4.5</td>
          <td>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</td>
          <td>Image</td>
          <td></td>
        </tr>
      </table>
    <footer>
        &copy; 2024 Medina Smart City. All rights reserved.
    </footer>
</body>
</html>