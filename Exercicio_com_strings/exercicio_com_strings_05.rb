#'''Nome na vertical em escada invertida.''' Altere o programa anterior de modo que
#a escada seja invertida.

#FULANO
#FULAN
#FULA
#FUL
#FU
#F

print "Digite um nome: "
nome = gets.chomp.split('')

resultado = nome
nome.each do |c|
  resultado = resultado - c
  puts resultado
end