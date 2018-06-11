#Faça um programa para a leitura de duas notas parciais de um aluno. 
#O programa deve calcular a média alcançada por aluno e apresentar: 
   #* A mensagem "Aprovado", se a média alcançada for maior ou igual a sete;   
   #* A mensagem "Reprovado", se a média for menor do que sete;   
   #* A mensagem "Aprovado com Distinção", se a média for igual a dez. 


require_relative "./calcula_media"

print "Qual foi a primeira nota do aluno? "
primeira_nota = gets.to_f

print "Qual foi a segunda nota do aluno? "
segunda_nota = gets.to_f

media = calcula_media(primeira_nota,segunda_nota)

if media == 10.0
  puts "Aprovado com Distinção!"
elsif media >= 7.0
  puts "Aprovado!"
else
  puts "Reprovado!"
end
