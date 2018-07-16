#'''Data por extenso.''' Faça um programa que solicite a data de nascimento
#(dd/mm/aaaa) do usuário e imprima a data com o nome do mês por extenso.

#Data de Nascimento: 29/10/1973
#Você nasceu em 29 de Outubro de 1973.


#print "Digite sua data de nascimento: [dd/mm/aaaa]"
#data = gets.chomp.split('/')

meses = {
  1 => "Janeiro",
  2 => "Fevereiro",
  3 => "Março",
  4 => "Abril",
  5 => "Maio",
  6 => "Junho",
  7 => "Julho",
  8 => "Agosto",
  9=> "Setemebro",
  10 => "Outubro",
  11 => "Novembro",
  12 => "Dezembro"
}

print "Digite a data do seu nascimento:  [dd/mm/aaaa] "
data = gets.chomp.split('/')

dia = data[0]
mes = data[1]
ano = data[2]

puts "------------------------------------------------------"
puts "Você nasceu em #{dia} de #{meses[mes.to_i]} de #{ano}."