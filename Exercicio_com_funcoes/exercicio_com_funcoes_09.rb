#''Reverso do número.''' Faça uma função que retorne o reverso de um número
#  inteiro informado. Por exemplo: 127 -> 721.

def reverte_numero(n)
  n.reverse
end

numero = []

print "Digite um numero: "
numero << gets.to_i

numero_revertido = reverte_numero(numero)
puts "#{numero_revertido}"