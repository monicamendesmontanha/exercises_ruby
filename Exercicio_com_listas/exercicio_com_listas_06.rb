#Faça um Programa que peça as quatro notas de 10 alunos, calcule e armazene num
#vetor a média de cada aluno, imprima o número de alunos com média maior ou igual a 7.0.

notas = []
contador = 0

while contador < 4 do
  print "Digite a nota: "
  nota = gets.to_f
  notas << nota
  
  contador = contador + 1
end

puts "Notas: #{notas}"