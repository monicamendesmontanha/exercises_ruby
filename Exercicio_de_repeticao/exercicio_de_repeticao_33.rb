#O Departamento Estadual de Meteorologia lhe contratou para desenvolver um
#programa que leia as um conjunto INDETERMINADO (?) de temperaturas, e informe ao
#final a menor e a maior temperaturas informadas, bem como a média das temperaturas.
def soma_das_temperaturas(x)
  total = 0
  x.each do |n|
    total = total + n 
  end

  return total
end

conjunto_de_temperaturas = []
contador = 0
while contador > 0 do
  print "Digite a temperatura: "
  temperatura = gets.to_f
  conjunto_de_temperaturas << temperatura 
  contador = contador + 1

  return contador
end

puts conjunto_de_temperaturas
puts contador

total = soma_das_temperaturas(conjunto_de_temperaturas)
#media = total
puts total

#media = media_das_temperaturas(contador, conjunto_de_temperaturas)
#puts "Média das temperaturas: #{media}."
