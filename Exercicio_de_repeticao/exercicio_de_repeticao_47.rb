#Em uma competição de ginástica, cada atleta recebe votos de sete jurados. A
#melhor e a pior nota são eliminadas. A sua nota fica sendo a média dos votos
#restantes. Você deve fazer um programa que receba o nome do ginasta e as notas
#dos sete jurados alcançadas pelo atleta em sua apresentação e depois informe a
#sua média, conforme a descrição acima informada (retirar o melhor e o pior salto
#e depois calcular a média com as notas restantes). As notas não são informados
#ordenadas. Um exemplo de saída do programa deve ser conforme o exemplo abaixo:
#Atleta: Aparecido Parente
#Nota: 9.9
#Nota: 7.5
#Nota: 9.5
#Nota: 8.5
#Nota: 9.0
#Nota: 8.5
#Nota: 9.7
#Resultado final:
#Atleta: Aparecido Parente
#Melhor nota: 9.9
#Pior nota: 7.5
#Media: 9.04

print "Competidor: "
nome = gets.chomp

TOTAL_DE_VOTOS = 7
notas = []

TOTAL_DE_VOTOS.times do |n|
  print "#{n+1}ª Nota: "
  notas << gets.to_f
end

notas_ordenadas = notas.sort
melhor_nota = notas_ordenadas.last
pior_nota = notas_ordenadas.first

restante_das_notas = notas_ordenadas.select { |nota| nota != melhor_nota && nota != pior_nota}
media_das_notas = restante_das_notas.sum / restante_das_notas.size

puts "---------------"
puts "Resultado Final"
puts "Atleta: #{nome}"
puts "Melhor nota: #{melhor_nota}"
puts "Pior nota: #{pior_nota}"
puts "Média: #{media_das_notas}"
