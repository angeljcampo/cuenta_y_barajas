class CuentaBancaria
  attr_reader :nombre_banco, :numero_cuenta, :monto
  attr_accessor :saldo, :otra_cuenta

  def initialize(nombre_banco,numero_cuenta, saldo = 0)
    @nombre_banco = nombre_banco
    @numero_cuenta = numero_cuenta
    @saldo = saldo
    @monto = monto
    @otra_cuenta = otra_cuenta
  end

  def transferir(monto, otra_cuenta)
    self.saldo -= monto
    otra_cuenta.saldo += monto

  end
end

class Usuario
  attr_accessor :nombre_de_usuario
  attr_reader :cuenta_bancaria

  def initialize(nombre_de_usuario,cuenta_bancaria)
    @nombre_de_usuario = nombre_de_usuario
    @cuenta_bancaria = []

    cuenta_bancaria.each do |cuenta|
      @cuenta_bancaria.push(cuenta)
    end
  end

  def saldo_total
    sum_total = 0
    self.cuenta_bancaria.each do |i|
      sum_total += i.saldo
    end

    return sum_total
  end
end


cuenta1 = CuentaBancaria.new('Scotiabank',12345678,5000)
cuenta2 = CuentaBancaria.new('Santander',25245214,5000)
cuenta3 = CuentaBancaria.new('BCI',83918392,12000)
cuenta4 = CuentaBancaria.new('BICE',18273283,2000)

persona1 = Usuario.new('angeljcampo', [cuenta1, cuenta2])
persona2 = Usuario.new('angeljose', [cuenta3,cuenta4])

puts persona1.saldo_total