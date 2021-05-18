
import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Ruben Martinez
 */
public class Conexion {

    Connection con;

    public Conexion() {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_6to", "admin", "123456");
        } catch (Exception e) {
            System.err.println("Error" + e);
        }
    }
}
