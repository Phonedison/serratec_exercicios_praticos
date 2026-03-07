/*

Atividade 4 – Contagem Regressiva

- Crie uma função recursiva chamada contagemRegressiva(n), que imprime os números de n até 0.
- Caso base: Quando n == 0, pare a recursão.
- Caso recursivo: Exiba n e chame contagemRegressiva(n - 1).

*/

programa
{
	inclua biblioteca Util --> util

	funcao inteiro contagemRegressiva(inteiro numero) {
		
		se (numero < 0){
			retorne 0
		} senao {
			limpa()
			escreva(numero)
			util.aguarde(500)
			retorne contagemRegressiva(numero - 1)
		}
	}
	
	funcao inicio()
	{
		inteiro valor

		escreva("Digite um numero: ")
		
		leia(valor)
		contagemRegressiva(valor)
		
		limpa()

		escreva("BOOOOM!\n\n")
		util.aguarde(1000)
		limpa()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 271; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */