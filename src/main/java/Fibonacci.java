import java.util.InputMismatchException;
import java.util.Scanner;

public class Fibonacci {
    public static void main(String[] args) {
        boolean exit = false;
        do{
            Scanner scanner = new Scanner(System.in);
            long n = 0;
            System.out.println("Introduzca un número: ");
            try{
                n = scanner.nextLong();
                System.out.println("El fibonacci de " + n + " es: " + fibonnacciRecursivo(n));
                exit = true;
            }catch (InputMismatchException ime){
                System.out.println("Debe de introducir un número");
            }
        }while (!exit);
    }


    static long fibonnacciRecursivo(long n){
    if(n <= 1)
        return n;
    return (fibonnacciRecursivo(n - 1) + fibonnacciRecursivo(n - 2));
    }
}
