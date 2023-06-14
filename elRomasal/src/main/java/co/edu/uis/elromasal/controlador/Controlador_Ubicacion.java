/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package co.edu.uis.elromasal.controlador;

import co.edu.uis.elromasal.modelo.Ubicacion;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Usuario
 */
public class Controlador_Ubicacion {


    
    public static void guardar_Ubicaciones(Ubicacion ubi){
        try {
            Statement st = Conexion.getConexion().createStatement();
            st.execute("INSERT INTO ubicacion VALUES('" + ubi.getId_ubicacion()+ "','" + ubi.getNombre()  + "','" + ubi.getCapacidad()+   "')");
            JOptionPane.showMessageDialog(null, "Registro Exitoso");
        } catch (SQLException ex) {
            Logger.getLogger(Controlador_Ubicacion.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "Fallo en el Registro");
        }
    }
    
    public static void cargar_Ubicaciones(JTable tabla, DefaultTableModel modelo) {
        try {
            Statement st = Conexion.getConexion().createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM ubicacion");
            modelo.setRowCount(0);
            while (rs.next()) {
                Object[] fila = {rs.getInt("id_ubicacion"), rs.getString("nombre"), rs.getInt("cedula"), rs.getString("telefono"), rs.getString("direccion"), rs.getInt("cantidad"), rs.getDouble("precio"), rs.getString("correo")};
                modelo.addRow(fila);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Controlador_ClienteCarne.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
