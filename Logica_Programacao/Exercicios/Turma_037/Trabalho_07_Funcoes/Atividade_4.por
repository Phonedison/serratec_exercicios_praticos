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