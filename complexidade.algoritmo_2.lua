Função parede_gerar:

- O loop for i = inicio_pos, fim_pos percorre n iterações, onde
n = fim_pos - inicio_pos + 1. (n - 1)

- Para cada iteração:

if i == porta_posicao é O(1)
output[contador] = 1 é O(1)
contador = contador + 1 é O(1)

Complexidade de parede_gerar(n): O(1) + (n - 1) = O(n);

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Função parede_encontrar_saida:

- while esquerda >= 1 or direita <= n:

Em cada iteração, as variáveis esquerda e direita são ajustadas para expandir a busca.
A cada ajuste:

A verificação parede[esquerda] == 1 (ou similar para direita) é O(1).
O ajuste das variáveis esquerda e direita é O(1).
O loop é executado até que os dois limites sejam atingidos.

- Pior caso:

A busca pode percorrer todos os elementos da lista parede (n elementos no total), 
verificando cada posição uma vez.

Isso ocorre se a porta estiver na extremidade oposta ao ponto_entrada 
ou se não houver porta válida (caso hipotético, já que há garantia de uma).

Complexidade: O(n) + O(n) = O(n)
