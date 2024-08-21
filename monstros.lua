--Criatura
Criatura_CREEPER = {
    cNomeMonstro     = "CREEPER"
   ,cDescricao       = "Um monstro furtivo com um temperamento explosivo."
   ,cEmoji           = "💣"
   ,cSom             = "Tssssss"
   ,cPeriodoFavorito = "Noturno"
   ,cDropItem        = "Polvora"
 }
 --Atributos
Atributos_CREEPER = {
    iAtaque       = 10
   ,iDefesa       = 1
   ,iVida         = 5
   ,iVelocidade   = 7
   ,iInteligencia = 2
 }

 --Criatura
Criatura_ESQUELETO = {
    cNomeMonstro     = "ESQUELETO"
   ,cDescricao       = "Um monstro hostil equipado com arcos."
   ,cEmoji           = "🦴"
   ,cSom             = "clac-clac"
   ,cPeriodoFavorito = "Noturno"
   ,cDropItem        = "Ossos, Flechas, Arcos, Linha"
 }
 --Atributos
Atributos_ESQUELETO = {
    iAtaque       = 6
   ,iDefesa       = 2
   ,iVida         = 3
   ,iVelocidade   = 8
   ,iInteligencia = 3
 }

 return {
    Criatura_CREEPER = Criatura_CREEPER,
    Atributos_CREEPER = Atributos_CREEPER,
    Criatura_ESQUELETO = Criatura_ESQUELETO,
    Atributos_ESQUELETO = Atributos_ESQUELETO
}