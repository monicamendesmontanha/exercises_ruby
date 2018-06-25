#Faça um Programa que peça as quatro notas de 10 alunos, calcule e armazene num
#vetor a média de cada aluno, imprima o número de alunos com média maior ou igual a 7.0.

# TOTAL_NOTAS.times do
#   print "Digite a nota: "
#   notas = gets.to_f
#   notas << nota
# end

TOTAL_ALUNOS = 2
TOTAL_NOTAS = 3

def obter_notas_do_aluno(numero_de_matricula)
  notas = []
  puts "Aluno #{numero_de_matricula}"
  TOTAL_NOTAS.times do |n|
    print "Digite a nota #{n + 1}: "
    notas << gets.to_f
  end

  return notas
end

todas_as_medias = []

TOTAL_ALUNOS.times do |n|
  numero_de_matricula = n + 1

  notas = obter_notas_do_aluno(numero_de_matricula)
  media = notas.sum/notas.size

  todas_as_medias << media

  puts "Notas do aluno #{numero_de_matricula}: #{notas}"
  puts "Média: #{media.round(2)}"
  puts "–––––––––––––––"
end

# aprovados = todas_as_medias.select do |media|
#   media >= 7
# end

# mais legível
aprovados = todas_as_medias.select { |media| media >= 7 }
reprovados = todas_as_medias.select { |media| media < 7 }

# Mais performático para quantidade exorbitante de dados
# aprovados = []
# reprovados = []
# todas_as_medias.each do |media|
#   if media >= 7
#     aprovados << media
#   else
#     reprovados << media
#   end
# end

puts "Quantidade de alunos com média maior ou igual a 7.0: #{aprovados.size}"