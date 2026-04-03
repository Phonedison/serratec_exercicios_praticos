
// 1. Escolha algo do seu cotidiano, crie uma classe contendo 5 atributos e uma função. Crie uma classe Main onde você vai instanciar essa classe, preencha seus dados e imprima na tela formatado
public class Exercicio1 {
  String nome;
  int ano_nascimento; 
  int ano_atual;
  double peso;
  double altura;

  double imc (){
    return peso / (altura * altura);
  }
  int idade (){
    return ano_atual - ano_nascimento;
  }

}
