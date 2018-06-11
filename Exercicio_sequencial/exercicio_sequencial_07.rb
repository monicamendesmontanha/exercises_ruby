#Faça um programa que calcula a área de um quadrado, em seguida mostre o dobro desta área para o usuário

print "Quanto mede o lado de um quadrado? "
lado = gets.to_i

area = (lado**2)

area_dobrada = area*2

puts "O dobro da área do quadrado é igual a #{area_dobrada}"