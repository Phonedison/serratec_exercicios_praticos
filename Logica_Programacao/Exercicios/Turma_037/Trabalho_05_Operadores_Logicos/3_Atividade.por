/*

Atividade 3 – Verificar se um Aluno Pode Fazer a Prova Final

- Peça a média final e a frequência do aluno.
- O aluno só pode fazer a prova final se a média for entre 4 e 6.9 OU a frequência for menor que 75%.
- ## Use o operador OU.

*/


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