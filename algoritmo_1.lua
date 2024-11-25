
local function parede_gerar(inicio_pos,fim_pos, porta_posicao)
	local output 	= {}
	local contador	= 1

	for i = inicio_pos, fim_pos do
			if i == porta_posicao then
				output[contador] = 1;
			else
				output[contador] = 0
			end
				contador = contador + 1
	end

	return output
end


-- A analize vai ser feita em cima dessa funcao
local function parede_encontrar_saida(parede, ponto_entrada)

	-- direcao -> deve ser 1 (direita); -1 (esquerda)
	local function explorar(_parede, posicao_inicial, direcao, distancia)
		if posicao_inicial == nil or _parede[posicao_inicial]==nil then return false, nil end

		local explorar_ate = (posicao_inicial+(distancia*direcao))

		for i=posicao_inicial, explorar_ate, direcao do
			if _parede[i] == nil then return false, nil end -- alcancou o fim da _parede
			if _parede[i] == 1 then return true, i end
		end

		return false, explorar_ate

	end

	local distancia_exploracao	= 20
	local ex_direita 		= ponto_entrada
	local ex_esquerda 		= ponto_entrada

	local encontrado = false


	while not encontrado do
		encontrado, ex_direita 		= explorar(parede, ex_direita, 1, distancia_exploracao)
		if encontrado then return ex_direita end
		if ex_direita ~= nil then print("\na direita foi explorada ate: "..ex_direita) end

		encontrado, ex_esquerda 	= explorar(parede, ex_esquerda, -1, distancia_exploracao)
		if encontrado then return ex_esquerda end
		if ex_esquerda ~= nil then print("\na esquerda foi esplorada ate: "..ex_esquerda) end
	end


end


local inicio_pos 		= 1
local fim_pos			= 100
local porta_posicao 	= math.random(inicio_pos, fim_pos)
local ponto_entrada 	= math.random(inicio_pos, fim_pos)
local parede 			= parede_gerar(inicio_pos, fim_pos, porta_posicao)

print("\nDados:\n")
print("\nPosicao inicial: "..inicio_pos)
print("\nPosicao final: "..fim_pos)
print("\nPosicao da porta: "..porta_posicao)
print("\nPonto de entrada: "..ponto_entrada)
print("\n\n\n")

local posicao_porta = parede_encontrar_saida(parede, ponto_entrada)
print("Porta encontrada na posicao: "..posicao_porta)


