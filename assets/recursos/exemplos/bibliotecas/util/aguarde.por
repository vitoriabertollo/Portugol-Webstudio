
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
 * 	Este exemplo ilustra o uso da fun��o "aguarde" da biblioteca "Util" simulando uma 
 * 	contagem regressiva. O programa utiliza a fun��o aguarde para fazer com que o 
 * 	programa espere 1 segundo antes de escrever o pr�ximo n�mero da contagem regressiva 
 * 	na tela.
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
		para (inteiro contador = 10; contador >= 0; contador--)
		{
			limpa()
			escreva("Lan�ando o foguete em: ", contador)

			/* Faz com que o programa espere 1 segundo antes de fazer a pr�xima contagem.
			 *  
			 * O intervalo que o programa deve aguardar � informado sempre em milissegundos. 
			 * Como 1 segundo equivale a 1000 milissegundos, neste caso, informamos o valor 
			 * 1000.
			 * 
			 * Para fazer com que o programa aguarde apenas meio segundo, podemos informar o 
			 * valor 500, isto tamb�m far� com que a contagem seja mais r�pida.
			 */
			u.aguarde(1000)
		}

		limpa()
		escreva("O foguete foi lan�ado!!\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 976; 
 * @DOBRAMENTO-CODIGO = [1];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */