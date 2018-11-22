import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {

    static String URL = "localhost:3306/";
    static String DATABASE_NAME = "upload";
    static String USERNAME = "root";
    static String PASSWORD = "root@123";

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://" + URL + DATABASE_NAME, USERNAME, PASSWORD);
            System.out.println("Connected");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }
        return con;
    }
}
