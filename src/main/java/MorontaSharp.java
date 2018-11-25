import java.util.InputMismatchException;
import java.util.Scanner;

public class MorontaSharp {
    public static void main(String[] args) {
        boolean exit = false;
        boolean valido = true;

        do{
            int n;
            int x = 0;
            String sentencia;
            Scanner scanner = new Scanner(System.in);
            System.out.println("Inserte la cantidad de sentencias ( 1 - 150 ): ");
            try {
                n = scanner.nextInt();
                if(n >= 1 && n <= 150){
                    do{
                        System.out.println("Inserte la sentencia " + n);
                        sentencia = scanner.next();
                        if(sentencia.length() == 3){
                            switch (sentencia){
                                case "X++":
                                    x++;
                                    n--;
                                    break;
                                case "++X":
                                    ++x;
                                    n--;
                                    break;
                                case "X--":
                                    x--;
                                    n--;
                                    break;
                                case "--X":
                                    --x;
                                    n--;
                                    break;
                                default:
                                    System.out.println("Sentencia no válida");
                                    break;
                            }
                        }else{
                            System.out.println("Sentencia no válida");
                        }
                        if(n == 0){
                            valido = true;
                            exit = true;
                        }

                    }while (!exit);
                    System.out.println("El resultado es: " + x);
                }else{
                    System.out.println("Por favor, inserte una cantidad de sentencias válida");
                }
            }catch (InputMismatchException ime){
                System.out.println("Por favor, introduzca un número");
                valido =false;
            }

        }while (!valido);
    }
}
