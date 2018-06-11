#Faça um programa que pergunte o preço de três  produtos e informe qual 
#produto você deve comprar, sabendo que a decisão é sempre pelo mais barato. 

require_relative "./calcula_menor_numero"

print "Digite o valor de um produto: "
primeiro_produto = gets.to_f

print "Digite o valor de um segundo produto: "
segundo_produto = gets.to_f

print "Digite o valor de um terceiro produto: "
terceiro_produto = gets.to_f

produto_mais_barato = calcula_menor_numero_entre(primeiro_produto,segundo_produto,terceiro_produto)

puts "Voce deve comprar o produto que custa R$ #{produto_mais_barato}."