# Faça um Programa que peça os 3 lados de um triângulo. 
# O programa deverá informar se os valores podem ser um triângulo. 
# Indique, caso os lados formem um triângulo, se o mesmo é: equilátero, 
# isósceles ou escaleno.     

# Dicas:    
# a. Três lados formam um triângulo quando a soma de quaisquer dois lados for 
#maior que o terceiro;    
# b. Triângulo Equilátero: três lados iguais;    
# c. Triângulo Isósceles: quaisquer dois lados iguais;    
# d. Triângulo Escaleno: três lados diferentes; 
 

print "Digite o valor do lado A? "
lado_a = gets.to_i

print "Digite o valor do lado B? "
lado_b = gets.to_i

print "Digite o valor do lado C? "
lado_c = gets.to_i

if (lado_a + lado_b > lado_c) or (lado_a + lado_c > lado_b) or (lado_b + lado_c > lado_a) 
  puts "Isso é um triângulo!"
else
  puts "Isso NÃO é um triângulo"
end

if (lado_a == lado_b) && (lado_a == lado_c)
  puts "Isso é um triângulo EQUILÁTERO."
elsif (lado_a == lado_b) or (lado_a == lado_c) or (lado_b == lado_c)
  puts "Isso é um triângulo ISÓCELES."
else (lado_a != lado_b) && (lado_a != lado_c) && (lado_b != lado_c)
  puts "Isso é um triângulo ESCALENO."
end