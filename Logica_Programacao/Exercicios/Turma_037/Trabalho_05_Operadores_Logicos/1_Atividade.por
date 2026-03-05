programa {
	
	funcao inicio() {
		//declarado como real, caso o usuário queira utilizar numeros quebrados 
		real numero
		
		escreva("Digite um número :")
		leia(numero)

		//Verifica se o numero está entre 10 e 50
		se ((numero >= 10) e (numero < 50)) {

			//informa o usario, caso esteja
			escreva(" O número " + numero + " está entre 10 e 50")
			
		} senao {
			//informa o usario, caso não esteja
			escreva(" O número " + numero + " não está entre 10 e 50")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 177; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */