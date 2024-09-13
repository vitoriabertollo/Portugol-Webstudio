
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
 * 	Este exemplo utiliza a biblioteca "Arquivos" para ler apenas algumas linhas de um
 * 	arquivo de texto contendo o placar de um jogo e exib�-lo ao usu�rio.
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
		// Como o Portugol Studio permite trabalhar com mais de um arquivo ao mesmo tempo, 
		// precisamos informar qual arquivo queremos ler. Neste caso, s� temos o arquivo de
		// placar aberto, portanto, passamos seu endere�o como par�metro na fun��o.		
		//
		// A fun��o "ler_linha", l� a linha atual do arquivo e automaticamente pula para a
		// pr�xima linha. Isto quer dizer que se quisermos ler as primeiras 3 linhas do arquivo,
		// precisamos chamar a fun��o 3 vezes seguidas.
		//
		// Ao chamar a fun��o "ler_linha" a linha atual do arquivo ser� lida e retornada pela 
		// fun��o. Pode-se escrever a linha diretamente no console, ou armazenar em uma vari�vel
		// para escrever depois. Neste exemplo ser� usada a segunda estrat�gia.
		
		cadeia linha1 = a.ler_linha(arquivo_placar)
		cadeia linha2 = a.ler_linha(arquivo_placar)
		cadeia linha3 = a.ler_linha(arquivo_placar)

		// Ap�s ler os dados desejados, � necess�rio fechar o arquivo. � necess�rio fazer isso
		// para liberar a mem�ria que est� sendo utilizada pelo arquivo e tamb�m para que outros
		// programas possam acess�-lo
		//
		// Para isso, utiliza-se a fun��o "fechar_arquivo". Novamente, � necess�rio informar ao
		// Portugol Studio qual arquivo queremos fechar. Para isso, passamos o endere�o do arquivo
		// por par�metro

		a.fechar_arquivo(arquivo_placar)

		// O �ltimo passo, � escrever no console as linhas que foram lidas do arquivo.
		//
		// Para isso, basta utilizar as vari�veis que declaramos anteriormente e que
		// usamos para armazenar as linhas.

		escreva("Linha 1: ", linha1, "\n")
		escreva("Linha 2: ", linha2, "\n")
		escreva("Linha 3: ", linha3, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 868; 
 * @DOBRAMENTO-CODIGO = [1];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */