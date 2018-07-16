#'''Nome na vertical em escada invertida.''' Altere o programa anterior de modo que
#a escada seja invertida.

#FULANO
#FULAN
#FULA
#FUL
#FU
#F

print "Digite um nome: "
letras = gets.chomp.split('')

quantidade = letras.size
resultado = ""
letras.each do |letra|
  resultado = letras.take(quantidade).join
  quantidade = quantidade - 1

  puts resultado
end