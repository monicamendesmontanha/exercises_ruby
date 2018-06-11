#Faça um programa que peça a temperatura em graus Farenheit, 
# transforme e mostre a temperatura em graus Celsius.
# C = (5 * (f-32) / 9)


print "Qual a temperatura em graus Farenheit? "
farenheit = gets.to_f

celsius = (5 * (farenheit-32) / 9)

puts "A temperatura de #{farenheit} F é equivalente a #{celsius} C."
