
/*

Atividade 3 – Sequência de Fibonacci

- Crie uma função recursiva chamada fibonacci(n), que retorna o n-ésimo termo da sequência de Fibonacci.
- A sequência de Fibonacci é definida como:
  - fibonacci(0) = 0
  - fibonacci(1) = 1
  - fibonacci(n) = fibonacci(n-1) + fibonacci(n-2)

*/

programa
 {
	
	funcao  inteiro fibonacci(inteiro valor){
		
		se  (valor == 0){
			retorne 0
			
		} senao se (valor == 1) {
			retorne 1
			
		} senao {
			retorne fibonacci(valor - 1) + fibonacci(valor - 2)
		}
		
	}
	
	funcao inicio()
 {
		inteiro numero

		escreva("Digite um número: ")
		leia(numero)

		inteiro resultado = fibonacci (numero)
		escreva ("A sequência de Fibonacci a partir do valor "+ numero + " é : \n\n")
		para (inteiro i = 0; i < numero; i++) {
			escreva (fibonacci(i), " ")
		}
		escreva("")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 98; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */