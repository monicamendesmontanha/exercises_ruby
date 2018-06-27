#Foram anotadas as idades e alturas de 30 alunos. Faça um Programa que determine quantos alunos 
#com mais de 13 anos possuem altura inferior à média de altura desses alunos.

#1) pedir idades e alturas dos alunos
#2) fazer a media da altura desses alunos
#3) fazer um array com todos alunos com mais de 13 anos
#4) retirar todos alunos com 13 que tem altura abaixo da média geral dos alunos

TOTAL_DE_ALUNOS = 3
idades = []
alturas = []

TOTAL_DE_ALUNOS.times do |n|
  puts "---------------"
  puts "#{n+1}"
  print "Digite a idade: "
  idades << gets.to_i
  print "Digite a altura: "
  alturas << gets.to_f
end

media_altura = alturas.sum/alturas.size
#puts "A média da altura dos alunos é: #{media_altura.round(2)}"

maiores_que_13_anos = idades.select { |idade| idade >= 13 }
#puts "Lista dos alunos com mais que 13 anos: #{maiores_que_13_anos}"

abaixo_da_media = idades.select { |idade| idade >= 13 } && alturas.select { |altura| altura < media_altura}
puts "Lista dos alunos que tem 13 anos e apresentam uma altura abaixo da média: #{abaixo_da_media}"