
/*
Atividade 2 – Somar os Números de 1 até N

- Crie uma função recursiva chamada soma(n), que retorna a soma de todos os números de 1 até n.
- Caso base: Se n == 1, a soma é 1.
- Caso recursivo: soma(n) = n + soma(n - 1).

*/

programa
{
	funcao inteiro soma(inteiro numero) {
		se (numero == 1) {
			retorne 1
		} senao {
			retorne (soma(numero - 1) + numero)
		}
	}
	
	funcao inicio()
 {
		inteiro valor

		escreva("Digite um valor: ")
		leia(valor)

		inteiro resultado_soma = soma(valor)
		escreva("A soma de todos os numeros entre 1 até " + valor + " é igual a " + resultado_soma + "\n") 
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 51; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */