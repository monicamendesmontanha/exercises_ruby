# O algoritmo deve mostrar na tela as notas, a média, o conceito correspondente 
# e a mensagem “APROVADO” se o conceito for A, B ou C ou “REPROVADO” se o conceito 
# for D ou E. 

require_relative "./calcula_media"

print "Qual foi a primeira nota? "
primeira_nota = gets.to_f

print "Qual foi a segunda nota? "
segunda_nota = gets.to_f

media = calcula_media(primeira_nota,segunda_nota)
conceito = calcula_conceito(media)

if conceito == "A" or conceito == "B" or conceito == "C"
  puts "APROVADO"
else
  puts "REPROVADO"
end