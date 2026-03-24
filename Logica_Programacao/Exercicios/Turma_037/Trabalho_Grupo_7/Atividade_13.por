/*
Questão 13 - Encontrar o maior e o menor valor de uma matriz 4x4
- **Descrição:**
  - Crie um programa que leia uma matriz 4x4 e encontre o maior e o menor valor dessa matriz.
*/

programa {
	funcao inicio() {
		const inteiro QTD = 4
		inteiro matriz[QTD][QTD], coluna = 0, linha = 0

			para (linha = 0; linha < QTD; linha++) {
				para (coluna = 0; coluna < QTD; coluna++) {

					escreva("informe o 'valor' para preencher " + (coluna+1) + "ª coluna e " + (linha+1) +"ª linha: ")
					leia(matriz[linha][coluna])
				}
        escreva("\n")
			}
			inteiro maior_valor = matriz[0][0], menor_valor = matriz[0][0]

			para (linha = 0; linha<QTD; linha++) {
					para(coluna=0; coluna <QTD; coluna++) {
						
						se (matriz[linha][coluna] > maior_valor) {
							maior_valor = matriz[linha][coluna]
							
						} senao se (matriz[linha][coluna] < menor_valor) {
							menor_valor = matriz[linha][coluna]
						}
					}
			}


		escreva("\nCom base nos valores informado:\n\n")
		
			para (linha = 0; linha < QTD; linha++) {
				para(coluna = 0; coluna < QTD; coluna++) {
					escreva("|\t"+ matriz[linha][coluna] + "\t")
				}
				escreva("|\n")
			}
		escreva("\nO maior valor é: "+ maior_valor)
		escreva("\nO menor valor é: "+ menor_valor)
	}
}