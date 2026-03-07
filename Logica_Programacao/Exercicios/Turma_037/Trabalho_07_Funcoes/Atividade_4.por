/*

Atividade 4 – Função para Calcular a Média de Três Notas

- Crie uma função chamada calcularMedia() que recebe três notas e retorna a média aritmética.
- No programa principal, peça três notas ao usuário, use a função para calcular a média e exiba o resultado.

*/


programa {

  funcao real calcularMedia(real nota[], inteiro qtd) {
	  real soma = 0
	    para(inteiro i = 0; i < qtd; i++) {
	      soma += nota[i]
	    }

    retorne soma / qtd
  }

  funcao inicio() {

    inteiro qtd_notas

    escreva("Informe a quantidade de notas: ")
    leia(qtd_notas)

    real notas[qtd_notas] 

    para (inteiro i = 0; i < qtd_notas; i++){

      escreva ("Digite a ", i+1, "ª nota: ")
      leia(notas[i])
    }
    
	real valor = calcularMedia(notas, qtd_notas)
    	escreva("A média do aluno é : ", valor)
  }
}