/*

Atividade 3 – Função para Verificar se um Número é Par ou Ímpar

- Crie uma função chamada ehPar() que recebe um número e retorna verdadeiro se for par e falso se for ímpar.
- No programa principal, peça um número ao usuário e use a função para exibir a mensagem correspondente.

*/


programa {
  
  funcao ehPar(inteiro x) {
  	
	  se (x % 2 == 0) {
	    escreva(x + " é PAR")
	  } senao {
	     escreva(x + " é IMPAR")
	  }
  }

  funcao inicio() {
    inteiro numero
    escreva("Digite um numero: ")
    leia(numero)

   ehPar(numero)
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 97; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */