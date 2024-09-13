
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
 * 	Este exemplo demonstra o uso da fun��o "posicao_texto" da biblioteca "Texto" para 
 * 	descobrir se um dado do tipo cadeia cont�m uma sequ�ncia de caracteres.
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
		cadeia texto
		inteiro posicao

		/*
		 * Ao utilizar a fun��o "posicao_texto", devem ser considerados os seguintes 
		 * aspectos:
		 * 
		 * 1 - A fun��o sempre retorna a posi��o da primeira ocorr�ncia encontrada.
		 *     Portanto, caso uma sequ�ncia de caracteres apare�a v�rias vezes em 
		 *     uma cadeia, ser� retornada sempre a posi��o da primeira sequ�ncia
		 *     
		 * 2 - A fun��o diferencia letras ma�usculas e min�sculas na hora de procurar 
		 * 	  o texto
		 */

		 //-----------------------------------------------------------------------------------//

		texto = "MACACO"
		
		// Aqui vamos procurar o texto "CA" dentro da palavra "MACACO". Sabemos que a 
		// sequ�ncia "CA" come�a no carcacter 'C', que � o terceiro caracter da cadeia. 
		// No entanto, como os �ndices de caracteres come�am em 0, o valor que ser� retornado
		// pela fun��o ser� o valor 2
		//
		// Tamb�m informamos que queremos buscar o texto a partir do caracter 0. Como 0 � sempre
		// o primeiro caracter, na verdade estamos dizendo que queremos buscar o texto a partir do
		// in�cio da cadeia
		posicao = tx.posicao_texto("CA", texto, 0)
		escreva("A posi��o do texto \"CA\" na palavra \"", texto, "\" �: ", posicao, "\n")

		//-----------------------------------------------------------------------------------//
		
		texto = "MACACA"

		// Este exemplo � igual ao anterior, a diferen�a � que neste caso, a palavra possui
		// a sequ�ncia "CA" duas vezes. Portanto, se buscarmos o texto a partir da posi��o 
		// inicial, o valor retornado ser� 2 novamente. No entanto, se buscarmos o texto a 
		// partir da posi��o 3, a fun��o ir� retornar o valor 4, que corresponde ao �ndice
		// da segunda letra 'C'.
		posicao = tx.posicao_texto("CA", texto, 3)
		escreva("A posi��o do texto \"CA\" na palavra \"", texto, "\" �: ", posicao, "\n")

		//-----------------------------------------------------------------------------------//
		
		texto = "macaca"

		// Nste exemplo vamos procurar novamente o texto "CA" dentro da palavra. Mas desta 
		// vez, a palavra est� em letras min�sculas. Como a fun��o diferencia entre letras 
		// min�sculas e mai�sculas, o valor retornado ser� -1, indicando que a sequ�ncia
		// n�o existe dentro da palavra.
		posicao = tx.posicao_texto("CA", texto, 0)
		escreva("A posi��o do texto \"CA\" na palavra \"", texto, "\" �: ", posicao, "\n")

		//-----------------------------------------------------------------------------------//

		texto = "MACACO GOSTA DE BANANA"
		escreva("\nA frase \"", texto, "\" possui a letra 'A' nas seguintes posi��es:\n")

		posicao = -1

		// Neste exemplo, vamos descobrir a posi��o de todas as letras 'A' dentro da frase.
		// Para isso usamos o la�o faca-enquanto, buscando a posi��o do texto at� que o valor
		// retornado seja -1, indicando que n�o h� mais letras 'A'.
		//
		// Existe um por�m. Se ficarmos chamando a fun��o "posicao_texto" dentro do la�o, 
		// vamos entrar em um loop infinito, pois o valor retornado ser� sempre 1, que 
		// corresponde � primeira letra 'A'. 
		//
		// O segredo aqui, � sempre procurar a pr�xima letra 'A' a partir da posi��o seguinte
		// � da �ltima letra 'A' encontrada.

		faca 
		{
			// Aqui obtemos a posi��o do pr�ximo caracter 'A'. Como inicializamos a vari�vel
			// 'posicao' com o valor -1, na primeira execu��o, a posi��o inicial ser� 0, que
			// pois -1 + 1 = 0
			//
			// Logo ap�s, atribu�mos o valor encontrado � vari�vel posi��o. Sabemos que a primeira
			// letra 'A' est� na posi��o 1, portanto, na pr�xima execu��o, a posi��o inicial ser� 2,
			// pois 1 + 1 = 2
			//
			// Isto ocorrer� sucessivamente at� que mais nenhuma letra 'A' possa ser encontrada
			posicao = tx.posicao_texto("A", texto, posicao + 1)

			// Se encontramos uma letra 'A', escrevemos sua posi��o
			se (posicao >= 0)
			{
				escreva(posicao, " ")
			}
		}
		enquanto (posicao >= 0) // Repetimos o processo enquanto uma letra tiver sido encontrada

		escreva("\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 869; 
 * @DOBRAMENTO-CODIGO = [1];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */