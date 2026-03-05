programa
{
	
	funcao inicio()
	{
		cadeia nome, categoria
		inteiro idade

		escreva("Digite o nome de um jogador de futebol: ")
		leia(nome)

		escreva("Digite a idade do jogador: ")
		leia(idade)

		se (idade <= 10) {
			categoria = "Escolinha"
			
		} senao {
			
			se (idade > 10  e idade <= 17){
				categoria="Base"
				
			} senao se (idade > 18 e idade <= 40){
				categoria="Profissional"
				
			} senao {
				categoria="Master"
			}
		}

		escreva ("Jogador: " + nome +", Idade: "+idade+", Categoria: "+ categoria +"\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 454; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */