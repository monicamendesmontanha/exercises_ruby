#Em uma competição de salto em distância cada atleta tem direito a cinco saltos.
#O resultado do atleta será determinado pela média dos cinco valores restantes.
#Você deve fazer um programa que receba o nome e as cinco distâncias alcançadas
#pelo atleta em seus saltos e depois informe o nome, os saltos e a média dos saltos.
#O programa deve ser encerrado quando não for informado o nome do atleta. A
#saída do programa deve ser conforme o exemplo abaixo:
#Atleta: Rodrigo Curvêllo
#Primeiro Salto: 6.5 m
#Segundo Salto: 6.1 m
#Terceiro Salto: 6.2 m
#Quarto Salto: 5.4 m
#Quinto Salto: 5.3 m
#Resultado final:
#Atleta: Rodrigo Curvêllo
#Saltos: 6.5 - 6.1 - 6.2 - 5.4 - 5.3
#Média dos saltos: 5.9 m

def recebe_distancia_dos_saltos(quantidade_de_saltos)
  saltos = []

  quantidade_de_saltos.times do |n|  
    print "#{n + 1}º salto: "
    saltos << gets.to_f
  end 

  saltos
  
end

QUANTIDADE_DE_SALTOS = 5

print "Atleta: "
nome = gets

distancia_dos_saltos = recebe_distancia_dos_saltos(QUANTIDADE_DE_SALTOS)
media_dos_saltos = distancia_dos_saltos.sum/distancia_dos_saltos.size

puts "-------------------------------"
puts "Resultado Final"
puts "-------------------------------"
puts "Atleta: #{nome}"
puts "Saltos: #{distancia_dos_saltos}"
puts "Média dos saltos: #{media_dos_saltos} m"