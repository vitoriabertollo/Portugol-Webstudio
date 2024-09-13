
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
 * 	e converter dados do tipo inteiro para outros tipos e vice-versa.
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
		cadeia texto = "101"
		real num_real
		inteiro num_inteiro
		
		// Aqui usamos a fun��o "cadeia_e_inteiro" para verificar se o texto
		// contido na vari�vel do tipo cadeia representa um n�mero inteiro
		//
		// Note que, devemos informar a base do n�mero que queremos verificar.
		// Por exemplo, para verificar se a cadeia representa um n�mero decimal
		// informamos a base 10, para verificar se a cadeia representa um n�mero
		// bin�rio, informamos a base 2
		se (tp.cadeia_e_inteiro(texto, 10))
		{
			// J� sabemos que esta cadeia representa um n�mero na base 10. Agora
			// usamos a fun��o "cadeia_para_inteiro" para converter o valor em 
			// um n�mero inteiro e podermos trabalhar com ele
			num_inteiro = tp.cadeia_para_inteiro(texto, 10)
			escreva("Este valor � o n�mero decimal: ", num_inteiro, "\n")
		}
		
		// Uma mesma cadeia pode representar diferentees n�meros em diferentes bases.
		// Por exemplo, o valor "101" representa o n�mero 5 em bin�rio, o n�mero 101
		// em decimal e o n�mero 257 em hexadecimal
		se (tp.cadeia_e_inteiro(texto, 2))
		{
			// J� sabemos que esta cadeia representa um n�mero na base 2. Agora
			// usamos a fun��o "cadeia_para_inteiro" para converter o valor em 
			// um n�mero inteiro e podermos trabalhar com ele
			num_inteiro = tp.cadeia_para_inteiro(texto, 2)
			escreva("Este valor � o n�mero bin�rio: ", num_inteiro, "\n")
		}

		se (tp.cadeia_e_inteiro(texto, 16))
		{
			// J� sabemos que esta cadeia representa um n�mero na base 16. Agora
			// usamos a fun��o "cadeia_para_inteiro" para converter o valor em 
			// um n�mero inteiro e podermos trabalhar com ele
			num_inteiro = tp.cadeia_para_inteiro(texto, 16)
			escreva("Este valor � o n�mero hexadecimal: ", num_inteiro, "\n")
		}


		num_inteiro = tp.cadeia_para_inteiro("2863", 10)
	
		// Uma vez que convertemos uma cadeia em um n�mero inteiro, podemos
		// trabalhar com ele normalmente
		num_inteiro = num_inteiro / 2
		escreva("\nN�mero convertido em inteiro: ", num_inteiro)


		num_inteiro = tp.cadeia_para_inteiro("2863", 10)
		
		// Tamb�m podemos converter um n�mero inteiro para real, caso necess�rio.
		// Para isso usamos a fun��o "inteiro_para_real"
		num_real = tp.inteiro_para_real(num_inteiro)
		num_real = num_real / 2
		escreva("\nN�mero convertido em real: ", num_real, "\n")		


		num_inteiro = tp.cadeia_para_inteiro("2863", 10)

		// Por �ltimo, podemos converter novamente o n�mero inteiro em uma cadeia.
		//
		// Para isso, usamos a fun��o "inteiro_para_cadeia" e informamos novamente
		// a base que queremos utilizar
		texto = tp.inteiro_para_cadeia(num_inteiro, 2)
		escreva("\nValor covertido para cadeia em bin�rio: ", texto, "\n")

		texto = tp.inteiro_para_cadeia(num_inteiro, 10)
		escreva("Valor covertido para cadeia em decimal: ", texto, "\n")

		texto = tp.inteiro_para_cadeia(num_inteiro, 16)
		escreva("Valor covertido para cadeia em hexadecimal: ", texto, "\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 865; 
 * @DOBRAMENTO-CODIGO = [1];
 */