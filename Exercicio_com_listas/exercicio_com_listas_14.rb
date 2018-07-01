#Utilizando listas faça um programa que faça 5 perguntas para uma pessoa sobre um crime.
#As perguntas são:
#a."Telefonou para a vítima?"
#b."Esteve no local do crime?"
#c."Mora perto da vítima?"
#d."Devia para a vítima?"
#e."Já trabalhou com a vítima?"
#O programa deve no final emitir uma classificação sobre a participação da pessoa no crime.
#Se a pessoa responder positivamente a 2 questões ela deve ser classificada como "Suspeita",
#entre 3 e 4 como "Cúmplice" e 5 como "Assassino". Caso contrário, ele será classificado como "Inocente".

resp = []

print "Telefonou para vítima? [S/N] "
resp << gets.chomp

print "Esteve no local do crime? [S/N] "
resp << gets.chomp

print "Mora perto da vítima? [S/N] "
resp << gets.chomp

print "Devia para vítima? [S/N] "
resp << gets.chomp

print "Já trabalho para a vítima? [S/N] "
resp << gets.chomp

puts "#{resp}"

positivo = resp.select { |resp| resp == "S"}
respostas_positivas = positivo.size

if respostas_positivas == 2
  puts "SUSPEITA"
elsif respostas_positivas > 2 && respostas_positivas <=4
  puts "CÚMPLICE"
elsif respostas_positivas == 5
  puts "ASSASSINO"
else
  puts "INOCENTE"
end


