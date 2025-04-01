/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package rut.examen1_2eval_24_25;

import java.util.Scanner;

/**
 *
 * @author Rut
 */
public class ALUS_Examen1_2Eval_24_25 {

    public static void main(String[] args) {
        Scanner keyboard = new Scanner(System.in);
        
        System.out.println("Exam 1. 2nd Eval");
        System.out.println("Registering new pupils....");
        
        // 6. Creación del alumno Pepe Cuenca, de 22 años, de 1daw-a. 
        Pupil pepe = new Pupil("1DAW-A", "Pepe Cuenca", 22);
        
        // 6. Mostrar al alumno por pantalla
        System.out.println(pepe.toString());
        System.out.println(" ");

        // 7. Media de las notas
        System.out.println("Media de Pepe: " + String.format("%.2f", pepe.gradesMean()));
        System.out.println(" ");
        
        // 8. Cambio de notas y mostrar alumno 
        pepe.changeGrades(10, 0);
        pepe.changeGrades(9, 1);
        pepe.changeGrades(8, 2);
        pepe.changeGrades(10, 3);
        
        System.out.println("Pepe con sus nuevas notas: ");
        System.out.println(pepe.toString());
        System.out.println(" ");
        
        // Creación de un array de 8 alumnos, llamado devPupils, 
        // con los siguientes datos:
        /* Ana Soria, 33 años, 1daw-a
           Josefina Laroles, 18 años, 1dam-a
           Jorge Sanz, 25 años, 1daw-b
           Pablo Rus, 46 años, 1dam-b
           Julio Arcas, 19 años, 1dam-a
           Francisca Paulsen, 20 años, 1dam-a
           Paula Polo, 70 años, 1 daw-b
           Miguel Quesada, 59 años, 1daw-a
        */
        Pupil [] devPupils = new Pupil[8];
        
        Pupil ana = new Pupil("1DAW-A", "Ana Soria", 33);
        devPupils[0] = ana;
        Pupil josefa = new Pupil("1DAM-A", "Josefina Laroles", 18);
        devPupils[1] = josefa;
        Pupil jorge = new Pupil("1DAW-B", "Jorge Sanz", 25);
        devPupils[2] = jorge;
        Pupil pablo = new Pupil("1DAM-B", "Pablo Rus", 46);
        devPupils[3] = pablo;
        Pupil julio = new Pupil("1DAM-A", "Julio Arcas", 19);
        devPupils[4] = julio;
        Pupil francisca = new Pupil("1DAM-A", "Francisca Paulsen", 20);
        devPupils[5] = francisca;
        Pupil paula = new Pupil("1DAW-B", "Paula Polo", 70);
        devPupils[6] = paula;
        Pupil miguel = new Pupil("1DAW-A", "Miguel Quesada", 59);
        devPupils[7] = miguel;
        
        System.out.println("********DEVELOPMENT PUPILS******");
        
        // 9.Crear un array de 8 Pupil y mostrar los datos  --> 0,3
        showPupils(devPupils);
        
        
        // 10. MOSTRAR TODOS LOS DATOS DEL ALUMNO CON LA NOTA MÁS ALTA  
        System.out.println(" ***********  THE MOST BRILLIANT PUPIL ************");
        Pupil highest = mejorAlumno(devPupils);  
        System.out.println(highest);                    
        
        
        // 11. MOSTRAR CUANTOS ALUMNOS TIENEN NOMBRES ACABADOS EN S EN DAM Y DAW -- 1pto
          int pupilsDam = 0;
          int pupilsDaw = 0;
//          for(Pupil alumno : devPupils){
//              if(alumno)
//          }
       
        System.out.println("NUMBER OF PUPILS IN DAM WHOSE NAMES END WITH S: " );
        System.out.println("NUMBER OF PUPILS IN DAW WHOSE NAMES END WITH S: " );
        
    } // FIN MAIN
    
    
    
    // 9. showPupils  --> 0,5
    public static void showPupils(Pupil[] alumnos){
        for (int i = 0; i < alumnos.length; i++) {
            System.out.println(" ");
            System.out.println(alumnos[i].toString());
        }
    }
    
    
    
   // 10. Devolver el alumno más brillante --> 2,2 ptos
    public static Pupil mejorAlumno(Pupil[] myPupils){ 
       float max = 0;
       
       Pupil brilliant = myPupils[0];
       
        for (Pupil myPupil : myPupils) {
            if (myPupil.highestGrade() > max) {
                max = myPupil.highestGrade();
                brilliant = myPupil;
            }
        }
        
        System.out.println("Higuest grade: " + String.format("%.2f", max));
        
        return brilliant;
    }
    
}
