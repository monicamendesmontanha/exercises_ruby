#Faça um programa para imprimir:
#1
#2 2
#3 3 3
#.....
#n n n n n n
#para um '''n''' informado pelo usuário. Use uma função que receba um
#valor '''n''' inteiro e imprima até a n-ésima linha.

print "Digite até que número você quer que mostre? "
numero = gets.to_i

numero.times do |n|
  puts "#{n + 1}"
end

#NAO SEI COMO IMPRIMIR CADA ELEMENTO A QUANTIDADE DE VEZES QUE SE REFERE A ELE MESMO, UM AO LADO DO OUTRO.