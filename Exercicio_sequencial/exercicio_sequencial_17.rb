#Faça um Programa para uma loja de tintas. O programa deverá pedir o tamanho
#em metros quadrados da área a ser pintada. Considere que a cobertura da tinta é
#de 1 litro para cada 6 metros quadrados e que a tinta é vendida em latas de 18
#litros, que custam R$ 80,00 ou em galões de 3,6 litros, que custam R$ 25,00.
 
#Informe ao usuário as quantidades de tinta a serem compradas e os
#respectivos preços em 3 situações:
# a. comprar apenas latas de 18 litros;
# b. comprar apenas galões de 3,6 litros;
# c. misturar latas e galões, de forma que o preço seja o menor.
# Acrescente 10% de folga e sempre arredonde os valores para cima, 
# isto é, considere latas cheias.

LITRO_DA_TINTA = 1
METROS_QUADRADOS = 6
COBERTURA_DA_TINTA = LITRO_DA_TINTA * METROS_QUADRADOS

QUANTIDADE_LATA = 18
QUANTIDADE_GALAO = 3.6

print "Qual tamanho em metros quadrados da área a ser pintada? "
area_a_ser_pintada = gets.to_f

quantidade_litros_a_comprar = area_a_ser_pintada * COBERTURA_DA_TINTA
quantidade_de_latas_a_comprar = quantidade_litros_a_comprar/QUANTIDADE_LATA
quantidade_de_galao_a_comprar = quantidade_litros_a_comprar/QUANTIDADE_GALAO

puts "A quantidade de litros necessários de: #{quantidade_litros_a_comprar.round(2)}."
puts "A quantidade de latas a comprar é de: #{quantidade_de_latas_a_comprar.round(2)}."
puts "A quantidade de galão a comprar é de: #{quantidade_de_galao_a_comprar.round(2)}."

