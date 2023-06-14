/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package co.edu.uis.elromasal.controlador;

import co.edu.uis.elromasal.modelo.RazasAnimal;
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
public class Controlador_Razas {
    
    public static void guardar_Razas(RazasAnimal razas_ani) {
        try {
            Statement st = Conexion.getConexion().createStatement();
            st.execute("INSERT INTO razas VALUES('" + razas_ani.getId_raza()+ "','" + razas_ani.getNombre()+ "','" + razas_ani.getDestinacion()+ "','" +  "')");
            JOptionPane.showMessageDialog(null, "Registro Exitoso");
        } catch (SQLException ex) {
            Logger.getLogger(Controlador_Razas.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "Fallo en el Registro");
        }
    }
    
    public static void cargar_Razas(JTable tabla, DefaultTableModel modelo) {
        try {
            Statement st = Conexion.getConexion().createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM razas");
            modelo.setRowCount(0);
            while (rs.next()) {
                Object[] fila = {rs.getInt("id_raza"), rs.getString("nombre"), rs.getString("destinacion")};
                modelo.addRow(fila);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Controlador_Razas.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    public static void actualizar_Razas(RazasAnimal razas_ani) {
        try {
            Statement st = Conexion.getConexion().createStatement();
            st.execute("UPDATE razas SET nombre ='" + razas_ani.getNombre() + "',destinacion='" + razas_ani.getDestinacion() +  "' where id_raza = '"+razas_ani.getId_raza()+"'");
            JOptionPane.showMessageDialog(null, "Actualización Exitosa");
        } catch (SQLException ex) {
            Logger.getLogger(Controlador_Razas.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "Fallo en la actualización");
        }
    }
    
    public static void eliminar_Razas(int id, JTable table, DefaultTableModel model) {
        try {
            Statement st = Conexion.getConexion().createStatement();
            st.execute("DELETE FROM razas where id_raza = '" + id + "'");
            JOptionPane.showMessageDialog(null, "Registro Elminado");
        } catch (SQLException ex) {
            Logger.getLogger(Controlador_Razas.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "Registro no Elminado");
        }
    }
    
}
