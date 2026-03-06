   //O cardápio de uma lanchonete é exibido abaixo. Prepare um algoritmo que exiba o cardápio e depois leia a quantidade de cada item que você consumiu. Calcule o total da conta. O usuário deverá quando adicionar um item ter a confirmação para continuar inserindo outros itens no cardápio.
    //1- Hambúrguer................. R$ 3,00
    //2- Cheeseburger.............. R$ 2,50
    //3- Fritas............................ R$ 2,50
    //4- Refrigerante................. R$ 1,00
    //5- Milkshake..................... R$ 3,00
    //0 - Sair

programa {

	inclua biblioteca Matematica --> math
	inclua biblioteca Util --> utilidade

	funcao inicio() {
	inteiro validacao = 0
	real acumulador_valor = 0.0
	inteiro quantidade = 0

		faca {
		escreva("----Cardápio----\n\n")
		escreva("[1] - Hambúrguer ---> R$3,00\n")
		escreva("[2] - Cheeseburger -> R$2,50\n")
		escreva("[3] - Fritas -------> R$2,50\n")
		escreva("[4] - Refrigerante -> R$1,00\n")
		escreva("[5] - Milkshake ----> R$3,00\n")
		escreva("...\n")
		escreva("[0] - SAIR\n\n")
		escreva ("Escolha uma das opções: ")
		leia(validacao)

		
			escolha (validacao) {
				caso 1:
					escreva ("Informe a quantidade: ")
					leia(quantidade)
					acumulador_valor += quantidade * 3.0
					limpa()
					pare
				
				caso 2:
					escreva ("Informe a quantidade: ")
					leia(quantidade)
					acumulador_valor += quantidade * 2.5
					limpa()
					pare
				
				caso 3:
					escreva ("Informe a quantidade: ")
					leia(quantidade)
					acumulador_valor += quantidade * 2.5
					limpa()
					pare
				
				caso 4:
					escreva ("Informe a quantidade: ")
					leia(quantidade)
					acumulador_valor += quantidade * 1.0
					limpa()
					pare
				
				caso 5:
					escreva ("Informe a quantidade: ")
					leia(quantidade)
					acumulador_valor += quantidade * 3.0
					limpa()
					pare
				
				caso contrario:
					se (validacao == 0) {
						escreva("Finalizando pedido...\n\n")
						utilidade.aguarde(1000)
					
					} senao {
						escreva("Opção invalida! Opção: '" + validacao + "' inexistente no cardápio! \n\n")
						utilidade.aguarde(5000)
						limpa()
						escreva("Informe apenas valores da tabela abaixo: \n\n")
					}
			}
			
		} enquanto (validacao != 0)
		
		escreva("\n\nO valor total de consumo: R$" + math.arredondar(acumulador_valor, 2) + "\n")
	}
	


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 770; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */