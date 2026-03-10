/*
Questão 12 - Cálculo do fatorial usando recursão
- **Descrição:**
  - Faça um programa que leia um número inteiro e calcule o fatorial desse número utilizando uma função recursiva.
*/

programa {
  //declarando a função 'metodo_fatorial()' que recebe um valor
 funcao inteiro metodo_fatorial(inteiro valor) {
    
	  se (valor == 0 ou valor == 1){//se o valor da variavel 'valor' for igual a um ou zero, retorna um
	    retorne 1
	  
	  } senao { //se não for
      //retorna o valor da variavel vezes o valor da função metodo_fatorial utilizando método recursivo.
	    retorne (valor * metodo_fatorial(valor - 1))
	  }
}

funcao inicio() {

  inteiro numero, resultado_fatorial = 0

  escreva ("Informe um número: ")
  leia(numero)
  //atribui o valor da função recurtiva em uma variavel 'resultado_fatorial'
  resultado_fatorial = metodo_fatorial(numero)
  //imprime o valor das variaveis
  escreva("O fatorial de "+ numero + " é igual " + resultado_fatorial + "\n")
  
  }
}