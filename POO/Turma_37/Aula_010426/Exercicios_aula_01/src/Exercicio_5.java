public class Exercicio_5 {
  /*5 Concatenação de Tipos: Crie variáveis de diferentes tipos (int, double, String, boolean) e exiba uma frase que concatene todas elas em uma única mensagem de saída. */

  public static void main(String[] args) {
      
  int valor_1 = 4;
  double valor_2 = 4.3;
  String nome = "Lucas";
  boolean info = true;

  String saida = ("A soma do valor '" + valor_1 + "' mais o '" + valor_2 + "' não é '" + nome + "' e nem '" + info + "'");
  System.out.println(saida + " ;)");

  }
}
