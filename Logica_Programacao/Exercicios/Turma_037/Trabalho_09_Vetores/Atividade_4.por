/*

Contar Quantos Números São Pares

- Crie um vetor de 6 números inteiros.
- Peça ao usuário para preencher os valores.
- Conte quantos números são pares e exiba o total.

*/

programa {
  funcao inicio () {
    
    const inteiro QTD = 6
    inteiro lista[QTD], i = 0, n_par = 0

    para (i = 0; i < QTD; i++) {
        escreva("Digite "+ (i+1) + "º número: ")
        leia(lista[i])

          se (lista[i] % 2 == 0) {
              n_par++
          }
    }
    escreva("\n")
    inteiro n_impar = QTD - n_par

    escreva("Foram informados "+ QTD + ", com base nos valores, temos:\n\n")
    escreva(n_par + " números PARES\n")
    escreva(n_impar + " números IMPARES\n")

  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 388; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */