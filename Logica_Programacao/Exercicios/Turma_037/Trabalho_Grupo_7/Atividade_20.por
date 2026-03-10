/*
Questão 20 - Sistema de Login com Bloqueio Após 3 Tentativas
- **Descrição:**
  - Crie um programa que simule um sistema de login. O programa deve pedir ao usuário um nome de login e uma senha. Se ele errar 3 vezes, o acesso deve ser bloqueado.
*/

programa {
  funcao inicio () {
    cadeia senha_correta = "1234", login_correto = "admin", senha = "", login = ""
    inteiro i


	
    para(i = 3; i > 0; i--) {
        escreva("Digite o seu login: ")
        leia(login)

        escreva("Digite a sua senha: ")
        leia(senha)

        se (login == login_correto e senha == senha_correta) {
            escreva("\nParabéns, você acabou de acessar!\n")
            pare 
        } senao {

            se (login != login_correto e senha != senha_correta) {
                escreva("ERRO: 'LOGIN' e 'SENHA' incorretos!\n")

            } senao se (login != login_correto) {
                escreva("ERRO: 'LOGIN' incorreto!\n")

            } senao {
                escreva("ERRO: 'SENHA' incorreta!\n")
            }
            
            se (i > 1) {
                escreva("Tente novamente!\n")
                escreva("\nVocê tem "+ (i-1) +" tentativas\n")
            }
        }
    }
    se (login != login_correto ou senha != senha_correta) {
      escreva("\nACESSO BLOQUEADO!")
      escreva("\nTente novamente mais tarde.")
    }
  }
}