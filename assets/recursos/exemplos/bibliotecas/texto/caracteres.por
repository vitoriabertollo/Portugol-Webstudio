
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
 * 	Este exemplo demonstra o uso da fun��o "obter_caracter" da biblioteca "Texto" para
 * 	obter um caracter espec�fico dentro de um dado do tipo cadeia. Neste exemplo, o
 * 	usu�rio deve informar um valor e o programa ir� verificar se o valor digitado �
 * 	um n�mero bin�rio v�lido.
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
		cadeia numero
		caracter digito
		logico binario = verdadeiro

		escreva("Informe um n�mero no formato bin�rio (Ex.: 1101001): ")
		leia(numero)

		// Usamos um la�o para percorrer todos os caracteres da cadeia. Come�ando 
		// no caracter 0 e indo at� o �ltimo caracter, tx.numero_caracteres(numero) - 1
		para (inteiro indice = 0; indice <= tx.numero_caracteres(numero) - 1; indice++)
		{
			// Obtemos o caracter na posi��o indicada pelo �ndice
			digito = tx.obter_caracter(numero, indice)

			// Verificamos o caracter nesta posi��o. Se n�o for 0 nem 1, 
			// ent�o o n�mero n�o � bin�rio		
			se (digito != '0' e digito != '1')
			{
				binario = falso

				// J� sabemos que o n�mero n�o � bin�rio, ent�o n�o precisamos continuar
				// verificando. Por isso interrompemos o la�o com o comando "pare"
				pare
			}
		}

		limpa()

		se (binario)
		{
			escreva("O n�mero informado � bin�rio\n")
		}
		senao
		{
			escreva("O n�mero informado n�o � bin�rio\n")
		}
	}	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 991; 
 * @DOBRAMENTO-CODIGO = [1];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */