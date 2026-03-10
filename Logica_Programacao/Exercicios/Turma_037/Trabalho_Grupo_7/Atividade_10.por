/*
Questão 10
- **Descrição:**
  - Escreva uma função recursiva que inverta uma cadeia. Use a biblioteca Texto para contar e pegar os caracteres.
*/
programa {
	
	inclua biblioteca Texto --> text
	//declaração da função que inverte o texto
	funcao cadeia inverter_texto(cadeia texto) {

		//conta a quantidade de caracteres da variavel texto e armazena
		inteiro tamanho = text.numero_caracteres(texto)

		//verifica o tamanho
		se (tamanho <=1){
			//retorna o proprio texto se for menor ou igual a um
			retorne texto
	
		} senao {
			//armazena a ultima letra presente da váriavel texto com base no tamanho do texto (tamanho-1)
			caracter ultima_letra = text.obter_caracter(texto, tamanho - 1)

			//armazena todo o texto na variavel após retirar o ultimo caracter (tamanho-1)
			cadeia resto_texto = text.extrair_subtexto(texto, 0, tamanho - 1)
			
			//retorna o ultimo canacter + o texto restante (chamando a função)
			retorne ultima_letra + inverter_texto(resto_texto)
		}
	}
	
	funcao inicio() {
	
	cadeia frase
	
	escreva("Digite o texto para ser inverter: ")
	leia(frase)

	//escreve o valor invertido do texto, chamando a variavel e passando o valor do texto
	escreva("Resultado: ", inverter_texto(frase))
	
	}
}