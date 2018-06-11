#Faça um programa para uma loja de tintas. O programa deverá pedir o tamanho
#em metros quadrados da área a ser pintada. Considere que a cobertura da tinta é
#de 1 litro para cada 3 metros quadrados e que a tinta é vendida em latas de 18
#litros, que custam R$ 80,00. Informe ao usuário a quantidades de latas de tinta a
#serem compradas e o preço total.

#cobertura_de_tinta = 1 litro de tinta em 3 metros quadrados

VALOR_LATA = 80
QUANTIDADE_LATA = 18
VALOR_LITRO_DA_TINTA = VALOR_LATA / QUANTIDADE_LATA

LITRO_DA_TINTA = 1
METRO_QUADRADO = 3
COBERTURA_DA_TINTA = LITRO_DA_TINTA * METRO_QUADRADO

print "Qual tamanho em metros quadrados da área a ser pintada? "
area_a_ser_pintada = gets.to_f

quantidade_litros_a_comprar = area_a_ser_pintada * COBERTURA_DA_TINTA
quantidade_de_latas_a_comprar = quantidade_litros_a_comprar/QUANTIDADE_LATA
valor_total = quantidade_de_latas_a_comprar * VALOR_LATA

puts "O valor do litro de tinta é #{VALOR_LITRO_DA_TINTA}."
puts "A quantidade de litros necessários de: #{quantidade_litros_a_comprar.round(2)}."
puts "A quantidade de latas a comprar é de: #{quantidade_de_latas_a_comprar.round(2)}."
puts "O valor total a ser gasto para a área ser pintada é de: R$ #{valor_total.round(2)}."