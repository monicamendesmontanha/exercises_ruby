class Eleitor
  def initialize(numero)
    @numero = numero
  end

  def vota(candidato)
    candidato.eleitores++
  end
end

class Candidato
  def initialize(numero_candidato)
    @numero_candidato = numero_candidato
    @eleitores = 0
  end

  def eleitores
    @eleitores
  end
end

class Urna
  def solicita_candidato
    print "Digite qual é o seu voto? [1] [2] [3]"
    numero_candidato = gets.to_i

    return Candidato.new(numero_candidato)
  end
end

class Eleicao
  def initialize(candidatos)
    @candidatos = candidatos
  end

  def define_vencedor()
    votos = []

    candidatos.each do |candidato|
      votos << candidato.eleitores
    end

    return votos.max
  end
end

c1 = Candidato.new(1)
c2 = Candidato.new(2)
c3 = Candidato.new(3)
candidatos = [c1, c2, c3]

eleicao = Eleicao.new(candidatos)

urna = Urna.new
eleitores = []

print "Digite numero de eleitores: "
numero_de_eleitores = gets.to_i

numero_de_eleitores.times do |numero|
  eleitores << Eleitor.new(numero)
end

eleitores.each do |eleitor|
  candidato = urna.solicita_candidato()
  eleitor.vota(candidato)
end

vencedor = eleicao.define_vencedor()
puts "O vencedor é: #{vencedor}"