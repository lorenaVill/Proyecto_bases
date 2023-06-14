/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Project/Maven2/JavaApp/src/main/java/${packagePath}/${mainClassName}.java to edit this template
 */

package co.edu.uis.elromasal;

import co.edu.uis.elromasal.controlador.Conexion;
import co.edu.uis.elromasal.controlador.Controlador_Pantallas;





/**
 *
 * @author Usuario
 */
public class ElRomasal {

    public static void main(String[] args) {
        Conexion.conectar();
        Controlador_Pantallas.abir_pantalla_menu();
    }
}
