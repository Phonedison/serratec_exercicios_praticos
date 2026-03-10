/*
Questão 9 - Sequência de Fibonacci até N termos
- **Descrição:**
  - Crie um programa que gere os primeiros N termos da sequência de Fibonacci, onde N é informado pelo usuário.
*/

programa {
	
	funcao  inteiro funcao_fibonacci(inteiro numero){
		
		se  (numero == 0){
			retorne 0
			
		} senao se (numero == 1) {
			retorne 1
			
		} senao {
			retorne fibonacci(numero - 1) + fibonacci(numero - 2)
		}
		
	}
	
	funcao inicio()
 {
		inteiro valor

		escreva("Informe um valor: ")
		leia(valor)

		inteiro resultado = funcao_fibonacci(valor)
		escreva ("A sequência Fibonacci a partir do valor "+ valor + " é : \n\n")
		para (inteiro i = 0; i < valor; i++) {
			escreva (fibonacci(i), " ")
		}
		escreva("")
	}
}