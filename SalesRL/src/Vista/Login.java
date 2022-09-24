/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package Vista;

import Metodos.LoginDAO;
import Metodos.TextPrompt;
import Metodos.login;
import java.awt.Color;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.swing.JOptionPane;
import salesr.SalesR;

/**
 *
 * @author Tonny-RL
 */
public class Login extends javax.swing.JFrame {
    //Variables para almacenar los datos del mouse
    int xMouse, yMouse;
    login lg = new login();
    LoginDAO login = new LoginDAO();
    public Login() {
        initComponents();
        //funcion que me permite agregar el texto en el textfiueld como TEXTPROMPT
        TextPrompt textoCorreo = new TextPrompt("Corrreo Electronico (Obligatorio)", txtCorreo);
        TextPrompt txtContrasenia = new TextPrompt("Ingrese su Cntraseña", txtContrasena);
        //permite centrar la ventana 
        this.setLocationRelativeTo(null);
        
    }
    //funcion que me permite validad el correo y la contraseña ingresados en el textfield
public void validar(){ 
        String correo = txtCorreo.getText();
        String pass = String.valueOf(txtContrasena.getPassword());
        if (!"".equals(correo) || !"".equals(pass)) {
            
            lg = login.log(correo, pass);
            if (lg.getCorreo()!= null && lg.getPass() != null) {
                Inicio sis = new Inicio();
                sis.setVisible(true);
                dispose();
            }else{
                JOptionPane.showMessageDialog(null, "Correo o la Contraseña incorrecta");
                
                        }
        }
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanelBackground = new javax.swing.JPanel();
        jPanel1 = new javax.swing.JPanel();
        txtCorreo = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        txtContrasena = new javax.swing.JPasswordField();
        btnIngresar = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jPanelHeader = new javax.swing.JPanel();
        jPanelCerrar = new javax.swing.JPanel();
        jLabelX = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setUndecorated(true);

        jPanelBackground.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel1.setBackground(new java.awt.Color(102, 102, 102));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        txtCorreo.setBorder(new javax.swing.border.SoftBevelBorder(javax.swing.border.BevelBorder.RAISED));
        jPanel1.add(txtCorreo, new org.netbeans.lib.awtextra.AbsoluteConstraints(300, 140, 242, -1));

        jLabel3.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        jLabel3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/Usuario Txt.png"))); // NOI18N
        jPanel1.add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(230, 110, -1, -1));

