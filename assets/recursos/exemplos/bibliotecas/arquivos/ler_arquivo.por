
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
 * 	de texto contendo o placar de um jogo e exib�-lo para o usu�rio.
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
		// Pod-se informar o caminho completo, ou usar "./" para indicar
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
		// No exemplo anterior, lemos todas as linhas do arquivo utilizando o la�o de repeti��o
		// "para". S� pudemos fazer isso, porque conhec�amos a quantidade de linhas do arquivo.		
		//
		// No entanto, existem casos em que o n�mero de linhas n�o � conhecido. Para poder ler
		// estes arquivos, o Portugol Studio possui uma fun��o especial.
		//
		// A fun��o "fim_arquivo" testa se chegamos no final do arquivo e retorna um valor 
		// l�gico.
		//
		// verdadeiro: se chegamos no fim do arquivo
		// falso: se ainda n�o chegamos no fim do arquivo
		// 
		// Isto significa que podemos utilizar esta fun��o em um la�o de repeti��o "enquanto" e
		// ficar lendo linha a linha enquanto o arquivo n�o chega ao fim.
		
		cadeia linha = ""

		// Como n�o conhecemos a quantidade de linhas, mas queremos escrever o n�mero da linha
		// no console, vamos declarar uma vari�vel para contar as linhas conforme formos lendo.

		inteiro numero_da_linha = 0

		// Precisamos informar para a fun��o "fim_arquivo" qual arquivo queremos testar. Neste
		// caso, � o arquivo de placar.
		//
		// IMPORTANTE: nesta vers�o do Portugol Studio, a fun��o "fim_arquivo" est� com um pequeno
		// bug que faz com que seja lida uma linha a mais do que deveria.
		
		enquanto (nao a.fim_arquivo(arquivo_placar))
		{
			// A cada linha lida, vamos incrementar o contador

			numero_da_linha = numero_da_linha + 1

			// Assim como no exemplo anterior, podemos seguir duas estrat�gias: ir
			// escrevendo no console ou concatenar na vari�vel para escrever depois.
			//
			// A segunda estrat�gia � mais eficiente que a primeira. Troque o caminho do arquivo
			// no in�cio do programa para "./placar2.txt" e teste as diferentes estrat�gias. Voc�
			// ver� que a segunda executa muito mais r�pido.			

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
 * @POSICAO-CURSOR = 867; 
 * @DOBRAMENTO-CODIGO = [1];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */