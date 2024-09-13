
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
 *	Este exemplo demonstra como abrir uma janela param permitir ao usu�rio selecionar
 *	um arquivo. Ap�s abrir a janela de sele��o, o programa abre o arquivo selecionado
 *	caso o usu�rio tenha selecionado um arquivo ou exibe uma mensagem caso o usu�rio
 *	n�o tenha selecionado nenhum arquivo
 * 	
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
		// Neste exemplo, ao inv�s de definir o caminho do arquivo em uma vari�vel, 
		// vamos utilizar uma fun��o do Portugol Studio para permitir que o usu�rio
		// selecione um arquivo do computador
		//
		// Para isso, utiliza-se a fun��o "selecionar_arquivo" da biblioteca "Arquivos".
		//
		// Primeiro precisamos definir quais tipos de arquivos vamos permitir que o
		// usu�rio selecione. Por isso, vamos declarar um vetor do tipo cadeia, onde
		// cada posi��o do vetor ir� corresponder a um tipo de arquivo.
		//
		// Para definir um tipo de arquivo, precisamos informar um descri��o, que ser�
		// exibida ao usu�rio e um lista de extens�es que identificam o tipo de arquivo.
		// 
		// A descri��o deve estar separada da lista de extens�es pelo caracter '|' e 
		// cada extens�o dever� estar separada da outra pelo caracter ','. 
		
		cadeia tipos_de_arquivo[] = 
		{ 
			"Arquivos de texto|txt", 
			"Arquivos de configura��o do Windows|ini,inf" 
		}

		// Ao chamar a fun��o "selecionar_arquivo" precisamos passar por par�metro o 
		// vetor com os tipos suportados.
		//
		// Tamb�m � poss�vel permitir que o usu�rio selecione qualquer tipo de arquivo
		// passando o valor "verdadeiro" para o segundo par�metro da fun��o.
		//
		//
		// Ao chamar a fun��o "selecionar_arquivo" o Portugol Studio ir� exibir uma
		// janela permitindo ao usu�rio navegar pelos arquivos. Neste janela o usu�rio
		// tem a op��o de selecionar um arquivou ou de fechar a janela sem selecionar nada.
		//
		// Por isso, a fun��o retorna um valor cadeia indicando o caminho do arquivo que o usu�rio selecionou
		// ou n�o. 
		// Caso o usu�rio n�o tenha selecionado um arquivo ( fechou ou cancelou)
		// Uma cadeia vazia ser� retornada
		// Vamos armazenar o valor retornado em uma vari�vel e testar se o usu�rio selecionou
		// um arquivo ou n�o.
		
		cadeia arquivo_selecionado = a.selecionar_arquivo(tipos_de_arquivo, falso)
		logico usuario_selecionou_um_arquivo = arquivo_selecionado != ""

		se (usuario_selecionou_um_arquivo)
		{

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
			
			inteiro arquivo_placar = a.abrir_arquivo(arquivo_selecionado, a.MODO_LEITURA)
			
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
		senao
		{
			escreva("O usu�rio n�o seleciounou nenhum arquivo")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 963; 
 * @DOBRAMENTO-CODIGO = [1];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */