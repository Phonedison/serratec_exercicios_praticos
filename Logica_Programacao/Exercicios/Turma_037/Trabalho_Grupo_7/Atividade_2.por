/*
Questão 2 - Contar vogais em uma frase
  - Desenvolva um algoritmo que leia uma frase e conte quantas vogais ela possui. Considere usar bibliotecas.
*/ 

programa{
  inclua biblioteca Texto --> text

  funcao inicio () {

    inteiro qtd_vogais, i = 0, x = 0
    cadeia frase
    //vogais -> a, e, i, o, u posicionada em um vetor
	  caracter vogais[22] = {'a', 'á', 'à', 'â', 'ã', 'e', 'é', 'è', 'ê', 'i', 'í', 'ì', 'î', 'o', 'ó', 'ò', 'ô', 'õ', 'u', 'ú', 'ù', 'û'}

    //Atribui uma frase a váriavel frase
    escreva("Digite a sua frase quee iremos informar quantas vogais ela possui:\n")
    leia(frase)

    //quantidade de letras e contador de vogais
		inteiro tamanho_frase = text.numero_caracteres(frase), contador_vogais = 0

    //passando afrase para o diminutivo diminutivo
		cadeia frase_diminutivo = text.caixa_baixa(frase)
	
		//loop para passar por toda a frase	
		para (i = 0; i <tamanho_frase; i++) {

			//loop para verificar se tem ou não vogais
			para (x = 0; x < 22; x++) {
				//se tem vogais, é contabilizado no contador
				se (vogais[x] == text.obter_caracter(frase_diminutivo, i)){
					contador_vogais++
				}
			}
		}

	escreva("\n\nA quantidade de vogal presente na frase são "+(contador_vogais) +" \n")
  }
}