/*

Atividade 3 – Encontre o Maior Valor em uma Matriz

- Crie uma matriz 3x3 de números inteiros.
- Peça ao usuário para preencher os valores.
- Descubra e exiba o maior número da matriz.

*/


programa {
	funcao inicio() {
		const inteiro QTD = 3
		inteiro matriz[QTD][QTD], maior_valor = 0, coluna = 0, linha = 0

			para (linha = 0; linha < QTD; linha++) {
				para (coluna = 0; coluna < QTD; coluna++) {

					escreva("informe o 'valor' para preencher " + (coluna+1) + "ª coluna e " + (linha+1) +"ª linha: ")
					leia(matriz[linha][coluna])

					se (matriz[linha][coluna] > maior_valor) {
						maior_valor = matriz[linha][coluna]
					}
				}
			}
			
		escreva("\nCom base nos valores informado:\n\n")
		
			para (linha = 0; linha < QTD; linha++) {
				para(coluna = 0; coluna < QTD; coluna++){
					escreva(matriz[linha][coluna] + "\t")
				}
				escreva("\n")
			}
		escreva("\nO maior valor é: "+ maior_valor)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 921; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */