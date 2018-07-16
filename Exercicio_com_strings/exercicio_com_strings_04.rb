#'''Nome na vertical em escada.''' Modifique o programa anterior de forma a
#mostrar o nome em formato de escada.

#F
#FU
#FUL
#FULA
#FULAN
#FULANO

print "Digite um nome: "
nome = gets.chomp.split('')

resultado = ""
nome.each do |c|
  resultado = resultado + c
  puts resultado
end