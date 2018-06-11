# .27 Faça um programa que faça 5 perguntas para uma pessoa sobre um crime. 
#As perguntas são: 
#a. "Telefonou para a vítima?"   
#b. "Esteve no local do crime?"   
#c. "Mora perto da vítima?"   
#d. "Devia para a vítima?"   
#e. "Já trabalhou com a vítima?" 

# O programa deve no final emitir uma classificação sobre a participação da 
#pessoa no crime. Se a pessoa responder positivamente a 2 questões ela deve ser 
#classificada como "Suspeita", entre 3 e 4 como "Cúmplice" e 5 como "Assassino". 
#Caso contrário, ele será classificado como "Inocente". 

print "Telefonou para a vítima? [SIM/NAO] "
resposta_1 = gets.chomp
print "Esteve no local do crime? [SIM/NAO] "   
resposta_2 = gets.chomp
print "Mora perto da vítima? [SIM/NAO] "   
resposta_3 = gets.chomp
print "Devia para a vítima? [SIM/NAO] "   
resposta_4 = gets.chomp
print "Já trabalhou com a vítima? [SIM/NAO] "
resposta_5 = gets.chomp


#resposta_1 = todas_respostas[0].to_s
#resposta_2 = todas_respostas[1]
#resposta_3 = todas_respostas[2] 
#resposta_4 = todas_respostas[3]
#resposta_5 = todas_respostas[4]

#p todas_respostas

todas_respostas = [resposta_1, resposta_2, resposta_3, resposta_4, resposta_5]

todas_respostas_convertidas = todas_respostas.map do |x|
  if x == 'S'
    1
  else
    0
  end
end

p todas_respostas_convertidas

total_sim = todas_respostas.select { |x| x == 'S' } #['S', 'S', 'S']
total_nao = todas_respostas.select { |x| x == 'N' } #['N', 'N']

p total_sim
p total_nao

#01.Como passar todas_respostas para um array e apresentar?
#02.Porque a resposta não está toda na mesma linha, se não fiz split? 
#puts "#{resposta_1}, #{resposta_2}, #{resposta_3}, #{resposta_4}, #{resposta_5}."
puts todas_respostas

if total_sim.size == 2
  puts "Suspeita"
elsif total_sim.size == 3 or total_sim.size == 4
  puts "Cúmplice"
elsif total_sim.size == 5
  puts "Assassino"
else
  puts "Inocente"
end
