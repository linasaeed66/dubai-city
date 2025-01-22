package com.dubaicity.data;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class JobService {

	public List<Job> getJobs() {
        List<Job> jobs = new ArrayList<>();
        Connection connection;
		try {
			connection = Database.getInstance().getConnection();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return jobs;
		}

        try (Statement stmt = connection.createStatement()) {
            String sql = "SELECT * FROM jobs"; // Replace with your actual table name
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                String title = rs.getString("title");
                String description = rs.getString("description");
                int id = rs.getInt("id");
                String datetime = rs.getString("datetime");

                Job job = new Job(title, description, id, datetime);
                jobs.add(job);
            }

        } catch (SQLException e) {
            System.err.println("Error fetching jobs: " + e.getMessage());
        }

        return jobs;
    }
}
