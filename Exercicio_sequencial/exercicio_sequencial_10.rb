#Faça um programa que peça a temperatura em graus celsius, transforme e mostre em graus Farenheit.

print "Qual a temperatura em graus Celsius?"
celsius = gets.to_f

farenheit = celsius * 1.8 + 32

puts "A temperatura #{celsius} C é equivalente a #{farenheit} F."