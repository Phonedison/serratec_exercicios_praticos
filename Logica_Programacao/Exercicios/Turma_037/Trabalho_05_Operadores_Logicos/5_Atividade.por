/*

Atividade 5 – Autenticação Simples de Login

- Peça ao usuário um nome de usuário e uma senha.
- O usuário só pode acessar se o nome for "admin" E a senha for
  "1234".
- Use o operador E.

*/



programa {
	
	funcao inicio() {
		cadeia usuario, senha
		logico comparador = falso

		escreva("Digite o login: ")
		leia(usuario)

		escreva("\n")

		escreva("Digite a senha: ")
		leia(senha)

		enquanto (comparador == falso) {

			se (senha == "1234" e usuario =="admin") {
				escreva("Bem vindo admin\n")
				comparador = verdadeiro

			} senao {
				escreva("Você não é o administrador\n\n")
				escreva("Tente novamente realizar o login\n\n")
				escreva("Digite o login: ")
				leia(usuario)

				escreva("\n")

				escreva("Digite a senha: ")
				leia(senha)
				
				escreva("\n")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 389; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */