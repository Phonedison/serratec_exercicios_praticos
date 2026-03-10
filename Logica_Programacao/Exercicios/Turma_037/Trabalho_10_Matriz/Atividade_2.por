/*

Atividade 2 – Somar os Elementos de uma Matriz

- Crie uma matriz 5x5 de números inteiros.
- Peça ao usuário para preencher os valores.
- Calcule a soma de todos os elementos e exiba o resultado.

*/


programa
{
	
	funcao inicio()
	{
		const inteiro QTD = 5
		inteiro matriz[QTD][QTD], soma = 0, i = 0, x = 0

			para (x = 0; x < QTD; x++) {
				
				para (i = 0; i < QTD; i++) {
	
					escreva("informe o 'valor' para preencher " + (x+1) + "ª coluna e " + (i+1) +"ª linha: ")
					leia(matriz[x][i])
					soma += matriz[x][i]
					
				}
				escreva("\n")
			}

		escreva("\nCom base nos valores informado:\n\n")
		
			para (i = 0; i < QTD; i++) {
	
				para(x = 0; x < QTD; x++){
	
					escreva(matriz[i][x] + "\t")
					
				}
	
				escreva("\n")
			}

		escreva("\nA soma do valores é igual: "+ soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 566; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */