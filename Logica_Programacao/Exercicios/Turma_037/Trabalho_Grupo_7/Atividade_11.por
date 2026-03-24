/*
Questão 11 - Média dos números pares e ímpares de um vetor
- **Descrição:**
  - Desenvolva um algoritmo que receba um vetor de 10 números e retorne a média dos números pares e a média dos números ímpares separadamente.
*/

programa {
  funcao inicio() {
    //declaração de variaveis / vetores
    const inteiro QTD = 10
    inteiro numeros[QTD], soma_par = 0, soma_impar = 0, contador_impares = 0, contador_pares = 0

    //loop de repetição para preencher as casas do 'vetor[]'
    para (inteiro i = 0; i < QTD; i++) {
      
      escreva("Digite " + (i+1) + "º número: ")
      leia(numeros[i])
        // verifica se o valor do 'vetor[i]' tem resto igual a zero
        se (numeros[i]%2 == 0) { //caso seja
            //contabiliza no contador
            contador_pares++
            //adiciona o valor no vertor acumulativo
            soma_par += numeros[i]
            
        } senao { //caso não seja
           //contabiliza no contador
          contador_impares++
           //adiciona o valor no vertor acumulativo
            soma_impar += numeros[i]
        }
    }
  //informa a média de numeros pares e numeros impares
  escreva("\n")
  escreva("A média da soma dos números pares é: " + (soma_par / contador_pares))
  escreva("\n")
  escreva("A média da soma dos números impares é: " + (soma_impar / contador_impares))
  escreva("\n")
  }
}