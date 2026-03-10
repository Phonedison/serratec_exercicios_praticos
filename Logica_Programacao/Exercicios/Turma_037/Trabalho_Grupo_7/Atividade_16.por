/*
Questão 16 - Contar Números Negativos em um Vetor
- **Descrição:**
  - Escreva uma função que receba um vetor de 10 números e retorne quantos são negativos.
*/

programa {
  funcao inicio() {
    
    //variavel constante que define a quantidade de casas do vetor e a repetição do loop
    const inteiro QTD = 10
    
    //declarando o vetorial e o contador
    inteiro vetor[QTD], contador_negativo = 0

      //loop de repetição para o preenchimento dos vetores
      para (inteiro i = 0; i < QTD; i++) {
        escreva("Digite o "+ (i + 1) +"º valor: ")
        leia(vetor[i])

        //tomada de decisão,caso o valor presente na casa do vetor for menor que zero, o contador contabiliza
        se (vetor[i] < 0) {
            //contador_negatico + 1
            contador_negativo++
        }
        
      }
    escreva("\n\nCom base nos números informados.\n\nForam informação:")

    //escreve a quantidade de números negativos
    escreva("\n" + contador_negativo + " números negativos\n")
    
    //escreve a quantidade de números positivos (numeros identificados como negativos - a quantidade total de casas do vetor)
    escreva((QTD - contador_negativo) + " números positivo\n")
  }
}