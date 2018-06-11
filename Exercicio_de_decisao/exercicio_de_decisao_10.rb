#Faça um Programa que pergunte em que turno você estuda. 
#Peça para digitar Mmatutino ou V-Vespertino ou N- Noturno. 
#Imprima a mensagem "Bom Dia!", "Boa Tarde!" ou "Boa Noite!" ou "Valor Inválido!", 
#conforme o caso. 
 
print "Qual turno você estuda? [M] [V] [N] "
turno = gets.chomp

if turno == "M"
  puts "Bom Dia!"
elsif turno == "V"
  puts "Boa Tarde!"
elsif turno == "N"
  puts "Boa Noite!"
else 
  puts "Valor inválido!"
end