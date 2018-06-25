#Faça um Programa que peça as quatro notas de 10 alunos, calcule e armazene num
#vetor a média de cada aluno, imprima o número de alunos com média maior ou igual a 7.0.

# TOTAL_NOTAS.times do
#   print "Digite a nota: "
#   notas = gets.to_f
#   notas << nota
# end

TOTAL_ALUNOS = 2
TOTAL_NOTAS = 3

aprovados = []

TOTAL_ALUNOS.times do |n|
  notas = []
  TOTAL_NOTAS.times do
    print "Aluno #{n} :: Digite a nota: "
    notas << gets.to_f
  end

  media = notas.sum/notas.size

  if media >= 7
    aprovados << media
  end

  print "Notas do aluno #{n}:"
  puts notas
  puts "Média: #{media.round(2)}"
  puts "–––––––––––––––"
end

puts "O número de alunos com média maior ou igual a 7.0 são: #{aprovados.size}"