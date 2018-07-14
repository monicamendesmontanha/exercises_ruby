#'''Tamanho de strings.''' Faça um programa que leia 2 strings e informe o conteúdo
#delas seguido do seu comprimento. Informe também se as duas strings possuem o
#mesmo comprimento e são iguais ou diferentes no conteúdo.

#Compara duas strings
#String 1: Brasil Hexa 2006
#String 2: Brasil! Hexa 2006!

#Tamanho de "Brasil Hexa 2006": 16 caracteres
#Tamanho de "Brasil! Hexa 2006!": 18 caracteres
#As duas strings são de tamanhos diferentes.
#As duas strings possuem conteúdo diferente.

print "Digite uma frase: "
frase_01 = gets

print "Digite outra frase: "
frase_02 = gets

puts "Tamanho de '#{frase_01}': #{frase_01.size} caracteres"
puts "Tamanho de '#{frase_02}': #{frase_02.size} caracteres"

if frase_01 == frase_02
  puts "As duas strings possuem o mesmo conteúdo"
else
  puts "As duas strings possuem conteúdo diferente"
end

