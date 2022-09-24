/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package salesr;

import Metodos.Conexion;
import Vista.Inicio;
import Vista.Login;
import Vista.Splash;
import javax.swing.JOptionPane;
/**
 *
 * @author Tonny-RL
 */
public class SalesR {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
       // Inicio ventana = new Inicio();
     //   ventana.setVisible(true);
        Splash ventana = new Splash();
        ventana.setVisible(true);
    //    Inicio menu = new Inicio();
    Login inicioSesion = new Login();
        Conexion con = new Conexion();

        try {
            for (int i = 0; i <= 100; i++) {
                Thread.sleep(25);
                ventana.LabelCargando.setText(Integer.toString(i) + "%");
                ventana.ProgressBarSplash.setValue(i);
                if (i == 50 && con.getConexion() == null) {
                    ventana.setVisible(false);
                    inicioSesion.setVisible(false);
                    JOptionPane.showMessageDialog(null, "Error de conexion a la base de datos");
                } else if (i == 100 && con.getConexion() != null) {
                    ventana.setVisible(false);
                    inicioSesion.setVisible(true);
                }
            }
        } catch (Exception e) {
        }
    }
    
}
