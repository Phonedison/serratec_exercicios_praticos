/*
Encontrar o Maior Valor em um Vetor

- Crie um vetor de 5 números inteiros.
- Peça ao usuário para preencher os valores.
- Descubra e exiba o maior número do vetor.
*/

programa {

    funcao inicio () {
      const inteiro QTD = 5
      inteiro numeros[QTD], i

        para (i = 0; i < QTD; i++) {
            escreva ("Digite o "+ (i+1) +"º numero: ")
            leia(numeros[i])
        }

      inteiro maior_numero = 0

        para (i = 0; i < QTD; i++) {
            se (numeros[i] > maior_numero){
              maior_numero = numeros[i]
            }
        }
      
      limpa()
      escreva("Entre os números informados: \n\n")
      
        para (i = 0; i < QTD; i++) {
            escreva("| " + numeros[i] + " |\t")
          }

      escreva("\n\nO maior número é: " + maior_numero + "\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 821; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */