/*
Questão 21 - Encontrar a Linha com Maior Soma em uma Matriz 5x5
- **Descrição:**
  - Desenvolva um algoritmo que leia uma matriz 5x5 e encontre a linha cuja soma dos elementos seja a maior entre todas.
*/

programa {

  inclua biblioteca Util --> util

  funcao inicio () {
    //declaração das variáves, matriz e vetor
    const inteiro QTD = 5
    inteiro matriz [QTD][QTD], soma[QTD], maior_valor = 0, linha = 0, coluna = 0
    cadeia resposta = ""

      //loop para passar por todas as linhas
      para ( linha = 0; linha < QTD; linha++ ) {
        //loop para passar por todas as colunas
        para(coluna = 0; coluna < QTD; coluna++) {
          //utilizando a função 'sorteia(min, max)' para sortiar os valores da matriz
          matriz[linha][coluna] = util.sorteia(0, 20)
          //vetor 'soma[]' recebe o valor da soma entre as colunas da linha da matriz
          soma[linha] = soma[linha] + matriz[linha][coluna]
        }
      }

       //loop para passar por todas as linhas
      para (linha = 0; linha < QTD; linha++) {
        //loop para passar por todas as colunas
        para (inteiro index = 0; index < QTD; index++) {
          //verifica o valor do vetor soma[] 
          se (soma[index] >= maior_valor) { //se for maior
            //variavel temporaria para validar o maior valor no loop
            maior_valor = soma[index]
            //atribui um valor para a variavel cadeia 'resposta'
            resposta = "\n\nA soma dos valores da "+ (index + 1) +"ª Linha é o maior\n"
          }
      }
      //loop para imprimir os valores das colunas da matriz
      para (coluna = 0; coluna < QTD; coluna++) {
        //saida dos valores da matriz por linha e coluna
        escreva("|\t"+ matriz[linha][coluna] + "\t")
      }
      //após a saida dos valores, imprime o valor da soma da linha
      escreva("| O valor da soma da "+ (linha + 1) +"ª linha: " + soma[linha] + "\n")
      }

    escreva("\n")
    //imprime a informação da maior linha
    escreva(resposta)
  }
}