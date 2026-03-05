programa {
	inclua biblioteca Matematica --> mat
	funcao inicio() {

	real preco_litro_gasolina
	real valor_pagamento

	escreva("Digite o valor do livro da gasolina: R$ ")
	leia(preco_litro_gasolina)

	escreva("Digite o valor que pretende pagar: R$ ")
	leia(valor_pagamento)

	// 1lt -> preco_litro_gasolina
	//x -> valor_pagamento

	real qtd_litros = valor_pagamento / preco_litro_gasolina
	escreva("O motoqueiro irá conseguir "+ mat.arredondar(qtd_litros, 2) +"lts de gasolina\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 172; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */