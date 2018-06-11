#Tendo como dados de entrada a altura de uma pessoa, 
#construa um algoritmo que calcule seu peso ideal, 
#usando a seguinte fórmula: (72.7*h) - 58


print "Qual a sua altura? "
altura = gets.to_f

peso_ideal = (72.7*altura) - 58

puts "De acordo com a sua altura, o seu peso ideal é #{peso_ideal} Kg."