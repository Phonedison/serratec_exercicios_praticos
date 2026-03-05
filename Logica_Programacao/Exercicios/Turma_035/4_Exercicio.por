programa {
	
	funcao inicio() {
		inteiro qtd_paozinho, qtd_broas
		real valor_paozinho = 0.5, valor_broa = 5.0

		escreva("Quantidade de Pãozinhos vendidos (uni): ")
		leia(qtd_paozinho)

		escreva("Quantidade de Broas vendidos (uni): ")
		leia(qtd_broas)

		real valor_arrecadado = (valor_paozinho * qtd_paozinho) + (qtd_broas * valor_broa)
		real valor_poupanca = valor_arrecadado * 0.1

		escreva("\nValor de Pãozinhos vendidos: R$"+ (valor_paozinho * qtd_paozinho)+"\n")
		escreva("Valor de Broas vendidos: R$"+ (valor_broa * qtd_broas)+"\n\n")
		escreva("Valor arrecadado: R$"+ valor_arrecadado +"\n")
		escreva("Valor a ser utilizado na poupança: R$"+ valor_poupanca +"\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 685; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */