programa {
	funcao inicio() {

		const inteiro QTD_ESTOQUE = 50
		const real PRECO_PRODUTO = 32.44
		const cadeia NOME_PRODUTO = "Café do himalaia"
		
		inteiro qtdCompra
		logico parar = verdadeiro

		//repassando informações ao cliente
		escreva("Bom dia / Boa tarde / Boa noite!\n")
		escreva("Bem vindo ao mercadinho PORTUGOL!\n")
		escreva("Hoje temos '" + NOME_PRODUTO + "' por apenas " + "R$" + PRECO_PRODUTO + " à unid.\n")
		escreva("Caso tenha interesse, dê um pulinho na área de grãos do mercado!\nTemos apenas "+ QTD_ESTOQUE + " disponiveis no estoque...\n")

		escreva("\n")

		//lendo a quantidade de produto desejado pelo cliente
		escreva("Informe a quantidade que deseja comprar: ")
		leia(qtdCompra)

		//laço de repetição para evitar entrada de valores negativos ou maiores que a Quantidade de Estoque
		enquanto (parar == verdadeiro) { //obs: nao(parar=verdadeiro) dá para ser utilizado aqui
		
			se (qtdCompra <= 0) { //verificando se o valor informado é <= 0
				escreva("Quantidade inválida. Não é possível comprar um valor negativo.\n")
				escreva("Infome novamente a quantidade que deseja comprar: ")
				leia(qtdCompra)
				escreva("\n")

			} senao se (qtdCompra > QTD_ESTOQUE) { //verificando se o valor informado é maior que a quantidade de Estoque
				escreva("Quantidade indisponível em estoque!\n")
				escreva("Infome novamente a quantidade que deseja comprar: ")
				leia(qtdCompra)
				escreva("\n")
				
			} senao { // método de saida do loop de repetição	
				parar = falso
			}	
		}
		//aplicando o valor total de compra
		real valorTotal = qtdCompra * PRECO_PRODUTO
		//aplicando valor de desconto
		real valorDesconto = 0.10
		//verificando a condição >100 e informando
		se (valorTotal > 100) {
				escreva("Parabéns!\n")
				escreva("Você recebeu um desconto de "+ valorDesconto * 100 +"%\n")
				escreva("Tendo o desconto de R$"+ valorTotal * valorDesconto)
			
				valorTotal *= (1 - valorDesconto) //aplicando o valor de desconto  e informando
				escreva("o valor total da compra com o desconto aplicado ficou em R$" + valorTotal + "\n")

		} senao {
				//informando ao cliente o valor total
				escreva("Caro(a) Cliente, o valor total da compra ficou em R$" + valorTotal + "\n\n")
		}	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 196; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */