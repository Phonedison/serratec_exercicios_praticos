public class Exercicio_3 {

  /*3 Contador de números: Faça um programa que percorra números entre 0 e 30 e exiba a quantidade de números pares e impares. */

  public static void main(String[] args) {
    int contador = 0;
      for(int i = 0; i <= 30; i++) {

       if(i % 2 == 0) {
       contador++;
       }
       
      }

      System.out.println("Quantidade de Numeros PARES: "+ contador);
      System.out.println("Quantidade de Numeros IMPARES: "+ (30 - contador));
  }
}
