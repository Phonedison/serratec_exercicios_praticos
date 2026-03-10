/*

Atividade 1 – Armazenar e Exibir uma Matriz

- Crie uma matriz 3x3 de números inteiros.
- Peça ao usuário para preencher os valores.
- Exiba a matriz formatada na tela.

*/


programa {
  funcao inicio () {

	const inteiro QTD = 3
	inteiro matriz[QTD][QTD], i = 0, x = 0
	
		para (i = 0; i < 3; i++) {
		
			para (x = 0; x <3; x++){	
				escreva("Digite o valor da "+ (i+1) +"ª linha e "+ (x+1) +"ª coluna: ")
				leia(matriz[i][x])
			}
		}

		escreva("\n\nA tabela com os valores informados:\n\n")
		
		para(i = 0; i< 3; i++){
			
			para(x = 0; x <3; x++){
				escreva(matriz[i][x]+ "\t")
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
 * @POSICAO-CURSOR = 211; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */