# Faça um programa que pergunte quanto você ganha por hora e p número de horas trabalhadas no mês. Calcule e moestre o total do seu salárioo no referido mês.

print "Qual o valor da hora trabalhada? "
valor_hora_trabalhada = gets.to_f

print "Quantas horas por mês você trabalhou? "
quantidade_hora_trabalhada = gets.to_f

salario = valor_hora_trabalhada * quantidade_hora_trabalhada

puts "Nesse mês, de acordo com as #{quantidade_hora_trabalhada.round(2)} horas trabalhadas, " +
"você irá receber $ #{salario.round(2)} dólares!"
