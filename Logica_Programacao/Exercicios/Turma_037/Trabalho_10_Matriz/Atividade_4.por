/*

Atividade 4 – Somar Elementos da Diagonal Principal

- Crie uma matriz 3x3 de números inteiros.
- Peça ao usuário para preencher os valores.
- Some apenas os elementos da diagonal principal. Exiba o resultado.
- (Diagonal principal: elementos em que a linha é igual à coluna, ou
  seja, [0][0], [1][1], [2][2])

*/


programa {
	
	funcao inicio() {
	
		const inteiro QTD = 3
		inteiro matriz[QTD][QTD], soma_diagonal = 0, coluna = 0, linha = 0

			para (linha = 0; linha < QTD; linha++) {
				para(coluna = 0; coluna < QTD; coluna++) {
					
					escreva("informe o 'valor' para preencher " + (coluna+1) + "ª coluna e " + (linha+1) +"ª linha: ")
					leia(matriz[linha][coluna])
	
						se(coluna == linha) {
							soma_diagonal += matriz[linha][coluna]
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
			
		escreva("\nO valor da soma dos valores em diagonal é: "+ soma_diagonal)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 994; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */