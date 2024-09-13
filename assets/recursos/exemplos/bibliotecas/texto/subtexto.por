
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
 * 	Este exemplo demonstra como utilizar a fun��o "extrair_subtexto" da biblioteca "Texto"
 * 	para obter uma parte de um texto armazenado em uma vari�vel do tipo cadeia.
 * 
 * Autores:
 * 
 * 	Luiz Fernando Noschang (noschang@univali.br)
 * 	
 * Data: 18/07/2014
 */
 
programa
{
	inclua biblioteca Texto --> tx
	
	funcao inicio()
	{

		// Troque a palavra "PAREDES" por "ARBUSTO" e veja o que acontece
		cadeia texto = "PAREDES"
		cadeia sub_texto

		/*
		 * Aqui extra�mos a palavra "PA" da palavra "PAREDES". Para isso
		 * � necess�rio entender dois conceitos.
		 * 
		 * 1 - O primeiro caracter de uma cadeia fica na posi��o 0
		 * 
		 * 2 - Ao extrair um subtexto, o caracter informado pela �ltima 
		 * 	  posi��o n�o � considerado
		 * 
		 * Na palavra "PAREDES" o caracter 0 � 'P', o caracter 1 � 'A',
		 * o caracter 2 � 'R', e assim por diante.
		 * 
		 * Para formar a palavra "PA", precisamos extrair os caracteres 
		 * 'P' e 'A', ou seja, os caracteres nas posi��es 0 e 1. Como a 
		 * �ltima posi��o n�o � considerada na extra��o, informamos as 
		 * posi��es 0 e 2.
		 */		
		sub_texto = tx.extrair_subtexto(texto, 0, 2)
		escreva(sub_texto, "\n")

		/* 
		 * Aqui extra�mos a palavra "REDES" da palavra "PAREDES".
		 * 
		 * Para formar a palavra "REDE", precisamos extrair os caracteres 
		 * 'R', 'E', 'D', 'E' e 'S', ou seja, os caracteres nas posi��es 2, 
		 * 3, 4, 5 e 6. Como a �ltima posi��o n�o � considerada na extra��o, 
		 * informamos as posi��es 2 e 7.
		 */
		sub_texto = tx.extrair_subtexto(texto, 2, 7)
		escreva(sub_texto, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 877; 
 * @DOBRAMENTO-CODIGO = [1];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */