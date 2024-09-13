
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
 * 	Este exemplo utiliza a fun��o "logaritmo" da biblioteca "Matematica" para calcular
 * 	o logaritmo de um n�mero para uma determinada base. Calcular o logaritmo de um n�mero 
 * 	significa encontrar o expoente ao qual a base foi elevada para chegar ao n�mero.
 * 	
 * 	Ex.:
 * 	
 * 		O logaritmo de 8 na base 2 � igual a 3, pois: 2� = 8
 * 		O logaritmo de 9 na base 3 � igual a 2, pois: 3� = 9
 * 
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
		real numero, base, expoente

		base = 2.0
		numero = 32.0

		expoente = mat.logaritmo(numero, base)
		escreva("O logaritmo de ", numero, " na base ", base, " � igual a: ", expoente, "\n")


		base = 25.0
		numero = 625.0

		expoente = mat.logaritmo(numero, base)
		escreva("O logaritmo de ", numero, " na base ", base, " � igual a: ", expoente, "\n")		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1114; 
 * @DOBRAMENTO-CODIGO = [1];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */