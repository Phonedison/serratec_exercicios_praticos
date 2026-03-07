/*
Atividade 1 – Calcular o Fatorial de um Número

- Crie uma função recursiva chamada fatorial(n) que retorna o fatorial de n.
- O fatorial de um número é definido como:
  - n! = n \* (n - 1)!
  - Com o caso base:
  - 1! = 1 e 0! = 1
*/


programa {
 funcao inteiro fatorial(inteiro numero) {
	 
	  se (numero == 0 ou numero == 1){
	    retorne 1
	  
	  } senao {
	    retorne (numero * fatorial(numero - 1))
	  }
}

funcao inicio() {
  inteiro valor
  escreva ("Digite um numero: ")
  leia(valor)

  inteiro resultado_fatorial = fatorial(valor)
  escreva("O fatorial de "+ valor + " é: " + resultado_fatorial + "\n")
  
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 387; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */