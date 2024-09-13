
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
 * 	Este exemplo demonstra como descobrir dinamicamente as dimens�es de uma matriz, 
 * 	isto �, o n�mero de linhas e colunas que ela possui. Para isto, o programa utiliza
 * 	as fun��es "numero_linhas" e "numero_colunas" da biblioteca "Util".
 * 
 * Autores:
 * 
 * 	Luiz Fernando Noschang (noschang@univali.br)
 * 	
 * Data: 18/07/2014
 */
 
programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		// Cria uma matriz com 3 linhas e 4 colunas.
		inteiro mat[][] = 
		{
			{ 4, 2, 9, 3}, 
			{ 8, 6, 5, 4}, 
			{ 9, 0, 1, 3}
		}

		/*
		 * Experimente substituir a matriz acima por esta e veja que 
		 * o programa consegue percorrer normalmente a nova matriz
		inteiro mat[][] = 
		{
			{ 4, 2}, 
			{ 8, 6}, 
			{ 9, 0},
			{ 2, 7}
		}*/


		inteiro linhas = u.numero_linhas(mat)
		inteiro colunas = u.numero_colunas(mat)

		escreva("A matriz possui ", linhas, " linhas\n")
		escreva("A matriz possui ", colunas, " colunas\n\n")


		// Utilizamos os valores obtidos anteriormente para percorrer
		// a matriz e exibir seus valores
		para (inteiro linha = 0; linha < linhas; linha++)
		{
			para (inteiro coluna = 0; coluna < colunas; coluna++)
			{
				escreva("[", mat[linha][coluna], "]")
			}

			escreva("\n")
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 948; 
 * @DOBRAMENTO-CODIGO = [1];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */