/*
Inverter um Vetor

- Crie um vetor de 5 números inteiros.
- Peça ao usuário para preencher os valores.
- Inverta a ordem dos números e exiba o vetor invertido.
*/

programa {
  funcao inicio () {

    const inteiro QTD = 5
    inteiro numeros[QTD], i = 0, maximo = 5

    para (i = 0; i < QTD; i++) {

      escreva("Digite o "+ (i+1) +"º numero: ")
      leia(numeros[i])
    
    }

    escreva("\n\n")
    escreva("A ordem dos valores ficaram assim: \n")
    para (i=0; i < QTD; i++){
      escreva(numeros[i]+ "\t")
    }

    escreva("\n\n")
    escreva("A ordem dos valores invertidos ficaram assim: \n")
     para ( i = 4; i >= 0; i--){
      escreva(numeros[i]+ "\t")
    }
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 270; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */