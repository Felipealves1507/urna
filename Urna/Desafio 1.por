programa
{
    funcao inicio()
    {
        // Declarar variáveis
        inteiro senha, votoPrefeito, votoVereador, continuar
        inteiro votosHerbert, votosRibeiro
        inteiro votosBarone, votosBidu, votosMonteiro, votosJoaoFera
        inteiro brancosPrefeito, nulosPrefeito
        inteiro brancosVereador, nulosVereador

        // Inicialização
        votosHerbert = 0
        votosRibeiro = 0
        votosBarone = 0
        votosBidu = 0
        votosMonteiro = 0
        votosJoaoFera = 0
        brancosPrefeito = 0
        nulosPrefeito = 0
        brancosVereador = 0
        nulosVereador = 0

        // Solicitar senha de acesso
        escreva("Digite a senha de acesso: ")
        leia(senha)

        enquanto (senha != 2411) {
            escreva("Senha incorreta! Tente novamente: ")
            leia(senha)
        }

        // Início do sistema
        escreva("Digite 1 para iniciar a votação ou 0 para encerrar a votação: ")
        leia(votoPrefeito)

        se (votoPrefeito == 1) {

            enquanto (votoPrefeito == 1) {
                // Votação para prefeito
                escreva("\nVote para Prefeito:\n")
                escreva("1. Herbert - Número 90\n")
                escreva("2. Ribeiro - Número 95\n")
                escreva("Digite o número do candidato ou 0 para votar em branco ou 9 para voto nulo: ")
                leia(votoPrefeito)

                se (votoPrefeito == 90) {
                    votosHerbert++
                } senao se (votoPrefeito == 95) {
                    votosRibeiro++
                } senao se (votoPrefeito == 0) {
                    brancosPrefeito++
                } senao se (votoPrefeito == 9) {
                    nulosPrefeito++
                } senao {
                    escreva("Voto inválido para Prefeito!\n")
                }

                // Votação para vereador
                escreva("\nVote para Vereador:\n")
                escreva("1. Barone - Número 90000\n")
                escreva("2. Bidu - Número 90999\n")
                escreva("3. Monteiro - Número 95000\n")
                escreva("4. João Fera - Número 95999\n")
                escreva("Digite o número do candidato ou 0 para votar em branco ou 9 para voto nulo: ")
                leia(votoVereador)

                se (votoVereador == 90000) {
                    votosBarone++
                } senao se (votoVereador == 90999) {
                    votosBidu++
                } senao se (votoVereador == 95000) {
                    votosMonteiro++
                } senao se (votoVereador == 95999) {
                    votosJoaoFera++
                } senao se (votoVereador == 0) {
                    brancosVereador++
                } senao se (votoVereador == 9) {
                    nulosVereador++
                } senao {
                    escreva("Voto inválido para Vereador!\n")
                }

                // Perguntar se deseja continuar
                escreva("\nDigite 1 para continuar a votação ou 0 para encerrar: ")
                leia(continuar)
                se (continuar == 0) {
                    votoPrefeito = 0
                }
            }

            // Exibir resultados
            escreva("\nVotação encerrada. Resultados:\n")
            escreva("\nVotos para Prefeito:\n")
            escreva("Herbert: ", votosHerbert, "\n")
            escreva("Ribeiro: ", votosRibeiro, "\n")
            escreva("Brancos: ", brancosPrefeito, "\n")
            escreva("Nulos: ", nulosPrefeito, "\n")

            escreva("\nVotos para Vereador:\n")
            escreva("Barone: ", votosBarone, "\n")
            escreva("Bidu: ", votosBidu, "\n")
            escreva("Monteiro: ", votosMonteiro, "\n")
            escreva("João Fera: ", votosJoaoFera, "\n")
            escreva("Brancos: ", brancosVereador, "\n")
            escreva("Nulos: ", nulosVereador, "\n")

            // Prefeito eleito
            se (votosHerbert > votosRibeiro) {
                escreva("\nPrefeito eleito: Herbert\n")
            } senao se (votosRibeiro > votosHerbert) {
                escreva("\nPrefeito eleito: Ribeiro\n")
            } senao {
                escreva("\nHouve um empate para Prefeito.\n")
            }

            // Vereador mais votado
            se (votosBarone > votosBidu e votosBarone > votosMonteiro e votosBarone > votosJoaoFera) {
                escreva("Vereador mais votado: Barone\n")
            } senao se (votosBidu > votosBarone e votosBidu > votosMonteiro e votosBidu > votosJoaoFera) {
                escreva("Vereador mais votado: Bidu\n")
            } senao se (votosMonteiro > votosBarone e votosMonteiro > votosBidu e votosMonteiro > votosJoaoFera) {
                escreva("Vereador mais votado: Monteiro\n")
            } senao se (votosJoaoFera > votosBarone e votosJoaoFera > votosBidu e votosJoaoFera > votosMonteiro) {
                escreva("Vereador mais votado: João Fera\n")
            } senao {
                escreva("Houve um empate para Vereador.\n")
            }

        } senao se (votoPrefeito == 0) {
            escreva("Votação encerrada sem votos.\n")
        } senao {
            escreva("Número incorreto. Tente novamente.\n")
        }
    }
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3450; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */