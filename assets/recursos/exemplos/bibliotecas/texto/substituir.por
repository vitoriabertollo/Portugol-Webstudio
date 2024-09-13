
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
 * 	Este exemplo demonstra o uso da fun��o "substituir" da biblioteca "Texto" para trocar
 * 	uma sequ�ncia de caracteres por outra em um dado do tipo cadeia.
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
		cadeia texto = "PATO"
		cadeia substituicao

		/*
		 * Ao substituir um texto, devem ser considerados os seguintes aspectos:
		 * 
		 * 1 - A fun��o "substituir" n�o altera o valor da vari�vel original, mas 
		 *     retorna um novo valor. Desta forma, a vari�vel "texto" vai possuir
		 *     sempre o valor "PATO", a n�o ser que o valor retornado pela fun��o
		 *     seja atribu�do � ela
		 *     
		 * 2 - A fun��o "substituir" diferencia letras ma�usculas e min�sculas na
		 *     hora de procurar o texto que se quer substituir
		 */

		//-----------------------------------------------------------------------------------//

		// Aqui substitu�mos a sequ�ncia de caracteres "PA" pela
		// sequ�ncia de caracteres "RA" para formar a palavra "RATO"
		substituicao = tx.substituir(texto, "PA", "RA")
		
		escreva(texto) 					// A vari�vel "texto" manteve seu valor
		escreva(" --> ", substituicao, "\n") 	// A vari�vel "substituicao" possui o novo valor
		
		//-----------------------------------------------------------------------------------//

		// Aqui substitu�mos a sequ�ncia de caracteres "PA" pela
		// sequ�ncia de caracteres "GA" para formar a palavra "GATO"
		substituicao = tx.substituir(texto, "PA", "GA")
		
		escreva(texto) 					// A vari�vel "texto" manteve seu valor
		escreva(" --> ", substituicao, "\n") 	// A vari�vel "substituicao" possui o novo valor

		//-----------------------------------------------------------------------------------//

		// Aqui substitu�mos a sequ�ncia de caracteres "A" pela
		// sequ�ncia de caracteres "AR" para formar a palavra "PARTO"
		substituicao = tx.substituir(texto, "A", "AR")

		escreva(texto) 					// A vari�vel "texto" manteve seu valor
		escreva(" --> ", substituicao, "\n") 	// A vari�vel "substituicao" possui o novo valor

		//-----------------------------------------------------------------------------------//
		
		// Aqui substitu�mos a sequ�ncia de caracteres "AT" pela
		// sequ�ncia de caracteres "ELICAN" para formar a palavra "PELICANO"
		substituicao = tx.substituir(texto, "AT", "ELICAN")

		escreva(texto) 					// A vari�vel "texto" manteve seu valor
		escreva(" --> ", substituicao, "\n") 	// A vari�vel "substituicao" possui o novo valor
		
		//-----------------------------------------------------------------------------------//

		// Aqui substitu�mos a sequ�ncia de caracteres "TO" pela
		// sequ�ncia de caracteres "MONHA" para formar a palavra "PAMONHA"
		substituicao = tx.substituir(texto, "TO", "MONHA")
		
		escreva(texto) 					// A vari�vel "texto" manteve seu valor
		escreva(" --> ", substituicao, "\n") 	// A vari�vel "substituicao" possui o novo valor

		//-----------------------------------------------------------------------------------//

		// Aqui realizamos uma substitui��o, mas como informamos uma sequ�ncia de caracteres
		// em letras min�sculas, a substitui��o n�o ir� ocorrer
		substituicao = tx.substituir(texto, "to", "MONHA")
		
		escreva(texto) 					// A vari�vel "texto" manteve seu valor
		escreva(" --> ", substituicao, "\n") 	// A vari�vel "substituicao" manteve seu valor

		//-----------------------------------------------------------------------------------//
		
		// Aqui realizamos uma substitui��o, mas como informamos uma sequ�ncia de caracteres
		// que n�o existe no texto, a substitui��o n�o ir� ocorrer
		substituicao = tx.substituir(texto, "LI", "MA")
		
		escreva(texto) 					// A vari�vel "texto" manteve seu valor
		escreva(" --> ", substituicao, "\n") 	// A vari�vel "substituicao" manteve seu valor

		//-----------------------------------------------------------------------------------//


		// Aqui realizamos uma substitui��o e atribu�mos o valor retornado �
		// vari�vel "texto"
		texto = tx.substituir(texto, "PA", "LAGAR")
		
		escreva(texto) 					// A vari�vel "texto" possui o novo valor
		escreva(" --> ", substituicao, "\n") 	// A vari�vel "substituicao" manteve seu valor

		//-----------------------------------------------------------------------------------//
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 865; 
 * @DOBRAMENTO-CODIGO = [1];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */