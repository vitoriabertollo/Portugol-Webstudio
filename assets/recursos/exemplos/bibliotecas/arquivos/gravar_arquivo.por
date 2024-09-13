
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
 * 	
 * 
 * Autores:
 * 
 * 	Luiz Fernando Noschang (noschang@univali.br)
 * 	
 * Data: 18/07/2014
 */
 
programa
{
	inclua biblioteca Arquivos --> a
	
	funcao inicio()
	{
		//Abre o arquivo no caminho indicado para escrever sobre ele
		//neste modo o texto atual do arquivo ser� completamente substitu�do pelo novo
		//Caso o arquivo n�o exista, um arquivo novo de mesmo nome ser� criado e aberto para escrita
		inteiro endereco = a.abrir_arquivo("dummyText.txt", a.MODO_ESCRITA)

		//cada chamado da fun��o escrever linha, ir� escrever o texto indicado no primeiro parametro
		//logo em seguida uma linha ser� pulada
		a.escrever_linha("Portugol Studio 1.1", endereco)
		a.escrever_linha("Portugol Studio 1.2", endereco)
		a.escrever_linha("Portugol Studio 1.3", endereco)

		// Ap�s ler os dados desejados, � necess�rio fechar o arquivo. � necess�rio fazer isso
		// para liberar a mem�ria que est� sendo utilizada pelo arquivo e tamb�m para que outros
		// programas possam acess�-lo
		//
		// Para isso, utiliza-se a fun��o "fechar_arquivo". Novamente, � necess�rio informar ao
		// Portugol Studio qual arquivo queremos fechar. Para isso, passamos o endere�o do arquivo
		// por par�metro
		a.fechar_arquivo(endereco)


		//Abre o arquivo no caminho indicado para escrever sobre ele
		//neste modo um novo texto ser� adicionado ao final do texto atual do arquivo
		//Caso o arquivo n�o exista, um arquivo novo de mesmo nome ser� criado e aberto para escrita
		endereco = a.abrir_arquivo("dummyText.txt", a.MODO_ACRESCENTAR)

		//cada chamado da fun��o escrever linha, ir� escrever o texto indicado no primeiro parametro
		//logo em seguida uma linha ser� pulada
		a.escrever_linha("Portugol Studio 1.1", endereco)
		a.escrever_linha("Portugol Studio 1.2", endereco)
		a.escrever_linha("Portugol Studio 1.3", endereco)


		// Ap�s ler os dados desejados, � necess�rio fechar o arquivo. � necess�rio fazer isso
		// para liberar a mem�ria que est� sendo utilizada pelo arquivo e tamb�m para que outros
		// programas possam acess�-lo
		//
		// Para isso, utiliza-se a fun��o "fechar_arquivo". Novamente, � necess�rio informar ao
		// Portugol Studio qual arquivo queremos fechar. Para isso, passamos o endere�o do arquivo
		// por par�metro
		a.fechar_arquivo(endereco)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 713; 
 * @DOBRAMENTO-CODIGO = [1];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */