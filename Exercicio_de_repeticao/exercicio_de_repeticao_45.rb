#Desenvolver um programa para verificar a nota do aluno em uma prova com 10 questões, 
#o programa deve perguntar ao aluno a resposta de cada questão e ao final comparar com o 
#gabarito da prova e assim calcular o total de acertos e a nota (atribuir 1 ponto por 
#resposta certa). Após cada aluno utilizar o sistema deve ser feita uma pergunta se outro 
#aluno vai utilizar o sistema. Após todos os alunos terem respondido informar:
#  a. Maior e Menor Acerto;
#  b. Total de Alunos que utilizaram o sistema;
#  c. A Média das Notas da Turma.
#  Gabarito da Prova:
#  01 A
#  02 B
#  03 C
#  04 D
#  05 E

#  06 E
#  07 D
#  08 C
#  09 B
#  10 A

#  Após concluir isto você poderia incrementar o programa permitindo que o professor 
#  digite o gabarito da prova antes dos alunos usarem o programa.

gabarito_do_professor = {
  1 => "A",
  2 => "B",
  3 => "C",
  4 => "D",
  5 => "E",
  6 => "E",
  7 => "D",
  8 => "C",
  9 => "B",
  10 => "A",
}

Gabarito = Struct.new(:questao, :resposta)

respostas = []

10.times do |n|
  print "Questão #{n+1} - Resposta: "
  respostas << gets.chomp
end

puts "#{respostas}"

respostas.each do |gabarito|
  ir respostas == 
end

