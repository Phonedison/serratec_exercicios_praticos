/*

Atividade 3 – Comparar Dois Números

- Peça dois números ao usuário.
- Exiba qual é o maior, ou se são iguais.

*/

programa
 {
	
	funcao inicio()
 {
		real numeroUm, numeroDois
		
		escreva("Informe o primeiro número: ")
		leia (numeroUm)
		
		escreva("Informe o segundo número: ")
		leia (numeroDois)
		
		se (numeroUm != numeroDois) {
			
		  se (numeroUm > numeroDois) {
		  	escreva("O primeiro número é maior que o segundo: " + numeroUm + " > " + numeroDois)
		  	
		  } senao {
		  	escreva("O segundo número é maior que o primeiro: " + numeroUm + " < " + numeroDois)
		  }
		  
		} senao {
			escreva("Os dois valores são iguais: " + numeroUm + " == " + numeroDois)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 209; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */