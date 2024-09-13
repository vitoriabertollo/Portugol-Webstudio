/* CLIQUE NO SINAL DE "+", � ESQUERDA, PARA EXIBIR A DESCRI��O DO EXEMPLO
 *  
 * Copyright (C) 2018 - UNIVALI - Universidade do Vale do Itaja�
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
 *	Exemplo de como substituir o texto de dentro de um arquivo por outro
 * 	
 * 
 * Autores:
 * 
 * 	Adson Marques da Silva Esteves (shinadson@gmail.com)
 * 	
 * Data: 30/01/2018
 */

programa
{
	inclua biblioteca Arquivos --> a
	
	funcao inicio()
	{
		//Para substituir texto dentro de um arquivo primeiro vamos escrever um arquivo de texto
		//Abrimos um arquivo em modo escrita e escrevemos algumas coisas nele
		inteiro endereco = a.abrir_arquivo("dummyText.txt", a.MODO_ESCRITA)

		a.escrever_linha("O portugol � uma IDE muito maneira", endereco)
		a.escrever_linha("O portugol cont�m v�rios exemplos interessantes", endereco)
		a.escrever_linha("O portugol � realizado no LITE", endereco)

		a.fechar_arquivo(endereco)

		
		//Agora vamos imprimir o texto do arquivo para ver se foi tudo escrito corretamente
		escreva("\n texto original \n")
		endereco = a.abrir_arquivo("dummyText.txt", a.MODO_LEITURA)

		enquanto(nao a.fim_arquivo(endereco))
		{
			escreva(a.ler_linha(endereco)+"\n")
		}
		
		a.fechar_arquivo(endereco)


		//Uma vez confirmado o texto, substituiremos algumas partes desse texto por outras com a fun��o substituir texto
		//ela pode tanto substituir todas as ocorr�ncias de um texto
		//ou substituir apenas a primeira ocorrencia do texto
		//isso ser� definido pelo �ltimo par�metro na fun��o
		//caso verdadeiro apenas a primeira ocorrencia
		//caso falso todas as ocorrencias

		//a seguinte fun��o substituir� no arquivo de texto a palavra portugol
		//por Portugol Studio, em todas as ocorrencias
		a.substituir_texto("dummyText.txt", "portugol", "Portugol Studio", falso)
		//a seguinte fun��o substituir� no arquivo de texto a palavra �
		//por retrata, apenas na primeira ocorr�ncia
		a.substituir_texto("dummyText.txt", "�", "retrata", verdadeiro)


		//em seguida impimiremos o texto do arquivo novamente, para poder-mos comparar os casos
		escreva("\n texto modificado \n")

		endereco = a.abrir_arquivo("dummyText.txt", a.MODO_LEITURA)

		enquanto(nao a.fim_arquivo(endereco))
		{
			escreva(a.ler_linha(endereco)+"\n")
		}
		
		a.fechar_arquivo(endereco)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 759; 
 * @DOBRAMENTO-CODIGO = [0];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */