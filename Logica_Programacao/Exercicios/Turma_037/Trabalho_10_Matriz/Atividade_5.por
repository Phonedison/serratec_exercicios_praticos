/*

Atividade 5 – Multiplicar uma Matriz por um Número

- Crie uma matriz 3x3 de números inteiros.
- Peça ao usuário para preencher os valores.
- Peça um número para multiplicar cada elemento da matriz.
- Exiba a matriz resultante.


*/

programa {
	funcao inicio () {
		const inteiro QTD = 3
		inteiro valor_inicial[QTD][QTD], resultado[QTD][QTD], coluna = 0, linha = 0, multiplicador


			para(linha = 0; linha < QTD; linha++){
				para(coluna = 0; coluna <QTD; coluna++){
					escreva("informe o 'valor' para preencher " + (coluna+1) + "ª coluna e " + (linha+1) +"ª linha: ")
					leia(valor_inicial[linha][coluna])
				}
			}
		limpa()	
		escreva("\n\n")
		escreva("Infome um número para multiplicar em cada elemento")
		leia(multiplicador)

		escreva("\n\nCom base nos valores informado:\n\n")
		
			para (linha = 0; linha < QTD; linha++) {
				para(coluna = 0; coluna < QTD; coluna++){
					escreva(valor_inicial[linha][coluna] + "\t")
				}
				escreva("\n")
			}
		escreva("\n\nNova tabela multiplicado por " + multiplicador + ":\n\n")

			para (linha = 0; linha < QTD; linha++) {
				para(coluna = 0; coluna < QTD; coluna++){
					escreva(valor_inicial[linha][coluna] * multiplicador + "\t")
				}
				escreva("\n")
			}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 387; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */