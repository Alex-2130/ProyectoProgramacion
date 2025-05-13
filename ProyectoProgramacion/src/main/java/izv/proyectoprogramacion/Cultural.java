/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package izv.proyectoprogramacion;

/**
 *
 * @author Mañana
 */
public class Cultural extends Evento{
    
    protected String historia;
    protected String festividad;

    public Cultural(String historia, String festividad, String horario, 
            String servicios, String web, String name, String decripcion, String transporte, Boolean entrada) {
        super(horario, servicios, web, name, decripcion, transporte, entrada);
        this.historia = historia;
        this.festividad = festividad;
    }

    
    
    
}
