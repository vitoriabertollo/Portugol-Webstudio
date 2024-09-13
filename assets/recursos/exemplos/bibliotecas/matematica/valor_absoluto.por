
/* CLIQUE NO SINAL DE "+", � ESQUERDA, PARA EXIBIR A DESCRI��O DO EXEMPLO
 *  
 * Copyright (C) 2014 - UNIVALI - Universidade do Vale do Itaja�
 * 
 * Este arquivo de c�digo fonte � livre para utiliza��o, c�pia e/ou modifica��o
 * desde que este cabe�alho, contendo os direitos autorais e a descri��o do programa, 
 * seja mantido.
 * 
 * Se tiver dificuldade em compreender este exemplo, acesse as v�deoaulas do Portugol 
 * Studio para auxili�-lo:
 * 
 * https://www.youtube.com/watch?v=K02TnB3IGnQ&list=PLb9yvNDCid3jQAEbNoPHtPR0SWwmRSM-t
 * 
 * Descri��o:
 * 
 * 	Este exemplo demonstra como utilizar a fun��o "valor_absoluto" da biblioteca "Matematica"
 * 	para obter o valor absoluto de um n�mero.
 * 	
 * 	Na matem�tica, o valor absoluto (ou m�dulo) � a dist�ncia entre um ponto qualquer de uma
 * 	reta at� sua origem (ponto zero). Como n�o existem dist�ncias negativas, o valor absoluto
 * 	� sempre um n�mero positivo. Assim:
 * 	
 * 	- O valor absoluto de 4 � igual a 4
 * 	- O valor absoluto de -4 tamb�m � igual a 4
 * 	
 * 	- O valor absoluto de 12 � igual a 12
 * 	- O valor absoluto de -12 � igual a 12
 * 
 * Autores:
 * 
 * 	Luiz Fernando Noschang (noschang@univali.br)
 * 	
 * Data: 18/07/2014
 */
 
programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		real numero, absoluto

		escreva("Informe um n�mero positivo ou negativo: ")
		leia(numero)

		// Calcula o valor absoluto do n�mero informado
		absoluto = mat.valor_absoluto(numero)
		escreva("O valor absoluto de ", numero, " �: ", absoluto, "\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1267; 
 * @DOBRAMENTO-CODIGO = [1];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */