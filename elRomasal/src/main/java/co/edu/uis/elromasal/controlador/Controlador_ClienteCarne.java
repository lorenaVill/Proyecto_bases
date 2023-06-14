/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package co.edu.uis.elromasal.controlador;

import co.edu.uis.elromasal.modelo.ClienteCarne;
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
public class Controlador_ClienteCarne {
    
    
    public static void guardar_ClienteCarne(ClienteCarne cli_car) {
        try {
            Statement st = Conexion.getConexion().createStatement();
            st.execute("INSERT INTO cliente_carne VALUES('" + cli_car.getId_cliente_carne()+ "','" + cli_car.getNombre()  + "','" + cli_car.getCedula() + "','" + cli_car.getTelefono() + "','" + cli_car.getDireccion() + "','" + cli_car.getCantidad() + "','" + cli_car.getPrecio()+ "','" + cli_car.getCorreo()+ "')");
            JOptionPane.showMessageDialog(null, "Registro Exitoso");
        } catch (SQLException ex) {
            Logger.getLogger(Controlador_ClienteCarne.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "Fallo en el Registro");
        }
    }

    public static void cargar_ClienteCarne(JTable tabla, DefaultTableModel modelo) {
        try {
            Statement st = Conexion.getConexion().createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM cliente_carne");
            modelo.setRowCount(0);
            while (rs.next()) {
                Object[] fila = {rs.getInt("id_cliente_carne"), rs.getString("nombre"), rs.getInt("cedula"), rs.getString("telefono"), rs.getString("direccion"), rs.getInt("cantidad"), rs.getDouble("precio"), rs.getString("correo")};
                modelo.addRow(fila);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Controlador_ClienteCarne.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void actualizar_ClienteCarne(ClienteCarne cli_car) {
        try {
            Statement st = Conexion.getConexion().createStatement();
            st.execute("UPDATE cliente_carne SET nombre ='" + cli_car.getNombre() + "',cedula='" + cli_car.getCedula() + "',telefono='" + cli_car.getTelefono() + "',direccion='" + cli_car.getDireccion() + "',cantidad='" + cli_car.getCantidad() + "',precio='" + cli_car.getPrecio() + "',correo='" + cli_car.getCorreo()+"' where id_cliente_carne = '"+cli_car.getId_cliente_carne()+"'");
            JOptionPane.showMessageDialog(null, "Actualización Exitosa");
        } catch (SQLException ex) {
            Logger.getLogger(Controlador_ClienteCarne.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "Fallo en la actualización");
        }
    }

    public static void eliminar_ClienteCarne(int id, JTable table, DefaultTableModel model) {
        try {
            Statement st = Conexion.getConexion().createStatement();
            st.execute("DELETE FROM cliente_carne where id_cliente_carne = '" + id + "'");
            JOptionPane.showMessageDialog(null, "Registro Elminado");
        } catch (SQLException ex) {
            Logger.getLogger(Controlador_ClienteCarne.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "Registro no Elminado");
        }
    }
    
}
