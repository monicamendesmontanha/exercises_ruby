#Faça um Programa que peça dois números e imprima o maior deles.

print "Digite um número: "
numero_01 = gets.to_i

print "Digite um outro número: "
numero_02 = gets.to_i

if numero_01 > numero_02
  puts "O primeiro número digitado, #{numero_01}, é maior que o segundo, #{numero_02}."
else
  puts "O segundo número digitado, #{numero_02}, é maior que o primeiro, #{numero_01}."
end