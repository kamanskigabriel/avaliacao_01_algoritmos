algoritmo "SistemaFuncionarios"
var
   nomes    : vetor[1..10] de caractere
   cargos   : vetor[1..10] de caractere
   salarios : vetor[1..10] de real
   total    : inteiro
   opcao    : inteiro
   i        : inteiro
   busca    : caractere
   achou    : logico

inicio
   total <- 0

   repita
      // ===== MENU =====
      escreval("================================")
      escreval("   SISTEMA DE FUNCIONARIOS")
      escreval("================================")
      escreval("1 - Cadastrar funcionario")
      escreval("2 - Pesquisar pelo nome")
      escreval("3 - Exibir todos")
      escreval("4 - Sair")
      escreval("================================")
      escreva("Digite sua opcao: ")
      leia(opcao)

      // ===== OPÇÃO 1 — CADASTRAR =====
      se (opcao = 1) entao
         se (total = 10) entao
            escreval("Limite de 10 funcionarios atingido!")
         senao
            total <- total + 1
            escreval("--- Cadastro do funcionario ", total, " ---")
            escreva("Nome   : ")
            leia(nomes[total])
            escreva("Cargo  : ")
            leia(cargos[total])
            escreva("Salario: ")
            leia(salarios[total])
            escreval("Funcionario cadastrado com sucesso!")
         fimse
      fimse

      // ===== OPÇÃO 2 — PESQUISAR =====
      se (opcao = 2) entao
         se (total = 0) entao
            escreval("Nenhum funcionario cadastrado ainda.")
         senao
            escreva("Nome a pesquisar: ")
            leia(busca)
            achou <- falso
            para i de 1 ate total faca
               se (nomes[i] = busca) entao
                  escreval("--- Funcionario encontrado ---")
                  escreval("Nome   : ", nomes[i])
                  escreval("Cargo  : ", cargos[i])
                  escreval("Salario: R$ ", salarios[i]:0:2)
                  achou <- verdadeiro
               fimse
            fimpara
            se (nao achou) entao
               escreval("Funcionario nao encontrado.")
            fimse
         fimse
      fimse

      // ===== OPÇÃO 3 — LISTAR TODOS =====
      se (opcao = 3) entao
         se (total = 0) entao
            escreval("Nenhum funcionario cadastrado ainda.")
         senao
            escreval("======= LISTA DE FUNCIONARIOS =======")
            para i de 1 ate total faca
               escreval("[", i, "] ", nomes[i],
                        " | ", cargos[i],
                        " | R$ ", salarios[i]:0:2)
            fimpara
            escreval("Total: ", total, " funcionario(s)")
         fimse
      fimse

      // ===== OPÇÃO INVÁLIDA =====
      se (opcao <> 1) e (opcao <> 2) e
         (opcao <> 3) e (opcao <> 4) entao
         escreval("Opcao invalida! Digite 1, 2, 3 ou 4.")
      fimse

   ate (opcao = 4)

   escreval("Sistema encerrado. Ate logo!")
fimalgoritmo
