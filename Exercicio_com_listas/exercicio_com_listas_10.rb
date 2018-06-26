#Faça um Programa que leia dois vetores com 10 elementos cada. Gere um terceiro vetor de 20 elementos, 
#cujos valores deverão ser compostos pelos elementos intercalados dos dois outros vetores.


QUANTIDADE_DE_ELEMENTOS = 4
vetor_01 = []
vetor_02 = []

QUANTIDADE_DE_ELEMENTOS.times do |n|
  puts "------------------"
  puts "#{n+1}"
  print "Digite o primeiro número: "
  vetor_01 << gets.to_i
  print "Digite o segundo número: "
  vetor_02 << gets.to_i
end


puts "#{vetor_01}"
puts "#{vetor_02}"

#COMO PEGAR ELEMENTOS INTERCALADOS DOS DOIS VETORES E CRIAR UM VETOR MISTO ?