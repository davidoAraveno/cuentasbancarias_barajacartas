class CuentaBancaria
    attr_accessor :saldo
    def initialize(banco,num_cuenta,saldo = 0)
        @banco = banco
        @num_cuenta = num_cuenta
        @saldo = saldo
    end

    def transferir(monto=0,cuenta) #<===== metodo transferir a cuenta
        @saldo -= monto
        cuenta.saldo += monto
    end

    def getConsultaSaldo() # <==== consultar saldo de la cuenta
        @saldo
    end
end


cuenta1 = CuentaBancaria.new('santander',1234,5000) #<==== instancia cuenta bancaria
cuenta2 = CuentaBancaria.new('estado',5678,5000) #<==== instancia cuenta bancaria

cuenta1.transferir(2000,cuenta2) #<==== transferencia de la cuenta 1 a la cuenta 2

puts "la cuenta 1 tiene un saldo de #{cuenta1.getConsultaSaldo()}"
puts "la cuenta 2 tiene un saldo de #{cuenta2.getConsultaSaldo()}"

class Usuario
    attr_reader :cuentas, :nombre, :saldo_total
    def initialize(nombre,*cuentas)
        @nombre = nombre
        @cuentas = cuentas
        @saldo_total = []
    end

    def saldo_total()
        @cuentas.length.times do |i|
            @saldo_total.push(@cuentas[i].saldo)
        end
        puts "El usuario #{@nombre} tiene un saldo total de: #{@saldo_total.sum}"    
    end 
end

usuario1 = Usuario.new('david',cuenta1,cuenta2)
usuario1.saldo_total() #<===== consulta del saldo total de todas las cuentas del usuario (se usaron las instancias de cuenta bancaria)