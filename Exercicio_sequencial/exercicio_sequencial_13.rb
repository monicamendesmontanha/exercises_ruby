#Tendo como dados de entrada a altura e o sexo de uma pessoa, 
#construa um algoritmo que calcule seu peso ideal, utilizando as seguintes fórmulas:
# a) para homens: (72.7*h) - 58
# b) para mulheres (62.1*h) - 44.7
# h = altura
# c) peça o peso da pessoa e informa se ela está dentro, acima ou abaixo do peso.


print "Qual é a sua altura? "
altura = gets.to_f

print "Qual é o seu sexo? [F] ou [M] "
sexo = gets.chomp

# Não sei transformar em STRING, mesmo que nesse caso não precise

peso_ideal_feminino = (62.1*altura) - 44.7
peso_ideal_masculino = (72.7*altura) - 58

if sexo == "F" or sexo == "f"
  puts "xxxxDe acordo com a sua altura, o seu peso ideal é #{peso_ideal_feminino.round(2)} Kg."
else 
  puts "De acordo com a sua altura, o seu peso ideal é #{peso_ideal_masculino.round(2)} Kg."
end


print "Qual é o seu peso? "
peso = gets.to_f


imc = peso/altura**2

print "Seu IMC é #{imc.round(2)}!"

if imc < 18.4
  puts "Você está abaixo do peso do peso ideal."
elsif 18.5 < imc && imc < 24.9
  puts "Você está no seu peso ideal."
else imc > 25.0
  puts "Você está com sobrepeso."
end