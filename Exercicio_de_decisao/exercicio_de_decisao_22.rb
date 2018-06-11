#Faça um Programa para leitura de três notas parciais de um aluno. 
#O programa deve calcular a média alcançada por aluno e presentar:   
#   a. A mensagem "Aprovado", se a média for maior ou igual a 7, ]
#     com a respectiva média alcançada;   
#   b. A mensagem "Reprovado", se a média for menor do que 7, 
#     com a respectiva média alcançada;   
#   c. A mensagem "Aprovado com Distinção", se a média for igual a 10. 

print "Qual foi a primeira nota do aluno? "
primeira_nota = gets.to_f

print "Qual foi a segunda nota do aluno? "
segunda_nota = gets.to_f

print "Qual foi a terceira nota do aluno? "
  terceira_nota = gets.to_f

media = (primeira_nota + segunda_nota + terceira_nota) / 3

puts media

if media == 10.0
  puts "Aprovado com Distinção!"
elsif media >= 7.0
  puts "Aprovado!"
else
  puts "Reprovado!"
end