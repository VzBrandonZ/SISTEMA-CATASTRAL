/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package SQL;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

/**
 *
 * @author VzWhite
 */
public class ConexionPostgreSQL {
        Connection conn = null;
        String url = "jdbc:postgresql://localhost:5432/Cadastral_System";
        String usuario = "postgres";
        String clave = "29533958Bm";
        public Connection Conectar(){
        try {
            Class.forName("org.postgresql.Driver");
            conn = DriverManager.getConnection(url,usuario,clave);
            
        } catch (Exception error) {
            JOptionPane.showMessageDialog(null, "Error al conectar "+error,"Error",JOptionPane.ERROR_MESSAGE);
        }
        return conn;
    }
}
