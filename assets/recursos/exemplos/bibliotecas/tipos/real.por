
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
 * 	Este exemplo demonstra como utilizar as fun��es da biblioteca "Tipos" para verificar
 * 	e converter dados do tipo real para outros tipos e vice-versa.
 * 
 * Autores:
 * 
 * 	Luiz Fernando Noschang (noschang@univali.br)
 * 	
 * Data: 18/07/2014
 */
 
programa
{
	inclua biblioteca Tipos --> tp
	
	funcao inicio()
	{
		cadeia texto = "4.78"
		real num_real
		inteiro num_inteiro

		// Aqui usamos a fun��o "cadeia_e_real" para verificar se o texto
		// contido na vari�vel do tipo cadeia representa um n�mero real
		se (tp.cadeia_e_real(texto))
		{
			// Agora que j� sabemos que esta cadeia representa um n�mero real
			// utilizamos a fun��o "cadeia_para_real" para converter a cadeia
			// em um n�mero real e podermos trabalhar com ele
			num_real = tp.cadeia_para_real(texto)
			num_real = num_real * 2

			escreva("Valor convertido em real: ", num_real, "\n")

			// Algumas opera��es, como o MOD (%), s� podem ser feitas entre
			// n�meros inteiros
			//
			// Neste caso, vamos converter o n�mero real em inteiro para podermos
			// utiliz�-lo nesta opera��o
			//
			// Note que ao fazer isso, o n�mero ser� truncado, ou seja, todos os 
			// valores ap�s a v�rgula ser�o perdidos e somente a parte inteira do
			// n�mero ser� mantida
			num_inteiro = tp.real_para_inteiro(num_real)	
			escreva("Valor convertido em inteiro: ", num_inteiro, "\n")

			// Por �ltimo, podemos transformar novamente o valor real em uma cadeia, 
			// caso seja necess�rio. Para isso usamos a fun��o "real_para_cadeia"

			num_real = num_real + 5.0
			texto = tp.real_para_cadeia(num_real)

			escreva("Valor convertido em cadeia: ", texto, "\n")
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 862; 
 * @DOBRAMENTO-CODIGO = [1];
 */