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
public class PuntoDeInteres extends Categoria{
    
    protected String añoFundacion;
    protected String tipo;
    protected String vista;

    public PuntoDeInteres(String añoFundacion, String tipo, String vista, String name, String decripcion, String transporte, Boolean entrada) {
        super(name, decripcion, transporte, entrada);
        this.añoFundacion = añoFundacion;
        this.tipo = tipo;
        this.vista = vista;
    }
    
    

    
    
    @Override
    public void buscar(ArrayList<String> PalabrasClave) {
        
    }
    
}
