/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package izv.proyectoprogramacion;

import java.util.ArrayList;

/**
 *
 * @author Mañana
 */
public class Bar extends Ocio{
    
    protected boolean tapasAElegir;
    protected boolean juegosDeMesa;
    protected boolean deportes;

    public Bar(boolean tapasAElegir, boolean juegosDeMesa, boolean deportes, 
            String horario, String servicios, String web, String name, String decripcion, String transporte, Boolean entrada) {
        super(horario, servicios, web, name, decripcion, transporte, entrada);
        this.tapasAElegir = tapasAElegir;
        this.juegosDeMesa = juegosDeMesa;
        this.deportes = deportes;
    }

   

    @Override
    public void buscar(ArrayList<String> PalabrasClave) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
    
    
}
