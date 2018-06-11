#Faça um programa que calcule o número médio de alunos por turma. Para isto, peça a 
#quantidade de turmas e a quantidade de alunos para cada turma. As turmas não podem 
#ter mais de 40 alunos. 

#01) Pedir a quantidade de turmas
#02) Pedir a quantidade de alunos de cada turma (Não pode ter mais de 40 alunos por turma)
#03) Calcular a média: total de aluno de todas as turmas / quantidade de turmas

print "Digite a quantidade de turmas: "
n = gets.to_i

aaa = []
contador = 0

while contador < n
  print "Quantos alunos estão na turma: "
  a = gets.to_i
  aaa << a
  contador = contador + 1

end

#print aaa
soma = aaa.sum
#print soma
media = soma / aaa.size.to_f
print media