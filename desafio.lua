-- Habilitar UTF-8 no terminal
os.execute("chcp 65001")

-- Criatura
local monsterName = "ESQUELETO"
local description = "Um puro osso com sindrome de Legolas."
local emoji = "🏹"
local sound = "Pleq!"
local favoriteTime = "Noturno"
local item = "🦴"

-- Atributos
local  attackAttribute = 8
local defenseAttribute = 4
local lifeAttribute = 6
local speedAttribute = 3
local inteligenceAttribute = 7

--- Funcao que recebe um atributo e nos retorna uma barra de progresso em string / texto
local function getProgressBar(attribute)
    local fullChar = "💀"
    local emptyChar = "🖤"

    local result = ""
        for i = 1, 10, 1 do
            if i <= attribute then
                result = result .. fullChar
            else
                result = result .. emptyChar
            end
        end
    return result
end

--Cartao
print("==========================================")
print("|")
print("| " .. monsterName)
print("| " .. description)
print("|")
print("| Item: " .. item)
print("| Som: " .. sound)
print("| Emoji favorito: " .. emoji)
print("| Horario favoritio: " .. favoriteTime)
print("|")
print("| Atributos")
print("|    Ataque:       " .. getProgressBar(attackAttribute))
print("|    Defesa:       " .. getProgressBar(defenseAttribute))
print("|    Vida:         " .. getProgressBar(lifeAttribute))
print("|    Velocidade:   " .. getProgressBar(speedAttribute))
print("|    Inteligencia: " .. getProgressBar(inteligenceAttribute))
print("|")
print("==========================================")