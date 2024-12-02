

# Função "parede_gerar()"

Essa função cria uma tabela (vetor) output com valores 0 e 1, dependendo se a posição atual é igual à porta_posicao.

1. Loop for i = inicio_pos, fim_pos

- Executa n vezes: O(n)
- Cada iteração do loop realiza uma comparação (i == porta_posicao), uma atribuição e um incremento.
- Cada operação dentro do loop é de complexidade igual à O(1);

## Conclusão
Complexidade: </br>
O(n)


# Função "parede_encontrar_saida()"

Esta função busca a porta no vetor parede começando a partir de ponto_entrada. 
A busca é feita tanto para a esquerda quanto para a direita, e é repetida n vezes devido ao loop externo.

1. Loop for tentativa == 1, n:

- Executa n vezes;
- Dentro desse loop, há um while, que processa as buscas tanto para a esquerda quanto para a direita;


2. Loop while esquerda >= 1 or direita <= n:

- Em cada iteração da tentativa, o loop while percorre no máximo n elementos:
- Busca para a esquerda até o início do vetor.
- Busca para a direita até o final do vetor.
- Cada iteração realiza no máximo 2 comparações e 2 operações de atribuição.


3. Em cada tentativa, o custo do loop while é proporcional a  O(n). 
O loop externo multiplica esse custo por n.

- Custo do while para cada tentativa é O(n).
- Custo do for é n * O(n) = O(n^2)


## Conclusão
Complexidade: </br>
O(n) + O(n^2) = O(n^2)

# Complexidade Total
Complexidade Total(parede_gerar + parede_encontrar_saida): </br>
O(n) + O(n^2) = O(n^2)
