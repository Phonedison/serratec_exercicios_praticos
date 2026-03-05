programa
{
	
	funcao inicio()
	{
		inteiro numero_um, numero_dois
		
		escreva("Digite um numero: ")
		leia(numero_um)
		
		escreva("Digite outro numero: ")
		leia(numero_dois)
		
		se (numero_um % numero_dois == 0) {
			escreva("O numero "+ numero_um +" é multiplo de " +numero_dois+"\n") 
		} senao {
			escreva("O numero "+ numero_um +" não é multiplo de " +numero_dois+"\n") 
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 393; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */