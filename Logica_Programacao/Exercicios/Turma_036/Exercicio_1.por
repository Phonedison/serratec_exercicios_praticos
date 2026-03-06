/*
 * Faça um exercício para leitura de dados de uma eleição:
 * 1 - Candidato - X
 * 2 - Candidato - Y
 * 3 - Branco
 * 0 - Encerrar Votação
 * 
 * Qualquer opção diferente anulará o voto
 * No final deverá set exibido o total de votos e o percentual de voto de todos candidatos
*/

programa {
	inclua biblioteca Matematica --> math
	funcao inicio() {
	real candidato_x = 0, candidato_y = 0, voto_branco = 0, total_votos = 0
	inteiro valor = 0
		faca{
			escreva("Candidatos disponiveis:\n")
			escreva("[1] - Candidato - X\n")
			escreva("[2] - Candidato - Y\n")
			escreva("[3] - Branco\n")
			escreva("...\n")
			escreva("[0] - Encerrar Votação\n")
			escreva("...\n\n")
			escreva("Qualquer número diferente 0, 1, 2 e 3 anulará o seu voto\n\n")
			escreva("Escolha seu candidato: ")
			leia(valor)
	
			escolha (valor){
				caso 1: 
					candidato_x++
					total_votos++
					pare
					
				caso 2:
					candidato_y++
					total_votos++
					pare
					
				caso 3:
					voto_branco++
					total_votos++
					pare
					
				caso contrario:
					escreva("Voto anulado!\n")
					total_votos++
				}

			
		} enquanto (valor != 0)

		real voto_nulo = (total_votos - (voto_branco + candidato_x + candidato_y))
		
		escreva("Votação encerrada!\n\n")
		escreva("Total de votos: " + total_votos + "\n")
		escreva("Candidato X: " + math.arredondar(candidato_x,0) + " voto(s) -> equivale a " + math.arredondar((candidato_x/total_votos)*100,2) + "% de votos do total\n")
		escreva("Candidato y: " + math.arredondar(candidato_y,0) + " voto(s) -> equivale a " +  math.arredondar((candidato_y/total_votos)*100,2) + "% de votos do total\n")
		escreva("Votos em BRANCO " + math.arredondar(voto_branco,0) + " voto(s) -> equivale a " +  math.arredondar((voto_branco/total_votos)*100,2) + "% de votos do total\n")
		escreva("Votos NULO " + math.arredondar(voto_nulo,0) + " voto(s) equivale a " + math.arredondar((voto_nulo/total_votos)*100,2) + "% de votos do total\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 168; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */