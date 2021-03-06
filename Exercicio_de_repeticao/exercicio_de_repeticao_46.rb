#Em uma competição de salto em distância cada atleta tem direito a cinco saltos.
#No final da série de saltos de cada atleta, o melhor e o pior resultados são
#eliminados. O seu resultado fica sendo a média dos três valores restantes. Você
#deve fazer um programa que receba o nome e as cinco distâncias alcançadas pelo
#atleta em seus saltos e depois informe a média dos saltos conforme a descrição
#acima informada (retirar o melhor e o pior salto e depois calcular a média). Faça
#uso de uma lista para armazenar os saltos. Os saltos são informados na ordem da
#execução, portanto não são ordenados. O programa deve ser encerrado quando
#não for informado o nome do atleta. A saída do programa deve ser conforme o
#exemplo abaixo:
#Atleta: Rodrigo Curvêllo
#Primeiro Salto: 6.5 m
#Segundo Salto: 6.1 m
#Terceiro Salto: 6.2 m
#Quarto Salto: 5.4 m
#Quinto Salto: 5.3 m
#Melhor salto: 6.5 m
#Pior salto: 5.3 m
#Média dos demais saltos: 5.9 m
#Resultado final: eRodrigo Curvêllo: 5.9 m

print "Nome do atleta: "
nome = gets.chomp

QUANTIDADE_SALTOS = 5
saltos = []

QUANTIDADE_SALTOS.times do |n|

print "#{n+1}º Salto: "
  saltos << gets.to_f 
end

saltos_ordenados = saltos.sort
melhor_salto = saltos_ordenados.last
pior_salto = saltos_ordenados.first

restante = saltos_ordenados.select { |salto| salto != melhor_salto && salto != pior_salto }
#restante = saltos_ordenados.reject { |salto| salto == melhor_salto || salto == pior_salto }
media_saltos_restantes = restante.sum / restante.size

puts "Melhor salto: #{melhor_salto} m"
puts "Pior salto: #{pior_salto} m"
puts "Média dos demais saltos: #{media_saltos_restantes.round(2)} m"
puts "Resultado Final: #{nome}: #{media_saltos_restantes.round(2)} m"