        jLabel4.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        jLabel4.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/pass.png"))); // NOI18N
        jPanel1.add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(230, 190, -1, -1));

        txtContrasena.setBorder(new javax.swing.border.SoftBevelBorder(javax.swing.border.BevelBorder.RAISED));
        jPanel1.add(txtContrasena, new org.netbeans.lib.awtextra.AbsoluteConstraints(300, 210, 242, -1));

        btnIngresar.setBackground(new java.awt.Color(153, 0, 0));
        btnIngresar.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        btnIngresar.setForeground(new java.awt.Color(0, 0, 0));
        btnIngresar.setText("Ingresar");
        btnIngresar.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btnIngresar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnIngresarActionPerformed(evt);
            }
        });
        jPanel1.add(btnIngresar, new org.netbeans.lib.awtextra.AbsoluteConstraints(340, 270, 120, 40));

        jLabel2.setFont(new java.awt.Font("Segoe UI", 1, 36)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(0, 0, 0));
        jLabel2.setText("Login");
        jPanel1.add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 210, -1, -1));

        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/Usuario.png"))); // NOI18N
        jPanel1.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 110, -1, -1));

        jLabel5.setBackground(new java.awt.Color(153, 0, 0));
        jLabel5.setForeground(new java.awt.Color(204, 0, 0));
        jLabel5.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/FondoRojoLogin.png"))); // NOI18N
        jLabel5.setText(".");
        jPanel1.add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 175, 354));

        jPanelHeader.setBackground(new java.awt.Color(102, 102, 102));
        jPanelHeader.addMouseMotionListener(new java.awt.event.MouseMotionAdapter() {
            public void mouseDragged(java.awt.event.MouseEvent evt) {
                jPanelHeaderMouseDragged(evt);
            }
        });
        jPanelHeader.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                jPanelHeaderMousePressed(evt);
            }
        });

        jPanelCerrar.setBackground(new java.awt.Color(102, 102, 102));

        jLabelX.setBackground(new java.awt.Color(102, 102, 102));
        jLabelX.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        jLabelX.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabelX.setText("X");
        jLabelX.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        jLabelX.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jLabelXMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                jLabelXMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                jLabelXMouseExited(evt);
            }
        });

        javax.swing.GroupLayout jPanelCerrarLayout = new javax.swing.GroupLayout(jPanelCerrar);
        jPanelCerrar.setLayout(jPanelCerrarLayout);
        jPanelCerrarLayout.setHorizontalGroup(
            jPanelCerrarLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jLabelX, javax.swing.GroupLayout.DEFAULT_SIZE, 26, Short.MAX_VALUE)
        );
        jPanelCerrarLayout.setVerticalGroup(
            jPanelCerrarLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanelCerrarLayout.createSequentialGroup()
                .addComponent(jLabelX)
                .addGap(0, 5, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout jPanelHeaderLayout = new javax.swing.GroupLayout(jPanelHeader);
        jPanelHeader.setLayout(jPanelHeaderLayout);
        jPanelHeaderLayout.setHorizontalGroup(
            jPanelHeaderLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanelHeaderLayout.createSequentialGroup()
                .addContainerGap(648, Short.MAX_VALUE)
                .addComponent(jPanelCerrar, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        jPanelHeaderLayout.setVerticalGroup(
            jPanelHeaderLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanelHeaderLayout.createSequentialGroup()
                .addGap(0, 7, Short.MAX_VALUE)
                .addComponent(jPanelCerrar, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
        );

        jPanel1.add(jPanelHeader, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 680, -1));

        jPanelBackground.add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 690, -1));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanelBackground, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanelBackground, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        );

        setSize(new java.awt.Dimension(687, 354));
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void btnIngresarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnIngresarActionPerformed
        // verificamos que sea un correo electronico lo que se ha ingresado
        Pattern pattern = Pattern.compile("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$");
        //Pattern pattern = Pattern.compile("(\\W|^)[\\w.\\-]{0,25}@(hotmail|gmail)\\.com(\\W|$)");
        //Pattern pattern = Pattern.compile("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@gmail(\\.com +)$");
        Matcher matcher = pattern.matcher(txtCorreo.getText());
        
        if (matcher.find()) {
             validar();
        }else {
            JOptionPane.showMessageDialog(null, "Correo Electronico no valido");
        }
         
    }//GEN-LAST:event_btnIngresarActionPerformed

    private void jLabelXMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabelXMouseClicked
        // TODO add your handling code here:
        System.exit(0);
    }//GEN-LAST:event_jLabelXMouseClicked

    private void jPanelHeaderMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jPanelHeaderMousePressed
        // evento que permite mantener presionado el botin de mouse
        xMouse = evt.getX();
        yMouse = evt.getY();
    }//GEN-LAST:event_jPanelHeaderMousePressed

    private void jPanelHeaderMouseDragged(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jPanelHeaderMouseDragged
        // Evento que situa la ventana en donde el mouse esta
        int x = evt.getXOnScreen();
        int y = evt.getYOnScreen();
        this.setLocation(x - xMouse, y - yMouse);
    }//GEN-LAST:event_jPanelHeaderMouseDragged

    private void jLabelXMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabelXMouseEntered
        // metodo que me permite agregar color al Fondo del boton X asi como color a la letra
       jPanelCerrar.setBackground(new Color(102, 102, 102));
       jLabelX.setForeground(Color.white);
    }//GEN-LAST:event_jLabelXMouseEntered

    private void jLabelXMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabelXMouseExited
       //aplicacion de colores con el sistema exagonal
        jPanelCerrar.setBackground(new Color(102, 102, 102));
       jLabelX.setForeground(Color.black);
    }//GEN-LAST:event_jLabelXMouseExited

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Login().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnIngresar;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabelX;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanelBackground;
    private javax.swing.JPanel jPanelCerrar;
    private javax.swing.JPanel jPanelHeader;
    private javax.swing.JPasswordField txtContrasena;
    private javax.swing.JTextField txtCorreo;
    // End of variables declaration//GEN-END:variables
}
