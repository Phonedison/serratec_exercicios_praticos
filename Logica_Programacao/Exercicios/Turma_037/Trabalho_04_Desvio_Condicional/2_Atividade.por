/*

Atividade 2 – Verificar se a Pessoa é Maior de Idade

- Peça a idade do usuário.
- Se for 18 ou mais, exiba "Você é maior de idade".
- Caso contrário, exiba "Você é menor de idade".

*/

programa
{
	
	funcao inicio()
	{
		inteiro idade

		escreva("Infome sua idade: ")
		leia(idade)
		
		se (idade >= 18) {
			escreva("Você é maior de idade")
			
		} senao {
			escreva("Você é menor de idade")
			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 84; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */