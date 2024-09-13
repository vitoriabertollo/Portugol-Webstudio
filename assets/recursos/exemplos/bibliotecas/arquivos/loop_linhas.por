
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
 * 	Este exemplo utiliza a biblioteca "Arquivos" para ler todas as linhas de um arquivo
 * 	de texto contendo o placar de um jogo e exib�-lo ao usu�rio. Neste exemplo, a
 * 	quantidade de linhas a ser lida � obtida usando uma fun��o da biblioteca "Arquivos". 
 * 
 * Autores:
 * 
 * 	Luiz Fernando Noschang (noschang@univali.br)
 * 	
 * Data: 10/02/2016
 */

programa
{
	inclua biblioteca Arquivos --> a
	
	funcao inicio()
	{
		// Nesta vari�vel � definido o caminho do arquivo que ser� lido.
		//
		// Pode-se informar o caminho completo, ou usar "./" para indicar
		// que o arquivo se encontra na mesma pasta onde o programa est� salvo.
		//
		// No Portugol Studio podemos utilizar tanto a barra invertida "\" quanto
		// a barra normal "/" para indicar o caminho.
		//
		// � recomendado utilizar a barra normal "/", pois assim o programa ir� 
		// funcionar em todos os sistemas operacionais (Windows, Linux, Mac).
		//
		// Al�m disso, os sistema Linux e Mac, diferenciam letras min�sculas e 
		// mai�sculas. Portanto, � muito importante escrever o caminho do arquivo
		// exatamente com ele aparece no computador.
		
		cadeia caminho_do_arquivo = "./placar.txt"

		// O primeiro passo � abrir o arquivo para que o Portugol Studio possa ler.
		//
		// Para isso, utiliza-se a fun��o "abrir_arquivo", passando o caminho do 
		// arquivo a ser lido.
		//
		// Tamb�m � necess�rio informar ao Portugol Studio se o arquivo ser� aberto
		// para ler ou gravar os dados. Isto � feito passando por par�metro a constante
		// "MODO_LEITURA" da biblioteca "Arquivos".
		//
		// A fun��o "abrir_arquivo" retorna a um valor inteiro, que corresponde ao
		// endere�o (posi��o) da mem�ria onde o arquivo foi carregado.
		//
		// � necess�rio guardar esta posi��o em uma vari�vel para que possamos ler as 
		// linhas do arquivo e tamb�m fech�-lo quando terminarmos de us�-lo.		
		
		inteiro arquivo_placar = a.abrir_arquivo(caminho_do_arquivo, a.MODO_LEITURA)

		// O segundo passo � ler cada linha do arquivo e escrever na sa�da de dados (console)
		// do Portugol Studio. Para isso utiliza-ze a fun��o "ler_linha".
		//
		// No exemplo anterior, foram lidas apenas as primeiras linhas do arquivo. Neste exemplo, 
		// vamos ler todas as linhas utilizando um la�o de repeti��o "para".
		//
		// Para utilizar um la�o de repeti��o, � necess�rio saber o n�mero de linhas existentes 
		// no arquivo. Vamos declarar uma vari�vel para armazenar a quantidade de linhas, assim, 
		// caso o n�mero de linhas mude, ser� f�cil modificar o programa para que ele volte a 
		// funcionar.
		//
		// Tamb�m vamos declarar uma vari�vel que ir� armazenar a linha lida em cada itera��o
		// para que possamos escrev�-la depois.

		cadeia linha = ""
		inteiro quantidade_de_linhas = 10

		// Iniciamos o la�o de repeti��o em 1 e iteramos at� a quantidade de linhas existentes no
		// arquivo.
		
		para (inteiro numero_da_linha = 1; numero_da_linha <= quantidade_de_linhas; numero_da_linha++)
		{
			// Lemos a linha atual e armazenamos em uma vari�vel.
			//
			// No exemplo anterior, t�nhamos 3 vari�veis para armazenar cada uma das linhas.
			// Neste caso, temos apenas uma variavel. 
			//
			// Isto significa que a cada nova linha lida, o valor anterior ser� perdido. Portanto
			// precisamos ir escrevendo as linhas no console conforme elas v�o sendo lidas.
			//
			// Outra estrat�gia � concatenar cada nova linha no final da vari�vel, separando as
			// linhas com o caracter de quebra de linha "\n". Neste caso, somente escrevemos a 
			// vari�vel no console ap�s terminar de ler todas as linhas
			//
			// A segunda estrat�gia � mais eficiente que a primeira. Troque o caminho do arquivo
			// no in�cio do programa para "./placar2.txt" e teste as diferentes estrat�gias. Voc�
			// ver� que a segunda executa muito mais r�pido. N�o esque�a de mudar o valor da vari�vel
			// "quantidade_de_linhas" para 1000.


			// Comente a linha abaixo para usar a segunda estrat�gia
			linha = a.ler_linha(arquivo_placar)				

			// Comente a linha abaixo para usar a segunda estrat�gia
			escreva("Linha ", numero_da_linha, ": ", linha, "\n")		


			// Descomente a linha abaixo para usar a segunda estrat�gia
			//linha = linha + "Linha " + numero_da_linha + ": " + a.ler_linha(arquivo_placar) + "\n"	
		}

		// Descomente a linha abaixo para usar a segunda estrat�gia
		//escreva(linha)

		// Ap�s ler os dados desejados, � necess�rio fechar o arquivo. � necess�rio fazer isso
		// para liberar a mem�ria que est� sendo utilizada pelo arquivo e tamb�m para que outros
		// programas possam acess�-lo
		//
		// Para isso, utiliza-se a fun��o "fechar_arquivo". Novamente, � necess�rio informar ao
		// Portugol Studio qual arquivo queremos fechar. Para isso, passamos o endere�o do arquivo
		// por par�metro

		a.fechar_arquivo(arquivo_placar)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 967; 
 * @DOBRAMENTO-CODIGO = [1];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */