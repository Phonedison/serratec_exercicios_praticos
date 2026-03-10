/*
Questão 15 - Soma de Dois Vetores
- **Descrição:**
  - Crie um programa que leia dois vetores de 5 posições e gere um terceiro vetor contendo a soma dos valores nas respectivas posições.
*/

programa {

  funcao inicio () {
    const inteiro QTD = 5
    inteiro vetor_1[5], vetor_2[5], soma_valores[5]

    escreva("Preencha os valores do 'PRIMEIRO' vetor:\n")

      //loop para o método de leitura dos valores do vetor_1
      para(inteiro i = 0; i < QTD; i++) {

        escreva("Digite o "+ (i + 1) + "º valor: ")
        leia(vetor_1[i])

      }

    escreva("\n")
    escreva("Preencha os valores do 'SEGUNDO' vetor:\n")

      //loop para o método de leitura dos valores do vetor_1
      para(inteiro i = 0; i < QTD; i++) {
        
        escreva("Digite o "+ (i + 1) + "º valor: ")
        leia(vetor_2[i])

      }

    escreva("\n")
    escreva("A soma dos valores do 'PRIMEIRO VETOR' com o 'SEGUNDO VETOR':\n")
      //Loop para somar os valores do vetor_1 e vetor_2
      para (inteiro i = 0; i < QTD; i++) {
        //o vetor soma_valores[] recebe o valor da soma entre os dois vetores com base na casa
        soma_valores[i] = vetor_1[i] + vetor_2[i]

        //imprime o valor do vetor_1 e vetor_2 e o somatório dos valores
        escreva(vetor_1[i] +" + "+ vetor_2[i] +" = "+ soma_valores[i] + "\n")

      }
  }
}