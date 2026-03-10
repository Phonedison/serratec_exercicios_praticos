/*
Questão 6 - Verificar se uma matriz 3x3 é identidade
- **Descrição:**
  - Faça um programa que leia uma matriz 3x3 e verifique se ela é uma matriz identidade. A matriz identidade é uma matriz quadrada onde os elementos da diagonal principal são iguais a 1 e os demais são iguais a 0.
*/

programa {

  funcao inicio () {
      //declaração das matrizes / variaveis
      const inteiro QTD = 3
      inteiro matriz[QTD][QTD], coluna, linha
      //loop para percorrer todas as linhas da matriz
      para (linha = 0; linha < QTD; linha++) {
        //loop para percorrer todas as colunas da matriz
        para (coluna = 0; coluna < QTD; coluna++) {
          //se o valor da coluna for igual ao valor da linha
          se (coluna == linha) {
            //a celula da matriz recebe o valor 'um'
            matriz[linha][coluna] = 1

          } senao {
             //a celula da matriz recebe o valor 'zero'
            matriz[linha][coluna] = 0
          }
        }
      }
      //método para imprimir a matriz
      escreva("Apresentação de matriz identidade:\n\n")
        //loop para percorrer todas as linhas da matriz
        para (linha = 0; linha < QTD; linha++) {
          //loop para percorrer todas as colunas da matriz
          para (coluna = 0; coluna < QTD; coluna++) {
            
            escreva(matriz[linha][coluna] + "\t")
          }
          escreva("\n")
        }
  }
}