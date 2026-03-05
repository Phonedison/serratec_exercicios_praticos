   //O cardápio de uma lanchonete é exibido abaixo. Prepare um algoritmo que exiba o cardápio e depois leia a quantidade de cada item que você consumiu. Calcule o total da conta. O usuário deverá quando adicionar um item ter a confirmação para continuar inserindo outros itens no cardápio.
    //1- Hambúrguer................. R$ 3,00
    //2- Cheeseburger.............. R$ 2,50
    //3- Fritas............................ R$ 2,50
    //4- Refrigerante................. R$ 1,00
    //5- Milkshake..................... R$ 3,00
    //0 - Sair

programa {

	inclua biblioteca Matematica --> math

	funcao inicio() {
	inteiro validacao = 0
	real acumulador_valor = 0
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

		escreva ("Informe a quantidade: ")
		escolha (validacao) {
			caso 1:
			leia(quantidade)
			acumulador_valor += quantidade * 3.0
			limpa()
			pare
			
			caso 2:
			leia(quantidade)
			acumulador_valor += quantidade * 2.5
			limpa()
			pare
			
			caso 3:
			leia(quantidade)
			acumulador_valor += quantidade * 2.5
			limpa()
			pare
			
			caso 4:
			leia(quantidade)
			acumulador_valor += quantidade * 1
			limpa()
			pare
			
			caso 5:
			leia(quantidade)
			acumulador_valor += quantidade * 3
			limpa()
			pare
			
			caso contrario:
			escreva("Opção invalida!\n\n")
			
		}
		
		} enquanto (validacao != 0)

		escreva("\n\nO valor total de consumo: R$"+ math.arredondar(acumulador_valor,2)+"\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 692; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */