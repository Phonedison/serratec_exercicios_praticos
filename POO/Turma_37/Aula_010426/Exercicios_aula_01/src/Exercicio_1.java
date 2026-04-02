
import java.util.Scanner;


public class Exercicio_1 {

  /*
  1 Calculadora de Média: Declare duas variáveis do tipo double para notas de um aluno. Calcule a média e exiba: "Aprovado" se for >= 7, "Reprovado" se < 7, e "Aprovado Parabéns" se for exatamente 10.
  Elabore este exercicio duas vezes, uma utilizando If/else e outra utilizando ternário.
  */
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    double nota1, nota2;
    
    System.out.println("Digite a primeira nota: ");
    nota1 = sc.nextDouble();

    System.out.println("Digite a segunda nota: ");
    nota2 = sc.nextDouble();

    double media = (nota1 + nota2) / 2;
    String resultado;

 
    // Utilizando If/else
      if(media == 10) {
        resultado = "Aprovado Parabéns";
      } else if (media >= 7) {
        resultado = "Aprovado";
      } else {
        resultado = "Reprovado";
      }
      System.out.println(resultado);

    
    // Utilizando operador ternário
    resultado = (media == 10) ? "Aprovado Parabéns" : (media >= 7) ? "Aprovado" : "Reprovado";
    System.out.println("Aluno aprovado com : " + media);
    System.out.println(resultado); 

    sc.close();
  }

}
