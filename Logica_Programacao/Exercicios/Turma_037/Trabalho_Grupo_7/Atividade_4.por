/*
Questão 4 - Função de potenciação sem biblioteca
- **Descrição:**
  - Escreva uma função chamada potencia() que recebe dois números inteiros, base e expoente, e retorna o valor da potenciação sem usar a função pronta de potenciação ou biblioteca.
*/
programa {
  //declaração e criação da função
  funcao inteiro potencia (inteiro a, inteiro n) { //função recebe dois valores (base, expoente)
    //variavel que irá receber o valor da potência
    inteiro valor = 0

      //loop para realizar a maltiplicação com base na qtd de vezes
      para (inteiro i = 0; i < n; i++) {
        
        se (i == 0) {//retorna o valor da variavel 'a' se o contador for zero
          valor = a
        
        } senao { //realiza a multiplicação entre o valor vezes o valor da variaval 'a'
          valor = valor * a
        
        }
      }
      //retorna o valor
      retorne valor
  }

  funcao inicio () {
    //declaração de variaveis
    inteiro base, expoente
    //solicita o valor da base
    escreva("Informe o valor base: ")
    leia(base)
    //solicita o valor do expoente
    escreva("Informe o expoente: ")
    leia(expoente)

    escreva("\n\n")
    //informa o valor base informado pelo usuário
    escreva("A potência do número informado: " + base +"\n" )
    //informa a quantidade de vezes que o valor será multiplicado por si mesmo, com base no usuário
    escreva("Elevado a: " + expoente +"\n" )
    //retorna a potencia utilizando a função 'potencia()' passando a base e o expoente
    escreva("É igual a: " + potencia(base, expoente) +"\n" )
  }
}