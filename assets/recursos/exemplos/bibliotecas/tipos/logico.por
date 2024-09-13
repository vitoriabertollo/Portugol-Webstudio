
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
 * 	e converter dados do tipo caracter para outros tipos e vice-versa.
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
		caracter car
		
		cadeia cad1 = "Ol�"
		cadeia cad2 = "A"

		inteiro num1 = 34
		inteiro num2 = 9

		// Aqui utilizamos a fun��o "cadeia_e_caracter" para verificar se uma cadeia
		// � representa um caracter. A cadeia s� ir� representar um caracter se o seu
		// tamanho for exatamente igual a 1.
		//
		// Neste caso, ser� retornado falso, pois o valor contido na vari�vel possui
		// mais de um caracter
		se (tp.cadeia_e_caracter(cad1))
		{
			escreva("A cadeia \"", cad1, "\" representa um caracter")
		}


		// Aqui repetimos o teste feito anteriormente, mas neste caso, ser� retornado 
		// verdadeiro, pois o valor contido na vari�vel possui apenas um caracter
		se (tp.cadeia_e_caracter(cad2))
		{
			escreva("A cadeia \"", cad2, "\" representa um caracter")

			// Agora que j� sabemos que esta cadeia representa um caracter, podemos
			// convert�-lo em um caracter e utiliz�-lo normalmente

			car = tp.cadeia_para_caracter(cad2)

			escolha (car)
			{
				caso 
			}
		}

		

	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1659; 
 * @DOBRAMENTO-CODIGO = [1];
 */