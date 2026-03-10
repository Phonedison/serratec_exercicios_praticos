/*
 Questão 8 - Verificar se um número é primo

- **Descrição:**
  - Escreva um programa que solicite ao usuário um número e informe se ele é primo ou não.
*/

programa {
  funcao inicio () {
    //declaração das variaveis
    inteiro numero
    cadeia tipo
  //método de leitura e captação do valor para a variavel
  escreva("Digite um número: ")
  leia(numero)
    //checa se o resto da divisão por dois é igual a zer0
    se (numero % 2 == 0) {
      //se for, variavel cadeia 'tipo' recebe a palara par
     tipo = "par"
    } senao {
      //se não for, variavel cadeia 'tipo' recebe a palara impar
      tipo = "impar"
    }
  //imprime o valor das variaveis 'numero' e 'tipo'
  escreva("\nO número " + numero +" é " + tipo + "\n")
  }
}