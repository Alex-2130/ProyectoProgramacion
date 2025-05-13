/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package izv.proyectoprogramacion;

/**
 *
 * @author Mañana
 */
public class Deportivo extends Evento{
    
    protected String tipoDeDeporte;
    protected String tipoDeCompeticion;

    public Deportivo(String tipoDeDeporte, String tipoDeCompeticion, 
            String horario, String servicios, String web, String name, String decripcion, String transporte, Boolean entrada) {
        super(horario, servicios, web, name, decripcion, transporte, entrada);
        this.tipoDeDeporte = tipoDeDeporte;
        this.tipoDeCompeticion = tipoDeCompeticion;
    }

    
    
    
    
}
