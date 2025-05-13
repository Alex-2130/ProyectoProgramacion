/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package izv.proyectoprogramacion;

import ExceptionPackage.BadNameException;
import Users.Valoracion;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Mañana
 */

public abstract class Categoria implements Buscador, Comparable<Categoria>{
    
    protected String name;
    protected String decripcion;
    protected String transporte;
//    protected Ubicacion ubicacion;
    protected ArrayList<Valoracion> reseñas;
    protected Boolean entrada;
    protected Double mediaValoraciones;

    public Categoria(String name, String decripcion, String transporte,
            Boolean entrada) {
        setName(name);
        setReseñas(reseñas);
        setMediaValoraciones(mediaValoraciones);
        this.decripcion = decripcion;
        this.transporte = transporte;
        this.entrada = entrada;
        
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        try {
            if (name == null || name.isEmpty())throw new BadNameException();
            for (int i = 0; i < name.length(); i++) {
                if (Character.isDigit(name.charAt(i)))
                    throw new BadNameException();
            }           
            this.name = name;

            } catch (BadNameException ex) {
                ex.getMessage();
            }
        }
    

    public String getDecripcion() {
        return decripcion;
    }

    public void setDecripcion(String decripcion) {
        this.decripcion = decripcion;
    }

    public String getTransporte() {
        return transporte;
    }

    public void setTransporte(String transporte) {
        this.transporte = transporte;
    }

    public ArrayList<Valoracion> getReseñas() {
        return reseñas;
    }

    public void setReseñas(ArrayList<Valoracion> reseñas) {
        this.reseñas = reseñas;
    }

    public Boolean getEntrada() {
        return entrada;
    }

    public void setEntrada(Boolean entrada) {
        this.entrada = entrada;
    }

    public Double getMediaValoraciones() {
        return mediaValoraciones;
    }

    public void setMediaValoraciones(Double mediaValoraciones) {
        this.mediaValoraciones = mediaValoraciones;
    }

    @Override
    public int compareTo(Categoria o) {
        return this.name.compareToIgnoreCase(o.name);
    } 
}
