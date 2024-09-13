
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
 * 	Este exemplo pede ao usu�rio que informe um valor inicial, um valor final e uma 
 * 	quantidade de sorteios a ser executada. Logo ap�s, utiliza a fun��o "sorteia" da 
 * 	biblioteca "Util" para sortear n�meros entre os dois valores informados pelo 
 * 	usu�rio.
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
		inteiro valor_inicial
		inteiro valor_final
		inteiro valor_sorteado
		inteiro sorteios

		escreva("Informe um valor inicial: ")
		leia(valor_inicial)

		escreva("Informe um valor final: ")
		leia(valor_final)

		escreva("Informe quantos valores deseja sortear: ")
		leia(sorteios)

		para (inteiro i = 1; i <= sorteios; i++)
		{
			// Sorteia um n�mero entre os valores informados, incluindo
			// o pr�prio valor inicial e final
			valor_sorteado = u.sorteia(valor_inicial, valor_final)
			
			escreva("\nSorteio n� ", i, ": ", valor_sorteado)
		}

		escreva("\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 970; 
 * @DOBRAMENTO-CODIGO = [1];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */