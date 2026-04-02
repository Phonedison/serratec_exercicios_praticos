
public class Exercicio_6 {

/*
6 Desconto INSS: Crie uma variável para o salário. Aplique a lógica de regra do INSS e exiba o valor final com desconto.
  Faixa 1: Até R$ 1.518,00 -> Alíquota de 7,5%
  Faixa 2: de R$ 1.518,01 até R$ 2.793,88 -> Alíquota de 9%.
  Faixa 3: de R$ 2.793,89 até R$ 4.190,83 -> Alíquota de 12%.
  Faixa 4: Acima de R$ 4.190,84 -> Alíquota de 14%.
    Elabore este exercicio duas vezes, uma utilizando If/else e outra utilizando o switch
*/
  public static void main(String[] args) {
      
   Scanner sc = new Scanner(System.in);

   System.out.println("Digite o valor Salarial: ");
   double valor = sc.nextDouble();

   double desconto_liquota;

   if (valor >= 4190.84) {
      desconto_liquota = 0.14;

   } else if (valor >= 2793.88) {
      desconto_liquota = 0.12;

   } else if (valor >= 1518.01) {
      desconto_liquota = 0.09;

   } else {
      desconto_liquota = 0.075;
   }
   
    double imposto = desconto_liquota * valor;
    double valor_liquido =  valor - imposto;

    System.out.println(desconto_liquota);
    System.out.println("O valor de desconto no salário foi : R$" + String.format("%.2f", imposto));
    System.out.println("Salário com desconto : R$" + String.format("%.2f",valor_liquido));

   sc.close();
  }
}
