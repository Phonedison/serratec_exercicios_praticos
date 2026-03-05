programa {
	inclua biblioteca Matematica --> mat
	funcao inicio() {
		real altura, peso

		escreva("Informe a altura: ")
		leia(altura)

		escreva("Informe o peso: ")
		leia(peso)

		real imc = peso / (altura * altura)
		cadeia info_imc

		se (imc <= 18.5){
			info_imc = "Abaixo do peso normal"
		} senao se(imc > 18.5 e imc <= 24.9) {
			info_imc = "Peso normal"
		} senao se (imc > 24.9 e imc <= 29.9) {
			info_imc = "Excesso de peso"
		} senao se (imc > 29.9 e imc <= 34.9) {
			info_imc = "Obseidade classe I"
		} senao se (imc > 34.9 e imc <= 39.9) {
			info_imc = "Obseidade classe II"
		} senao {
			info_imc = "Obseidade classe III"
		}

		escreva("O usuário com a altura: "+ altura +"m, peso: " + peso+ "kg, tem imc de "+mat.arredondar(imc,2)+ " e a classificação como '" + info_imc+"'")

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 241; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */