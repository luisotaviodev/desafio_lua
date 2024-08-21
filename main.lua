-- Habilitar UTF-8 no Terminal (Evitando erros em emote e acento)
os.execute("chcp 65001")

--Criatura
local cNomeMonstro     = "CREEPER"
local cDescricao       = "Um monstro furtivo com um temperamento explosivo."
local cEmoji           = "💣"
local cSom             = "Tssssss"
local cPeriodoFavorito = "Noturno"
local cDropItem        = "Polvora"

--Atributos
local iAtaque       = 10
local iDefesa       = 1
local iVida         = 5
local iVelocidade   = 7
local iInteligencia = 2

local function PegarBarraProgresso(atributo)
    local cFullChar = "⬜"
    local cEmptyChar = "⬛"
    local cResult   = ""

    for i = 1, 10, 1 do
        if i <= atributo then
          cResult = cResult .. cFullChar 
        else
          cResult = cResult .. cEmptyChar
        end
        
    end
    return cResult
    
end

--Cartão  (Concatenar "..")
print("******************************************************")
print("                 |  ")
print("MONSTRO:         |  " .. cNomeMonstro)
print("DESCRIÇÃO:       |  " .. cDescricao)
print("EMOTE FAVORITO:  |  " .. cEmoji)
print("                 |  ")
print("SOM:             |  " .. cSom)
print("PERIODO:         |  " .. cPeriodoFavorito)
print("DROP:            |  " .. cDropItem)
print("                 |  ")
print(" ATRIBUTOS       |  ")
print("   VIDA:         |  " .. PegarBarraProgresso(iVida))
print("   ATAQUE:       |  " .. PegarBarraProgresso(iAtaque))
print("   DEFESA:       |  " .. PegarBarraProgresso(iDefesa))
print("   VELOCIDADE:   |  " .. PegarBarraProgresso(iVelocidade))
print("   INTELIGÊNCIA: |  " .. PegarBarraProgresso(iInteligencia))
print("                 |  ")
print("******************************************************")