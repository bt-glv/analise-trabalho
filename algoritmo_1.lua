local function parede_gerar(inicio_pos, fim_pos, porta_posicao)
    local output = {}
    local contador = 1

    for i = inicio_pos, fim_pos do
        if i == porta_posicao then
            output[contador] = 1
        else
            output[contador] = 0
        end
        contador = contador + 1
    end

    return output
end

local function parede_encontrar_saida(parede, ponto_entrada)
    local n = #parede

    for tentativa = 1, n do
        local esquerda = ponto_entrada
        local direita = ponto_entrada

        while esquerda >= 1 or direita <= n do
            if parede[esquerda] ~= nil then
                if parede[esquerda] == 1 then
                    return esquerda
                end
                esquerda = esquerda - 1
            end

            if parede[direita] ~= nil then
                if parede[direita] == 1 then
                    return direita
                end
                direita = direita + 1
            end
        end
    end

    return nil
end

-- Dados de entrada
local inicio_pos = 1
local fim_pos = 100
local porta_posicao = math.random(inicio_pos, fim_pos)
local ponto_entrada = math.random(inicio_pos, fim_pos)
local parede = parede_gerar(inicio_pos, fim_pos, porta_posicao)

-- Executa a busca
print("\nDados:\n")
print("\nPosição inicial: " .. inicio_pos)
print("\nPosição final: " .. fim_pos)
print("\nPosição da porta: " .. porta_posicao)
print("\nPonto de entrada: " .. ponto_entrada)
print("\n\n\n")

local posicao_porta = parede_encontrar_saida(parede, ponto_entrada)
print("Porta encontrada na posição: " .. posicao_porta)
