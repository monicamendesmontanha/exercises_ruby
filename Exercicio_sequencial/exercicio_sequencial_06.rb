#Faça um programa que peça o raio de um círculo, calcule e mostre sua área.


print "Qual o raio do circuferência do círculo? "
circunferencia = gets.to_f

pi = 3.14
raio = circunferencia/(2*pi)


puts "O valor do raio é #{raio.round(2)}."

area = pi * (raio**2)

puts "o valor da área do cículo é #{area.round(2)}."