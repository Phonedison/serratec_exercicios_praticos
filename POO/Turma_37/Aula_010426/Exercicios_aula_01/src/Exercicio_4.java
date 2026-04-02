import java.util.Scanner;

public class Exercicio_4 {
  /*
  4 Tabuada com For: Utilize a estrutura for para imprimir a tabuada do número 5 (de 5x1 até 5x10).
  */
 
 
 public static void main(String[] args) {
   Scanner sc = new Scanner(System.in);

    System.out.println("Digite o valor da tabuada: ");
    int valor = sc.nextInt();
   
    for (int i = 1; i <=10; i++) {
      System.out.println(i + " X " + valor + " = " + ( i * valor));
    }

  sc.close();
  }
}
