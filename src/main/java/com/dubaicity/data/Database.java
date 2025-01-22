package com.dubaicity.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {
	private static Database instance;
    private Connection connection;

    private Database() throws ClassNotFoundException {
        try {
            // Replace with your actual database credentials
            String url = "jdbc:mysql://localhost:3306/dubai_city";
            String user = "root";
            String password = "";

            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver"); 

            // Establish a connection
            connection = DriverManager.getConnection(url, user, password);
            System.out.println("Database connection established.");

        } catch (SQLException e) {
            System.err.println("Error connecting to database: " + e.getMessage());
        }
    }

    public static Database getInstance() throws ClassNotFoundException {
        if (instance == null) {
            instance = new Database();
        }
        return instance;
    }

    public Connection getConnection() {
        return connection;
    }
}
