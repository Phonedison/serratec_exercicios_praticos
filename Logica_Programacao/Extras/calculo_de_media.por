programa  {

	inclua biblioteca Util --> util
	inclua biblioteca Matematica --> math
	
	funcao inicio() {
		
		real media = 0.0,  numero
		inteiro contador = 0
		logico verificador = falso

		escreva("Digite 1º numero: ")
		leia(numero)
		
		
		enquanto (verificador == falso) { 
		
		caracter resposta
		escreva("Deseja continuar ? (S/N):\n")
		escreva("Digite [S] para 'SIM' ou [N] para 'NÃO': ")
		leia(resposta)


			se (resposta =='s' ou resposta == 'S') {
					contador++
					
					escreva("Digite ", contador+1, "º numero: ")
					leia(numero)
					
					media += numero
					
					limpa()
	
			} senao se (resposta =='n' ou resposta == 'N') {
					verificador = verdadeiro
	
			} senao {
					escreva("Valor incorreto!\n")
					util.aguarde(500)
					
					escreva("Caso deseja continuar informe:\n")
					escreva("[S] para 'SIM' ou [N] para 'NÃO': ")
					leia(resposta)
			}	
		}
		
		limpa()
		escreva("Foram informados ", contador+1, " notas\n")
		escreva("\n")
		media = media / contador
		escreva("A média é: ", math.arredondar(media,2))
		escreva("\n")
		}
	}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 260; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */