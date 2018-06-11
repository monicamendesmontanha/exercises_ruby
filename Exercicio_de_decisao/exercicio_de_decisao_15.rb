#Faça um programa que lê as duas notas parciais obtidas por um aluno numa disciplina 
#ao longo de um semestre, e calcule a sua média. 
#A atribuição de conceitos obedece à tabela abaixo: 
#      Média de Aproveitamento  Conceito   
#      Entre 9.0 e 10.0   A   
#      Entre 7.5 e 9.0    B   
#      Entre 6.0 e 7.5    C   
#      Entre 4.0 e 6.0    D   
#      Entre 4.0 e zero   E   

require_relative "./calcula_media"

print "Qual foi a primeira nota? "
primeira_nota = gets.to_f

print "Qual foi a segunda nota? "
segunda_nota = gets.to_f

media = calcula_media(primeira_nota,segunda_nota)
conceito = calcula_conceito(media)

puts "Média de Aproveitamento:  #{conceito}!"