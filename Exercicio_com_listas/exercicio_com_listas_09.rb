#Faça um Programa que leia um vetor A com 10 números inteiros, 
#calcule e mostre a soma dos quadrados dos elementos do vetor.

TOTAL_DE_NUMEROS = 10
vetor = []

TOTAL_DE_NUMEROS.times do
print "Digite um número: "
vetor << gets.to_i
end

vetor.map! { |a| a**2 }
puts "#{vetor.sum}"