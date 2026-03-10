/*
Questão 7 - Verificar se um número é palíndromo
- **Descrição:**
  - Crie um programa que leia uma cadeia e determine se ela é um palíndromo _(ou seja, se ela pode ser lida da mesma forma de trás para frente)_.
*/

programa {

  inclua biblioteca Texto --> text
  //declarando / criando função 'inverter()'
  funcao cadeia inverter(cadeia texto) {
      //criando as varáveis
      cadeia  texto_invertida = ""
      inteiro i, tamanho = text.numero_caracteres(texto)
      //loop para inverter o posicionamento dos caracteres
      para (i = tamanho - 1; i >= 0; i--) {
          //variavel recebe o valor dela + o resto do testo com base na posição do contador
           texto_invertida = texto_invertida + text.obter_caracter(texto, i)
      }
      //retorna o valor do texto invertido
      retorne texto_invertida
  }
  

  funcao inicio() {
    //declaração das variaveis
    cadeia palavra
    //método de capitação do valor da variavel  'palavra'
    escreva("Digite uma palavra: ")
    leia(palavra)
    //passa pra função o valor da variavel para ter o texto invertido
    cadeia palavra_invertida = inverter(palavra)
    //veifica se a variaveis 'palavra_invertida' e 'palavra' são iguais
    se (palavra_invertida == palavra) {//se for, é palíndromo
        escreva("\na palavra '" + palavra + "' é um palíndromo!\n") 

    } senao {//se não for, não é palíndromo
          escreva("\na palavra '" + palavra + "' não é um palíndromo!\n")
    }
  }
}