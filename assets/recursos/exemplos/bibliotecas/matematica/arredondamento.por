
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
 * 	Este exemplo demonstra como utilizar a fun��o "arredondar" da biblioteca "Matematica"
 * 	para arredondar um n�mero qualquer.
 * 
 * Autores:
 * 
 * 	Luiz Fernando Noschang (noschang@univali.br)
 * 	
 * Data: 18/07/2014
 */
 
programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		real numero = 1.25673245
		real arredondamento

		// Arredonda o n�mero para 3 casas decimais, isto �,
		// 3 casas depois da v�rgula
		arredondamento = mat.arredondar(numero, 3)
		escreva("O n�mero com 3 casas decimais �: ", arredondamento, "\n")
		

		// Arredonda o n�mero para 2 casas decimais, isto �,
		// 2 casas depois da v�rgula
		arredondamento = mat.arredondar(numero, 2)
		escreva("O n�mero com 2 casas decimais �: ", arredondamento, "\n")
		

		// Arredonda o n�mero para 1 casa decimal, isto �,
		// 1 casa depois da v�rgula
		arredondamento = mat.arredondar(numero, 1)
		escreva("O n�mero com 1 casa decimal �: ", arredondamento, "\n")

		// Arredonda o n�mero removendo todas as casas decimais
		arredondamento = mat.arredondar(numero, 0)
		escreva("O n�mero sem casas decimais �: ", arredondamento, "\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 842; 
 * @DOBRAMENTO-CODIGO = [1];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */