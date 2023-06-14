/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package co.edu.uis.elromasal.controlador;

import co.edu.uis.elromasal.vista.VistaClienteCarne;
import co.edu.uis.elromasal.vista.VistaMenu;
import co.edu.uis.elromasal.vista.VistaRazas;

/**
 *
 * @author Usuario
 */
public class Controlador_Pantallas {
    
    private static VistaClienteCarne pantalla_ClienteCarne;
    
    private static VistaMenu pantalla_menu;
    
    public static void abir_pantalla_menu(){
    if(pantalla_menu == null){
    pantalla_menu = new VistaMenu();
    }
    pantalla_menu.setVisible(true);
    pantalla_menu.setLocationRelativeTo(null);
    }
    
    public static void cerrar_pantalla_menu(){
        pantalla_menu.setVisible(false);
        pantalla_menu = null;
    }
   
    
    public static void abir_pantalla_ClienteCarne(){
    if(pantalla_ClienteCarne == null){
    pantalla_ClienteCarne = new VistaClienteCarne();
    }
    pantalla_ClienteCarne.setVisible(true);
    pantalla_ClienteCarne.setLocationRelativeTo(null);
    }
    
    public static void cerrar_pantalla_ClienteCarne(){
        pantalla_ClienteCarne.setVisible(false);
        pantalla_ClienteCarne = null;
        
       
    }

    public static void cerrar_pantalla_menu_salir(){
        pantalla_menu.setVisible(false);
        pantalla_menu = null;
    }
    
    
    private static VistaRazas pantalla_razas;
    
    public static void abrir_pantalla_Razas(){
        if (pantalla_razas == null){
            pantalla_razas = new VistaRazas();
        }
        pantalla_razas.setVisible(true);
        pantalla_razas.setLocationRelativeTo(null);
    }
    public static void cerrar_pantalla_Razas(){
       pantalla_razas.setVisible(false);
       pantalla_razas = null;
    }
    
}


