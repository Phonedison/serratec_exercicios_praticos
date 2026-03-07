/*

Atividade 5 – Cálculo de Desconto

- Peça ao usuário o valor da compra.
- Se for maior ou igual a R$100, aplique 10% de desconto.
- Caso contrário, não aplique desconto.
- Exiba o valor final da compra.


*/

programa {
	
	funcao inicio() {

	real valorCompra

	escreva("Digite o valor da compra: R$")
	leia(valorCompra)

		se (valorCompra >= 100) {
			escreva("Parabéns!\n")
			escreva("Você recebeu um desconto de 10%\n")
			escreva("valor de desconto -> R$" + (valorCompra * 0.1) + "\n")
			escreva("O valor de compra ficou em R$" + (valorCompra * 0.9) + "\n")
		
		} senao {
			escreva("O valor de compra ficou em R$" + valorCompra + "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 55; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */