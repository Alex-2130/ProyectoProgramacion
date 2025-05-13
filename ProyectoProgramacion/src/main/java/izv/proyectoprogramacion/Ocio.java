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
public abstract class Ocio extends Categoria{
    
    protected String horario;
    protected String servicios;
    protected String web;

    public Ocio(String horario, String servicios, String web, String name, String decripcion, String transporte, Boolean entrada) {
        super(name, decripcion, transporte, entrada);
        this.horario = horario;
        this.servicios = servicios;
        this.web = web;
    }

    

    
        
}
