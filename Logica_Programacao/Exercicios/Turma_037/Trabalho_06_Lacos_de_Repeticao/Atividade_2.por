/*

Atividade 2 - Somar os Números de 1 a N

- Peça um número N ao usuário.
- Use um laço enquanto para somar os números de 1 até N.

*/



programa {
	
 	funcao inicio() {
	 inteiro numero, contador = 1, soma = 0

      escreva("Digite um número: ")
      leia(numero)

      enquanto (contador <= numero) {
        soma = soma + contador
        contador++
      }

      escreva("Valor total: ", soma)
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 226; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */