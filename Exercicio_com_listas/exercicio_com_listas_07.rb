#Faça um Programa que leia um vetor de 5 números inteiros, mostre a soma, a multiplicação e os números.

TOTAL_DE_NUMEROS = 5
numeros = []

TOTAL_DE_NUMEROS.times do
  print "Digite um número: "
  numeros << gets.to_i
end

puts "Números: #{numeros}"
puts "Soma dos números: #{numeros.sum}"

total = 0
numeros.each do |n|
  total = total * n
end

puts "Multiplicação dos números: #{total}"