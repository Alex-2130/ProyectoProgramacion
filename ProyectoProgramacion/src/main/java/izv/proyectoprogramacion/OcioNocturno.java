/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package izv.proyectoprogramacion;

import Users.Valoracion;
import java.util.ArrayList;

/**
 *
 * @author Mañana
 */
public class OcioNocturno extends Ocio{
   
    protected int edad;
    protected String reserva;
    protected String lista;

    public OcioNocturno(int edad, String reserva, String lista, String horario, String servicios, String web, String name, String decripcion, String transporte, Boolean entrada) {
        super(horario, servicios, web, name, decripcion, transporte, entrada);
        this.edad = edad;
        this.reserva = reserva;
        this.lista = lista;
    }

    

    @Override
    public void buscar(ArrayList<String> PalabrasClave) {
        
    }
    
}
