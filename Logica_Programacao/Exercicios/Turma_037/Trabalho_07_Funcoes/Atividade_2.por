/*

Atividade 2 – Função para Calcular o Quadrado de um Número

- Crie uma função chamada quadrado() que recebe um número e retorna o seu quadrado.
- No programa principal, peça um número ao usuário e use a função para calcular e exibir o resultado.

*/


programa {
  funcao inteiro quadrado(inteiro x){
    retorne (x * x)
  }

  funcao inicio() {
    inteiro numero
    escreva("Digite um numero: ")
    leia(numero)

    escreva(numero + "² = " + quadrado(numero))
  }
}