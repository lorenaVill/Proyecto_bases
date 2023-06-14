/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package co.edu.uis.elromasal.modelo;

/**
 *
 * @author Usuario
 */
public class RazasAnimal {
    
    private int id_raza;
    private String nombre;
    private String destinacion;

    public RazasAnimal(int id_raza, String nombre, String destinacion) {
        this.id_raza = id_raza;
        this.nombre = nombre;
        this.destinacion = destinacion;
    }

    public int getId_raza() {
        return id_raza;
    }

    public void setId_raza(int id_raza) {
        this.id_raza = id_raza;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDestinacion() {
        return destinacion;
    }

    public void setDestinacion(String destinacion) {
        this.destinacion = destinacion;
    }

    @Override
    public String toString() {
        return "RazasAnimal{" + "id_raza=" + id_raza + ", nombre=" + nombre + ", destinacion=" + destinacion + '}';
    }
    
    
    
}
