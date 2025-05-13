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
public class Evento extends Ocio{
    
    protected String duracion;
    protected double coste;
    protected int aforo;

    public Evento(String horario, String servicios, String web, String name, String decripcion, String transporte, Boolean entrada) {
        super(horario, servicios, web, name, decripcion, transporte, entrada);
    }

    @Override
    public void buscar(ArrayList<String> PalabrasClave) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
