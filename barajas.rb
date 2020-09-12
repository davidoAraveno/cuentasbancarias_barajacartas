class Baraja
    def initialize()
        @cartas = []
        pintas = ['C','D','E','T']
        pintas.size.times do |i| #<===== generador de todas las combinaciones
            13.times do |j|
                @cartas.push("#{pintas[i]}#{j+1}")
            end
        end
    end

    def barajar()
        @cartas = @cartas.shuffle
    end

    def mostrarArreglo()
        @cartas
    end

    def sacar()
        puts "la primera carta es #{@cartas.pop}"
    end

    def repartir_mano()
        primeras_cartas = []
        5.times do |i|
            primeras_cartas.push(@cartas[i])
        end
        return primeras_cartas
    end
end

baraja1 = Baraja.new
baraja1.barajar()
print "todas las cartas son #{baraja1.mostrarArreglo()}"
puts
print "las 5 primeras cartas son #{baraja1.repartir_mano()}"