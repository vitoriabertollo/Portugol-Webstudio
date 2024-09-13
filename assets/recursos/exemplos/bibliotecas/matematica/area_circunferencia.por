
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
 * 	Este exemplo demonstra o uso da constante "PI" da biblioteca "Matematica". Neste
 * 	exemplo, a constante � utilizada para calcular a �rea de uma circunfer�ncia.
 * 	
 * 	Maiores informa��es sobre como � realizado o c�lculo de uma circunfer�ncia, podem
 * 	ser obtidas em: http://www.brasilescola.com/matematica/comprimento-Area-circunferencia.htm
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
		real raio
		real area

		escreva("Informe o raio da circunfer�ncia em cm: ")
		leia(raio)

		// Calcula a �rea da circunfer�ncia utilizando a constante
		// PI da biblioteca
		area = mat.PI * mat.potencia(raio, 2.0)

		// Arredonda o resultado para 2 casas decimais para facilitar
		// a visualiza��o
		area = mat.arredondar(area, 2)

		limpa()
		
		escreva("O valor de PI �: ", mat.PI)
		escreva("\nA �rea da circunfer�ncia �: ", area, " cm�\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1064; 
 * @DOBRAMENTO-CODIGO = [1];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */