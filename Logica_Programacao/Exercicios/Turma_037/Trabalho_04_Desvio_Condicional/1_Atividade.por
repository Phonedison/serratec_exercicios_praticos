/*

Atividade 1 – Verificar se um Número é Par ou Ímpar

- Peça ao usuário um número.
- Verifique se ele é par ou ímpar.
- Exiba a mensagem correspondente.

*/


programa {
	
	funcao inicio() {

		inteiro numero

		escreva("Digite um número: ")
		leia(numero)

		se (numero % 2 == 0) {
			escreva("O número " + numero + " é par\n")
			
		} senao {
			escreva("O número " + numero + " é ímpar\n")	
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 239; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */