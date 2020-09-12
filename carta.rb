class Carta
    def initialize()
       @numero
       @pinta
    end

    def setNumero()
        @numero = rand(1..13)
    end

    def getNumero()
        return @numero
    end

    def setPinta()
        pintas = ['C','D','E','T']
        pinta_al_azar = rand(0..3)
        @pinta = pintas[pinta_al_azar]
    end

    def getPinta()
        return @pinta
    end
end


primera_carta = Carta.new
primera_carta.setNumero()
primera_carta.setPinta()
print primera_carta.getNumero()
puts primera_carta.getPinta()
