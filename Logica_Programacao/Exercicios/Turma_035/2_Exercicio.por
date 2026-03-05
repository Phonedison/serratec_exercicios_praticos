programa {
	
	funcao inicio() {
	
	inteiro idade, condicao
	cadeia nome
	
	escreva("Digite seu nome: ")
	leia(nome)

	escreva("Digite sua idade: ")
	leia(idade)

	escreva("Possui alguma condição?\n")
	
	escreva("Se sim, informe:\n\n[1] para 'gestante'\n[2] para 'deficiente físico'\n[0] para caso não possua")
	leia(condicao)
	
		escolha (condicao){
			caso 1:
				escreva("Usuário: "+ nome+", "+ idade+" anos, gestante\n")
				escreva("Fila preferencial\n")
				pare
				
			caso 2:
				escreva("Usuário: "+ nome+", "+ idade+" anos, deficiente físico\n")
				escreva("Fila preferencial\n")
				pare
				
			caso contrario:
				escreva("Usuário: "+ nome+", "+ idade+" anos\n")
				escreva("Fila comum")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 678; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */