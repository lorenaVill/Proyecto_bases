/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package co.edu.uis.elromasal.modelo;

/**
 *
 * @author Usuario
 */
public class Ubicacion {
    
    private int id_ubicacion;
    private String nombre;
    private int capacidad;

    public Ubicacion(int id_ubicacion, String nombre, int capacidad) {
        this.id_ubicacion = id_ubicacion;
        this.nombre = nombre;
        this.capacidad = capacidad;
    }

    public int getId_ubicacion() {
        return id_ubicacion;
    }

    public void setId_ubicacion(int id_ubicacion) {
        this.id_ubicacion = id_ubicacion;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getCapacidad() {
        return capacidad;
    }

    public void setCapacidad(int capacidad) {
        this.capacidad = capacidad;
    }

    @Override
    public String toString() {
        return "Raza{" + "id_ubicacion=" + id_ubicacion + ", nombre=" + nombre + ", capacidad=" + capacidad + '}';
    }
    
    
}
