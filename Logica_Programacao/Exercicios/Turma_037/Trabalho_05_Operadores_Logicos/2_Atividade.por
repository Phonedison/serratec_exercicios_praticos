/*

Atividade 2 – Verificar se a Pessoa Pode se Cadastrar

- Peça a idade e se a pessoa possui documento válido (S ou N).
- Para cadastrar, a idade deve ser maior ou igual a 18 E deve ter documento (S).
- ## Use o operador E.

*/

programa {
	
	funcao inicio() {
	inteiro idade
	caracter documento
	logico validacao = verdadeiro


	escreva("Usuário, qual a sua idade?\n")
	leia(idade)
	
	escreva("Usuário, você possui documento válido?\n(S/N): ")
	leia(documento)
	
		// loop de repetição para evitar erro no preenchimento da resposta de 'documento'
		enquanto (validacao) {
			
			//muda o valor da validação e sai do loop, caso os requisitos forem ativos
			se ((documento =='S' ou documento =='N') ou (documento =='n' ou documento =='s')) {
				validacao = falso

			//caso os requisitos forem preenchidos errado, mostra o aviso e pede um novo preenchimento
			} senao {
				escreva("\nFavor preencher com 'S' ou 's' para SIM e 'N' ou 'n' para NÃO\n")
				escreva("informe novamente, você possui documento válido? (S/N): ")
				leia(documento)
				escreva("\n")
			}
		}

		//validando informações de idade e documento
		se ((documento == 'S' ou documento =='s') e idade >= 18) {
			escreva("Usuário cadastrado")

		} senao {
			escreva("Usuário não cadastrado")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 951; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */