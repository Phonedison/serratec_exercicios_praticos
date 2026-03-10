/*
Questão 14 - Triangulo Retângulo de Altura N
- **Descrição:**
  - Desenvolva um algoritmo que solicite um valor inteiro N e imprima uma pirâmide numérica de altura N.
*/
programa {
	funcao inicio () {
	inteiro numero = 0
	logico validacao = falso
	
		faca {
		limpa()
		escreva("Digite um número que servirá como base da pirâmide: ")
		leia(numero)
		
			se (numero > 0 e numero < 10) {
				validacao = verdadeiro
			} senao {
				escreva("\nUtilize apenas números de 0 a 9 para não queimar a sua maquina\n")
			}
			
		} enquanto (validacao == falso)
			
			//loop para alinhar a impressão das linhas
			para(inteiro linha = 0; linha <= numero; linha++) {
			
			//loop para imprimir o lado esquerdo da piramede
				para(inteiro lado_esquerdo = 0; lado_esquerdo < numero - linha; lado_esquerdo++) {
					escreva(" ")
				}
			
				//loop para imprimir o valor mais o lado esquerdo direito da piramede
				para(inteiro lado_direito = 0; lado_direito < (linha * 2) - 1; lado_direito++) {
					escreva(numero)    
				}
		
			escreva("\n")
			}
	}
}