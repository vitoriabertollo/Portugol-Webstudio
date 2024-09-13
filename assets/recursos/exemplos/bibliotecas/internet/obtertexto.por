programa
{
	inclua biblioteca Internet --> i
	inclua biblioteca Texto --> t
	inclua biblioteca Util --> u
	
	cadeia endereco = "https://portugol-web-counter-test.herokuapp.com/api"
	inteiro count = 1
	
	funcao inicio()
	{
		se(i.endereco_disponivel(endereco)){
			cadeia resp = i.obter_texto(endereco+"/users")
			inteiro val = t.numero_caracteres(resp)
			cadeia users = t.extrair_subtexto(resp, 23, val-1)
			escreva("Este exemplo j� foi executado " + users + " vezes\n")
			escreva("\n\n\nConteudo capturado:\n"+resp)	
		}senao{
			se(count < 5){
				count++
				para(inteiro i = 5; i>0; i--){
					limpa()
					escreva("Endere�o n�o encontrado, tentaremos pela "+count+"� vez em "+i)
					u.aguarde(1000)
				}
				inicio()
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 308; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */