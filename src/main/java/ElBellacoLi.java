import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.util.Arrays;
import java.util.Scanner;

public class ElBellacoLi {
    public static void main(String[] args) {
        String linea;
        boolean exit = false;
        int numeroCaso = 0;
        do{
            numeroCaso++;
            Scanner scanner =  new Scanner(System.in);
            System.out.println("Introduzca su ecuación de tres enteros: ");
            linea = scanner.nextLine();
            if(linea.split("\\s").length == 3 ){
                String[] ecuacion = linea.split("\\s");
                int a = Integer.valueOf(ecuacion[0]), b = Integer.valueOf(ecuacion[1]), c = Integer.valueOf(ecuacion[2]);
                System.out.println("Caso "+ numeroCaso + ": " + mostrarEcuacion(a,b,c));

            }else{
                System.out.println("El límite de enteros de la ecuación es 3");
            }
        }while (!exit);
        
    }







     static String mostrarEcuacion(int a,int b,int c){
        String solucion = null;
        //Operaciones normales
        if(a + b == c)
            solucion = a +"+" + b + "=" + c;
        else if ( a - b == c)
            solucion = a +"-" + b + "=" + c;
        else if (a * b == c)
            solucion = a +"*" + b + "=" + c;
        else if (a / b == c)
            solucion = a +"/" + b + "=" + c;
        //Operaciones despejadas
        //Suma
        else if(c + b == a)
            solucion =  c +"+" + b + "=" + a;
        //Resta
        else if(c - b == a)
            solucion = c +"-" + b + "=" + a;
        else if(c - a == b)
            solucion = c +"-" + a + "=" + b;
        else if(a - c == b)
            solucion = a +"-" + c + "=" + b;
        //Multiplicacion
        else if(a * c == b)
            solucion = a +"*" + c + "=" + b;
        else if(b * c == a)
            solucion = b +"*" + c + "=" + a;
        //Division
        else if(a / c == b)
            solucion = a +"/" + c + "=" + b;
        else if(c / b == a)
            solucion = c +"/" + b + "=" + a;
        else if(c / a == b)
            solucion = c +"/" + a + "=" + b;
        else if(b / a == c)
            solucion = b +"/" + a + "=" + c;
        else if(b / c == a)
            solucion = b +"/" + c + "=" + a;

        return solucion;
    }
}
