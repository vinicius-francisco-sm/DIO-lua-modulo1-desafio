
-- Habilitar UTF-8 no terminal
os.execute("chcp 65001")

-- Variaveis constantes
local LINE_MAX_SIZE <const> = 50
local BLANK_LINE <const> = "|"
local INDENTATION_FACTOR <const> = 13


-- Criatura
local monsterName = "ESQUELETO"
local description = "Um puro osso com sindrome de Legolas."
local emoji = "🏹"
local sound = "Pleq!"
local favoriteTime = "Noturno"
local item = "🦴"
local region = "Todo o mapa"
local temper = "Agressivo"

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

--- Funcao que cria inicio/fim do card
local function printPageLimit()
    local text = ""
    for i = 1, LINE_MAX_SIZE + 3, 1 do
        text = text .. "="
    end
    print(text)
end

--- Funcao que imprime uma linha em branco
local function printBlankLine()
    print(BLANK_LINE)
end

--- Funcao que imprime um titulo no card
local function printTitle(title)
    print("| " .. title)
end

--- Funcao que imprime um texto no card
local function printText(text, attribute)
    print("| " .. text .. ": " .. attribute)
end

--- Funcao que imprime um atributo no card
local function printAttribute(text, attribute)
    local space = ""
    local spacesNeeded = INDENTATION_FACTOR - string.len(text)

    --calcular o espaco
    for i = 1, spacesNeeded, 1 do
        space = space .. " "
    end

    print("|    " .. text .. ":" .. space .. attribute)
end


--- Funcao para caixa de texto
local function printBigText(text)
    local line = "| "
    local start = 1
    local finish = LINE_MAX_SIZE
    for i = 1, 8, 1 do
        for j = start, finish do
            local caractere = text:sub(j,j)
            line = line .. caractere
        end
        start = finish + 1
        finish = finish + LINE_MAX_SIZE + 1
        print(line)
        line = "| "
    end
end

--- Pagina frontal do card
printPageLimit()
printBlankLine()
printTitle(monsterName)
printTitle(description)
printBlankLine()
printText("Item", item)
printText("Som", sound)
printText("Emoji favorito", emoji)
printText("Horario favorito", favoriteTime)
printBlankLine()
printTitle("Atributos")
printAttribute("Ataque", getProgressBar(attackAttribute))
printAttribute("Defesa", getProgressBar(defenseAttribute))
printAttribute("Vida", getProgressBar(lifeAttribute))
printAttribute("Velocidade", getProgressBar(speedAttribute))
printAttribute("Inteligencia", getProgressBar(inteligenceAttribute))
printBlankLine()
printTitle("Pagina 1/2")
printBlankLine()
printPageLimit()


-- Pagina traseira do card
printPageLimit()
printBlankLine()
printText("Onde encontra-lo", region)
printText("Temperamento", temper)
printBlankLine()
printBlankLine()
printTitle("Historia")
printBlankLine()
printBigText("Seres mortos-vivos, cujo corpo se encontra em um estado de decomposicao extremamente avancado. Estas criaturas estao sempre armadas com arcos e sua pontaria desafia ate mesmo os maiores mestres arqueiros. Ate os dias de hoje, sua origem e objetivos permanecem sendo um misterio. A unica certeza e que se um esqueleto te encontrar, CORRA! O mais rapido que puder, sem olhar para tras.")
printBlankLine()
printTitle("Pagina 2/2")
printBlankLine()
printPageLimit()