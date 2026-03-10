/*
Questão 17 - Média de Altura de Homens e Mulheres
- **Descrição:**
  - Faça um programa que leia a altura e o sexo de 5 pessoas e calcule a média da altura das mulheres e dos homens separadamente. O programa deve encerrar quando o usuário digitar uma altura negativa.
*/

programa {
  funcao inicio() {
    const inteiro QTD = 5
    real altura = 0.0, soma_altura_masculina = 0.0, soma_altura_feminina = 0.0
    caracter sexo
    inteiro contador_masculino = 0, contador_feminino = 0

    para (inteiro i = 0; i < QTD; i++) {
      escreva(i + 1, "ª Pessoa:")
      escreva("\nDigite a altura (obs: valor negativa irá sair do sistema): ")
      leia(altura)

	      se (altura < 0) {
	        escreva("Valor abixo de 0\n")
	        escreva("Código finalizado\n")
	        pare
	      }

      escreva("Informe o sexo [M/F]: ")
      leia(sexo)

	      se (sexo == 'M' ou sexo == 'm') {
	        soma_altura_masculina += altura
	        contador_masculino++
	      } senao se (sexo == 'F' ou sexo == 'f') {
	        soma_altura_feminina += altura
	        contador_feminino++
	      }
    }

    escreva("\nRESULTADO FINAL: ")

    se (contador_feminino > 0) {
      escreva("\nMédia Feminina: ", (soma_altura_feminina / contador_feminino))
    } senao {
      escreva("\nNenhuma Pessoa do sexo 'FEMININO' foi informado.")
    }
    
    se (contador_masculino > 0) {
      escreva("\nMédia Masculina: ", (soma_altura_masculina / contador_masculino))
    } senao {
      escreva("\nNenhuma Pessoa do sexo 'MASCULINO' foi informado.")
    }
  }
}


  