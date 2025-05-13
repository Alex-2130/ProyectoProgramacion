/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package izv.proyectoprogramacion;

/**
 *
 * @author Mañana
 */
public class Artistico extends Evento{
    
    protected String artista;
    protected String tipo;

    public Artistico(String artista, String tipo, String horario, 
            String servicios, String web, String name, String decripcion, String transporte, Boolean entrada) {
        super(horario, servicios, web, name, decripcion, transporte, entrada);
        this.artista = artista;
        this.tipo = tipo;
    }

    
    
     
    
}
