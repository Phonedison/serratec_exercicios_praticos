programa
 {
	
	funcao inicio()
 {

	caracter metodo
	real valor_um, valor_dois

	escreva("Digite o primeiro valor: ")
	leia(valor_um)

	escreva("Digite o segundo valor: ")
	leia(valor_dois)

	escreva("soma (+), subtração(-), multiplicação(*) e divisão(/)\n")
	escreva("Qual método pretende realizar ?\n")
	leia(metodo)

	escolha (metodo) {
		
		caso '+':
		escreva(valor_um + " + " + valor_dois + " = " + (valor_um + valor_dois))
		pare
		caso '-':
		escreva(valor_um + " - " + valor_dois + " = " + (valor_um - valor_dois))
		pare
		caso '*':
		escreva(valor_um + " * " + valor_dois + " = " + (valor_um * valor_dois))
		pare
		caso '/':
		escreva(valor_um + " / " + valor_dois + " = " + (valor_um / valor_dois))
		pare
		}
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 600; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */