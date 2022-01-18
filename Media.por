programa
{
	inclua biblioteca Tipos --> types
	inclua biblioteca Util --> utils
	//Calculo de média e verificação de aprovação
	funcao inicio()
	{
		real nota1,nota2,nota3,nota4,media
		inteiro numero_escolha
		cadeia nome
		cadeia escolas[] = {"USP", "UNICAMP", "FATEC"}

		faca{
			escreva("Qual seu nome? ")
			leia(nome)

			se(nome==""){
				escreva("\nInsira o nome corretamente!\n")
			}
		}enquanto(nome=="")
		
		inteiro contador = 0
		inteiro contador_escreva = 1
		cadeia notas[4]
		
		faca{
			faca{
				escreva("\nEscreva a " + contador_escreva + "ª nota: ")
				leia(notas[contador])	

				se(notas[contador] == ""){
					escreva("\nNota inválida!")
				}
			}enquanto(notas[contador] == "")
			
			contador++
			contador_escreva++
		}enquanto(contador < 4)
		
		media = (types.cadeia_para_real(notas[0]) + types.cadeia_para_real(notas[1]) + types.cadeia_para_real(notas[2]) + types.cadeia_para_real(notas[3])) /4

		se(media >= 6.0){
			escreva("\nAprovado!")

			logico escolheu_corretamente = falso

			faca{
				escreva("\n\nEscolha a escola: 1 -> " + escolas[0] + " | 2 -> " + escolas[1] + " | 3 -> " + escolas[2] + " \n")
				leia(numero_escolha)

				se(numero_escolha > utils.numero_elementos(escolas) ou numero_escolha < 1){
					escreva("\nEscolha corretamente!")
				}
				senao{
					numero_escolha--
					escreva("\n" + escolas[numero_escolha] + "!!!")
					escolheu_corretamente = verdadeiro
				}
				
			}enquanto(escolheu_corretamente == falso)

			escreva("\nAluno: " + nome + " com media: " + media + " se matriculou na escola: " + escolas[numero_escolha] + " com sucesso")
		}
		senao{
			escreva("Não Aprovado")
			escreva("\nMédia: " + media)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 263; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */