programa {
	
	inclua biblioteca Texto --> text
	
	funcao cadeia inverter_texto(cadeia texto) {
		inteiro tamanho = text.numero_caracteres(texto)

		se (tamanho <=1){
			retorne texto
	
		} senao {
			caracter ultima_letra = text.obter_caracter(texto, tamanho - 1)
			cadeia resto_texto = text.extrair_subtexto(texto, 0, tamanho - 1)
			
			retorne ultima_letra + inverter_texto(resto_texto)
		}
	}
	
	funcao inicio() {
	
	cadeia frase

	escreva("Digite o texto para ser inverter: ")
	leia(frase)

	escreva("Resultado: ", inverter_texto(frase))
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 366; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */