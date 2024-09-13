
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
 * 	Este exemplo demonstra o uso da fun��o "preencher_a_esquerda" da biblioteca "Texto"
 * 	para inserir uma sequ�ncia de caracteres em um dado do tipoo cadeia.
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
		// A fun��o "preencher_a_esquerda" insere repetidamente um de caracter
		// � esquerda de uma cadeia at� que a cadeia atinja um tamanho desejado. 
		//
		// Vamos supor, por exemplo, que queremos exibir o n�mero 5 em bin�rio.
		// O valor a ser exibido seria 101. No entanto, precisamos que o n�mero
		// seja exibido sempre com 32 bits, independente de qual n�mero seja.
		//
		// A fun��o "preencher_a_esquerda" pode auxiliar nesta tarefa. Para resolver
		// o problema proposto, basta pedir � fun��o que preencha a cadeia com zeros (0)
		// � esquerda at� que o tamanho dela seja de 32 caracteres (32 bits)
		
		cadeia binario, binario_8bits, binario_16bits, binario_32bits

		escreva("Digite um n�mero em bin�rio: ")
		leia(binario)

		limpa()
		escreva("\nN�mero bin�rio informado: ", binario, "\n")

		// Preenche a cadeia com zeros � esquerda at� que o tamanho seja 8 caracteres
		binario_8bits = tx.preencher_a_esquerda('0', 8, binario)
		escreva("\nN�mero bin�rio com 8 bits: ", binario_8bits)

		// Preenche a cadeia com zeros � esquerda at� que o tamanho seja 16 caracteres
		binario_16bits = tx.preencher_a_esquerda('0', 16, binario)
		escreva("\nN�mero bin�rio com 16 bits: ", binario_16bits)

		// Preenche a cadeia com zeros � esquerda at� que o tamanho seja 32 caracteres
		binario_32bits = tx.preencher_a_esquerda('0', 32, binario)
		escreva("\nN�mero bin�rio com 32 bits: ", binario_32bits, "\n")		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 867; 
 * @DOBRAMENTO-CODIGO = [1];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */