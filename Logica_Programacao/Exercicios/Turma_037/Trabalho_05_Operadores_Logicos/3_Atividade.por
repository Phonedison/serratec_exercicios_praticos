programa {
	
	funcao inicio() {
		real media, frequencia

		escreva("Informe a média e frequencia do aluno: ")
		leia(media)

		escreva("Informe a frequencia do aluno: ")
		leia(frequencia)

		se((media >= 4 e media < 7) ou (frequencia < 75)){
			escreva("Aluno pode fazer a prova final")
			
		} senao {
			escreva("Aluno não pode fazer a prova final")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 298; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */