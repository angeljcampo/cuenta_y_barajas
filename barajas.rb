require_relative 'carta'

class Baraja
attr_accessor :cartas

  def initialize

    cartas = []
    @cartas = cartas
    pintas = ['C','D','E','T']
    num_cartas = [1,2,3,4,5,6,7,8,9,10,11,12,13]
    
    pintas.length.times do |pinta|
      num_cartas.length.times do |numero|
        (cartas.push(Carta.new(num_cartas[numero], pintas[pinta])))
      end
    end
  end

  def barajear
    barajeado = cartas.shuffle
    return barajeado
  end

  def pop
    primera = cartas.pop(1)
    return primera
  end

end

mazo = Baraja.new()
puts mazo.barajear.numero