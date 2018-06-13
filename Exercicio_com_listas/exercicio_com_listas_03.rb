#Faça um Programa que leia 4 notas, mostre as notas e a média na tela.

print "Quantas notas você quer digitar? "
quantidade = gets.to_i

notas = []
contador = 0
while contador < quantidade do
  print "Digite a nota: "
  nota = gets.to_f
  notas << nota
  contador = contador + 1
end

puts "As notas são: #{notas}."

total = 0
notas.each do |n|
total = total + n
end
#puts "A soma das notas é igual a #{total}."

media = total/quantidade

puts "A média das notas é igual #{media}."