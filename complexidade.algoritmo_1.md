local function parede_gerar(inicio_pos, fim_pos, porta_posicao)
    local output = {}        -- O(1)
    local contador = 1      -- O(1)

    for i = inicio_pos, fim_pos do -- O(1) x (n - i) = O(n)
        if i == porta_posicao then -- O(1)
            output[contador] = 1   --O(1)
        else
            output[contador] = 0   --O(1)
        end
        contador = contador + 1  --O(1)
    end

    return output
end

-- Complexidade = O(n)

-- —————————————————————————————————————————————————————————
local function parede_encontrar_saida(parede, ponto_entrada)
    local function explorar(_parede, posicao_inicial, direcao, distancia)
        if posicao_inicial == nil or _parede[posicao_inicial] == nil then return false, nil end -- O(1)

        local explorar_ate = (posicao_inicial + (distancia * direcao)) -- O(1)

        for i = posicao_inicial, explorar_ate, direcao do -- O(1) x (n - i) = O(1) x O(n) = O(n)
            if _parede[i] == nil then return false, nil end --O(1)
            if _parede[i] == 1 then return true, i end -- O(1)
        end

        return false, explorar_ate
    end

    local distancia_exploracao = 20 -- O(1)
    local ex_direita = ponto_entrada -- O(1)
    local ex_esquerda = ponto_entrada -- O(1)

    local encontrado = false -- O(1)

    while not encontrado do
        encontrado, ex_direita = explorar(parede, ex_direita, 1, distancia_exploracao) -- O(1)
        if encontrado then return ex_direita end -- O(1)

        encontrado, ex_esquerda = explorar(parede, ex_esquerda, -1, distancia_exploracao) -- O(1)
        if encontrado then return ex_esquerda end -- O(1)
    end
end

-- Complexidade = O(n)
-- ———————————————————————————————————————————————————————————

-- Complexidade Total Código = O(n) x O(n) = O(n^2);
