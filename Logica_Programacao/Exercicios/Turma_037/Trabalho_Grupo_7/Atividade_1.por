/*
Questão 1 - Exibir os divisores de um número positivo
  - Crie um programa que receba um número inteiro positivo e exiba todos os seus divisores. Não 'permita a digitação de números negativos' e solicite a digitação de um número positivo.
*/

programa {
  funcao inicio (){
    // declaração de variaveis
    inteiro numero, i = 0
    // método de leitura do valor
    escreva ("Informe um número: ")
    leia(numero)
      //loop para exibir todos os divisores presentes do numero informado entre 0 até o valor da variavel 'numero'
      para (i = 1; i < numero; i++) {
          //verificar se é diviso
          se (numero % i == 0 ) { //se for, informa
              escreva ("O número " + i +" é um divisor de " + numero + "\n")
          }
      }
  }
}