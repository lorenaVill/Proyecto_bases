/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package co.edu.uis.elromasal.modelo;

/**
 *
 * @author Usuario
 */
public class ClienteCarne {
    
    private int id_cliente_carne;
    private String nombre;
    private int cedula;
    private String telefono;
    private String direccion;
    private int cantidad;
    private double precio;
    private String correo;

    public ClienteCarne(int id_cliente_carne, String nombre, int cedula, String telefono, String direccion, int cantidad, double precio, String correo) {
        this.id_cliente_carne = id_cliente_carne;
        this.nombre = nombre;
        this.cedula = cedula;
        this.telefono = telefono;
        this.direccion = direccion;
        this.cantidad = cantidad;
        this.precio = precio;
        this.correo = correo;
    }

    public int getId_cliente_carne() {
        return id_cliente_carne;
    }

    public void setId_cliente_carne(int id_cliente_carne) {
        this.id_cliente_carne = id_cliente_carne;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getCedula() {
        return cedula;
    }

    public void setCedula(int cedula) {
        this.cedula = cedula;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    @Override
    public String toString() {
        return "ClienteCarne{" + "id_cliente_carne=" + id_cliente_carne + ", nombre=" + nombre + ", cedula=" + cedula + ", telefono=" + telefono + ", direccion=" + direccion + ", cantidad=" + cantidad + ", precio=" + precio + ", correo=" + correo + '}';
    }
    
    
}
