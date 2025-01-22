

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class UserAccounts {
	public static void Login(String username, String password)
    {  Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3308/mydbLogin",
                    "root", "");

            Statement statement2;
            ResultSet resultSet3=null;
            statement2 = connection.createStatement();
            StringBuilder S3= new StringBuilder(400);
            S3.append("select username, password From userstable where userstable.username= \'");
            S3.append(username.toString());
            S3.append("\';");

            String q=S3.toString();
            System.out.println(q);
            try {
                resultSet3=statement2.executeQuery(q);
                System.out.println(resultSet3);
                String retrieved_password=null;
                while(resultSet3.next()) {
                    retrieved_password=resultSet3.getString("password").trim();;
                }

                System.out.println(password);
                System.out.println(retrieved_password);
                if(retrieved_password.equals(password)) {
                    System.out.println("You have logged in!");

                }else {
                    System.out.println("Incorrect password!");

                }
            }catch (Exception exception) {
                System.out.println("Username is not correct or it is not registred!");
                System.out.println(exception);

            }



            resultSet3.close();
            statement2.close();
            connection.close();
        }
        catch (Exception exception) {
            System.out.println(exception);

        }
    }


    ///////////
    public static String Register(String username, String FirstName, String LastName, String Email, String Password)
    {
        String Registration_Status=null;
    	Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3308/mydbLogin",
                    "root", "");

            Statement statement2;

            boolean resultSet3;

            statement2 = connection.createStatement();
            StringBuilder S3= new StringBuilder(400);
            S3.append("insert into userstable(username, firstname, lastname, email, password) values (\'");
            S3.append(username.toString());
            S3.append("\', \'");
            S3.append(FirstName.toString());
            S3.append("\', \'");
            S3.append(LastName.toString());
            S3.append("\', \'");
            S3.append(Email.toString());
            S3.append("\', \'");
            S3.append(Password.toString());
            S3.append("\');");
            String q=S3.toString();
            System.out.print(q);
            resultSet3=statement2.execute(q);
            statement2.close();
            connection.close();
            Registration_Status="Registration is successful!";
        }
        catch (Exception exception) {
            System.out.println(exception);
            Registration_Status="Registration is not conducted! \n try to register again";
        }
        return Registration_Status;
    }
    
    ////////////////////////
    public static String UpdatProfile(String email, String column_name, String new_value)
    {
        String Registration_Status=null;
    	Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3308/mydbLogin",
                    "root", "");
            Statement statement2;
            boolean resultSet3;
            statement2 = connection.createStatement();
            StringBuilder S3= new StringBuilder(400);
            S3.append("update userstable set  "+column_name+"= \'"+new_value+"\'");
            S3.append(" where email = \'"+email);
            String q=S3.toString();
            System.out.print(q);
            resultSet3=statement2.execute(q);
            statement2.close();
            connection.close();
            Registration_Status="Registration is successful!";
        }
        catch (Exception exception) {
            System.out.println(exception);
            Registration_Status="Registration is not conducted! \n try to register again";
        }
        return Registration_Status;
    }

}
