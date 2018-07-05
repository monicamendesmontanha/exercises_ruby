#Altere o programa anterior, intercalando 3 vetores de 10 elementos cada.


QUANTIDADE_DE_ELEMENTOS = 4
vetor_01 = []
vetor_02 = []
vetor_03 = []

QUANTIDADE_DE_ELEMENTOS.times do |n|
  puts "------------------"
  puts "#{n+1}"
  print "Digite o primeiro número: "
  vetor_01 << gets.to_i
  print "Digite o segundo número: "
  vetor_02 << gets.to_i
  print "Digite o terceiro número: "
  vetor_03 << gets.to_i
end


puts "#{vetor_01}"
puts "#{vetor_02}"
puts "#{vetor_03}"

#COMO PEGAR ELEMENTOS INTERCALADOS DOS TRÊS VETORES E CRIAR UM VETOR MISTO ?