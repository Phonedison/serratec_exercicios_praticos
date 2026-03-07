/*

Atividade 5 – Função para Converter Celsius para Fahrenheit

- Crie uma função chamada celsiusParaFahrenheit() que recebe uma temperatura em graus Celsius e retorna o equivalente em Fahrenheit.
- No programa principal, peça a temperatura ao usuário, use a função para converter e exiba o resultado.
- Fórmula: Fahrenheit = (Celsius \* 1.8) +32

*/



programa {
	
	funcao real celsiusParaFanhrenheit(real valor){
	    retorne ((valor * 1.8) + 32)
	  }
	
	funcao inicio() {
	   real grau_celsius = 0.0

	   escreva("Digite o graus Celsius: ")
	   leia(grau_celsius)
	
	   real fanhrenheit = celsiusParaFanhrenheit(grau_celsius)
	   escreva(grau_celsius + "ºC = " + fanhrenheit + "ºF\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 135; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */