-- Habilitar UTF-8 no Terminal (Evitando erros em emote e acento)
os.execute("chcp 65001")

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

function ExibirInformacoesCriatura(criatura, atributos)
  print("******************************************************")
  print("                 |  ")
  print("MONSTRO:         |  " .. criatura.cNomeMonstro)
  print("DESCRIÇÃO:       |  " .. criatura.cDescricao)
  print("EMOTE FAVORITO:  |  " .. criatura.cEmoji)
  print("                 |  ")
  print("SOM:             |  " .. criatura.cSom)
  print("PERIODO:         |  " .. criatura.cPeriodoFavorito)
  print("DROP:            |  " .. criatura.cDropItem)
  print("                 |  ")
  print(" ATRIBUTOS       |  ")
  print("   VIDA:         |  " .. PegarBarraProgresso(atributos.iVida))
  print("   ATAQUE:       |  " .. PegarBarraProgresso(atributos.iAtaque))
  print("   DEFESA:       |  " .. PegarBarraProgresso(atributos.iDefesa))
  print("   VELOCIDADE:   |  " .. PegarBarraProgresso(atributos.iVelocidade))
  print("   INTELIGÊNCIA: |  " .. PegarBarraProgresso(atributos.iInteligencia))
  print("                 |  ")
  print("******************************************************")
end

local monstros = require("monstros")

local Criatura_CREEPER = monstros.Criatura_CREEPER
local Atributos_CREEPER = monstros.Atributos_CREEPER
local Criatura_ESQUELETO = monstros.Criatura_ESQUELETO
local Atributos_ESQUELETO = monstros.Atributos_ESQUELETO

local iOpcao

local function ImprimirMenu()
  print("******************************************************")
  print("   _____________________________________   ")
  print("  |             M E N U                 |  ")
  print("  |   * (1) Listar Monstros Cadastrados |  ")
  print("  |   * (2) Dados do Monstro            |  ")
  print("  |   * (3) Sair                        |  ")
  print("  |_____________________________________|  ")
  print("******************************************************")
end

local function ListarMonstro(oCriatura)
  print("******************************************************")
  print("MONSTRO:         |  "..oCriatura.cNomeMonstro)
  print("******************************************************") 
end

local function LimparTela()
  os.execute("cls")
end

local function InteragirMenu()
  while true do
    ImprimirMenu()
    local iOpcao = io.read()
    LimparTela()

    if iOpcao == '1' then
      ListarMonstro(Criatura_CREEPER)
      ListarMonstro(Criatura_ESQUELETO)
    elseif iOpcao == '2' then
      print("Digite o Nome do Monstro que Gostaria que fosse exibido os dados: ")
      local cExibirDadosMonstro = io.read()

      if cExibirDadosMonstro then
        cExibirDadosMonstro = string.upper(cExibirDadosMonstro)

        if cExibirDadosMonstro == string.upper(Criatura_CREEPER.cNomeMonstro) then
          ExibirInformacoesCriatura(Criatura_CREEPER, Atributos_CREEPER)
        elseif cExibirDadosMonstro == string.upper(Criatura_ESQUELETO.cNomeMonstro) then
          ExibirInformacoesCriatura(Criatura_ESQUELETO, Atributos_ESQUELETO)
        elseif cExibirDadosMonstro == "TODOS" then
          ExibirInformacoesCriatura(Criatura_CREEPER, Atributos_CREEPER)
          ExibirInformacoesCriatura(Criatura_ESQUELETO, Atributos_ESQUELETO)
        else
          print("Monstro não encontrado.")
        end
      else
        print("Entrada inválida.")
      end
    elseif iOpcao == '3' then
      print("Saindo do programa...")
      break
    else
      print("Opção Inválida")
    end

    print("\nPressione Enter para continuar...")
    io.read()
    LimparTela()
  end
end

InteragirMenu()
