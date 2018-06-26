#Faça um Programa que peça a idade e a altura de 5 pessoas, armazene cada informação no seu 
#respectivo vetor. Imprima a idade e a altura na ordem inversa a ordem lida.

TOTAL_DE_PESSOAS = 5
idades = []
alturas = []

TOTAL_DE_PESSOAS.times do |n|
  print "#{n+1} - Digite sua idade: "
  idades << gets.to_f
  print "#{n+1} - Digite sua altura "
  alturas << gets.to_f
end

puts "Idades: #{idades.reverse}"
puts "Alturas: #{alturas.reverse}"