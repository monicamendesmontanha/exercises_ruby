#Faça um programa que peça as 4 notas bimestrais e mostre a média.

print "Qual a primeira nota? "
primeira_nota = gets.to_f

print "Qual a segunda nota? "
segunda_nota = gets.to_f

print "Qual a terceira nota? "
terceira_nota = gets.to_f

print "Qual a quarta nota? "
quarta_nota = gets.to_f

media = primeira_nota+segunda_nota+terceira_nota+quarta_nota/4

puts "A média das quatros notas é: #{media}"


