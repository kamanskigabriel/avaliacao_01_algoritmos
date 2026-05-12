# avaliacao_01_algoritmos
Primeira avaliação Caixeta

aluno: Gabriel Kamanski Oliveira
Curso: 2608 Informatica para internet

#   Descrição geral

O sistema é um programa de cadastro de funcionários desenvolvido em pseudocódigo no VisualG. Ao ser executado, exibe um menu interativo com 4 opções que fica em loop até o usuário escolher sair. Os dados são armazenados em uma matriz 10x4, onde cada linha representa um funcionário e cada coluna uma informação diferente.
As funcionalidades são:

Opção 1 — Cadastrar: lê o nome, cargo e salário do funcionário e armazena na próxima posição disponível da matriz, marcando o status como "Ativo".
Opção 2 — Pesquisar: percorre a matriz comparando cada nome com o digitado pelo usuário e exibe os dados completos se encontrar.
Opção 3 — Listar todos: exibe todos os funcionários cadastrados em formato de tabela com cabeçalho.
Opção 4 — Sair: encerra o programa.

#   Explicações

Uso da matriz 10x4 em vez de vetores separados
A matriz centraliza todos os dados em uma única estrutura. O índice da linha identifica o funcionário e cada coluna armazena uma informação: coluna 1 = nome, coluna 2 = cargo, coluna 3 = salário, coluna 4 = status. Isso torna o código mais organizado e fácil de manter.
Uso do repita...ate para o menu
O menu precisa aparecer ao menos uma vez antes de verificar a opção digitada. O repita...ate testa a condição no final do bloco, garantindo esse comportamento. O loop encerra quando opcao = 4.
Variável total como contador de cadastros
A variável total começa em zero e incrementa a cada novo cadastro. Ela serve como índice da próxima posição livre na matriz e como limite nos laços de listagem e pesquisa, evitando percorrer posições vazias.
Variável lógica achou na pesquisa
Antes de iniciar a busca, achou é definida como falso. Se algum nome bater com o digitado, ela muda para verdadeiro. Ao final do laço, se ainda for falso, o programa informa que o funcionário não foi encontrado.
Validação de opção inválida
Qualquer entrada diferente de 1, 2, 3 ou 4 exibe uma mensagem de erro, evitando que o programa quebre ou execute um bloco incorreto.