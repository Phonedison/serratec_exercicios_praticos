/*
Questão 18 - Soma da Diagonal Secundária de uma Matriz 4x4
- **Descrição:**
  - Escreva um programa que calcule e exiba a soma dos elementos da diagonal secundária de uma matriz 4x4.
*/

programa {
  funcao inicio () {

    const inteiro QTD = 4
    inteiro matriz[QTD][QTD], soma = 0, linha = 0, coluna = 0

    //método de repetição apra capitação dos valores para a matriz
    para (linha = 0; linha < QTD; linha++) {
      para( coluna = 0; coluna < QTD; coluna++) {
        escreva("Digite o valor da " + (linha+1) +"ª linha e "+ (coluna+1)+"ª coluna: ")
        leia(matriz[linha][coluna])
      }
      escreva("\n")
    }

    //loop de repetição para imprir a matriz e somar os valores da diagonal secundária da matriz
    para (linha = 0; linha < QTD; linha++) {

        //cria uma variavel para a leitura da coluna alvo
        inteiro coluna_diagonal_secundaria = QTD - 1 -linha

        //imprime a matriz com os valores
        escreva("|\t" + matriz[linha][coluna]+ "\t")

        //soma o valor dos elementos presentes na diagonal secundária
        soma = soma + matriz[linha][coluna_diagonal_secundaria]
      }
 
    //apresente a soma dos valores
    escreva(" A soma dos elementos da diagonal secundária da matriz é: " + soma)

  }
}