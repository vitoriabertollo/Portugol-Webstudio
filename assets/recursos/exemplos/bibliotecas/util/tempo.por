
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
 * 	Este exemplo ilustra como a fun��o "tempo_decorrido" da biblioteca "Util" pode ser
 * 	utilizada para realizar medi��o e controle de tempo em um algortimo sem utilizar a 
 * 	fun��o "aguarde".
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
		inteiro tempo_inicial = 0
		inteiro tempo_atual = 0
		inteiro tempo_total = 0

		logico mensagem1 = falso
		logico mensagem2 = falso
		logico mensagem3 = falso

		// Armazena na vari�vel a quantidade de tempo em milissegundos
		// desde que a biblioteca foi carregada pela primeira vez
		tempo_inicial = u.tempo_decorrido()		

		faca
		{
			// Armazena novamente o tempo na vari�vel. Desta vez, o valor
			// retornado pela fun��o ser� diferente do valor retornado
			// anteriormente
			tempo_atual = u.tempo_decorrido()
			
			// Diminuindo o tempo atual do tempo inicial, podemos descobrir
			// quanto tempo se passou (em milissegundos) desde que armazenamos
			// o tempo inicial
			tempo_total = tempo_atual - tempo_inicial

			se (tempo_total >= 1000 e mensagem1 == falso) // Exibe uma mensagem ap�s 1 segundo
			{
				escreva("Primeira mensagem\n")
				mensagem1 = verdadeiro
			}
			senao se (tempo_total >= 5000 e mensagem2 == falso) // Exibe uma mensagem ap�s 5 segundos
			{
				escreva("Segunda mensagem\n")
				mensagem2 = verdadeiro
			}
			senao se (tempo_total >= 7000 e mensagem3 == falso) // Exibe uma mensagem ap�s 7 segundos
			{
				escreva("Terceira mensagem\n")
				mensagem3 = verdadeiro
			}			
		}	
		enquanto (tempo_total < 10000) // 	Finaliza o programa ap�s 10 segundos

		limpa()
				
		escreva("Tempo Inicial: ", tempo_inicial, "\n")
		escreva("Tempo Atual: ", tempo_atual, "\n")
		escreva("Tempo Total: ", tempo_total, "\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 901; 
 * @DOBRAMENTO-CODIGO = [1];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */