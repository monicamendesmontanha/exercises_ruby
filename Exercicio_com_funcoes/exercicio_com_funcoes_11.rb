#'''Data com mês por extenso'''. Construa uma função que receba uma data noformato ''DD/MM/AAAA'' 
#e devolva uma string no formato ''D de mesPorExtenso de AAAA''. Opcionalmente, valide a data 
#e retorne NULL caso a data seja inválida.


def dia_valido(dia)
  dia > 1 or dia <= 31
end


meses = {
  1 => "Janeiro",
  2 => "Fevereiro",
  3 => "Março",
  4 => "Abril",
  5 => "Maio",
  6 => "Junho",
  7 => "Julho",
  8 => "Agosto",
  9 => "Setemebro",
  10 => "Outubro",
  11 => "Novembro",
  12 => "Dezembro"
}

print "Digite a data: [dd/mm/aaaa] "
data = gets.chomp.split('/')

dia = dia_valido(data[0])
mes = data[1].to_i
ano = data[2]

puts "#{dia} de #{meses[mes]} de #{ano}"