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
public class Ruta extends PuntoDeInteres{
    
    protected String distancia;
    protected String horarioRecomendado;
    protected String movilidad;

    public Ruta(String distancia, String horarioRecomendado, String movilidad, String añoFundacion, String tipo, String vista, String name, String decripcion, String transporte, Boolean entrada) {
        super(añoFundacion, tipo, vista, name, decripcion, transporte, entrada);
        this.distancia = distancia;
        this.horarioRecomendado = horarioRecomendado;
        this.movilidad = movilidad;
    }
    
    
    
    
    
}
