/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Metodos;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;

/**
 *
 * @author Tonny-RL
 */
public class Conexion {
    private final String usuario = "root";
    private final String contraseña = "Geek-98..";
    private final String URL = "jdbc:mysql://localhost:3306/salesr-db?&useSSL=false";
    private Connection conectar = null;
  
    //clase para crear la conexion a la base de datos
public Connection getConexion(){

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conectar = (Connection) DriverManager.getConnection(URL, usuario, contraseña);
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conectar;
}
}
