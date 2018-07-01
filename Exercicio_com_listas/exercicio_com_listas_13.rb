#Faça um programa que receba a temperatura média de cada mês do ano e
#  armazene-as em uma lista. Após isto, calcule a média anual das temperaturas e
#  mostre todas as temperaturas acima da média anual, e em que mês elas ocorreram
#  (mostrar o mês por extenso: 1 – Janeiro, 2 – Fevereiro, . . . ).

meses = {
  1 => "Janeiro",
  2 => "Fevereiro",
  3 => "Março",
  4 => "Abril",
  5 => "Maio",
  6 => "Junho",
  7 => "Julho",
  8 => "Agosto",
  9 => "Setembro",
  10 => "Outubro",
  11 => "Novembro",
  12 => "Dezembro"
}

Mes = Struct.new(:indice, :nome)
TemperaturaMensal = Struct.new(:mes, :temperatura)

todas_temperaturas = []

12.times do |n|
  mes = Mes.new(n + 1, meses[n + 1])

  print "Qual temperatura média do mês de #{mes.nome}? "
  temperatura = gets.to_f

  temperatura_mensal = TemperaturaMensal.new(mes, temperatura)

  todas_temperaturas << temperatura_mensal
end

total_de_todas_as_temperaturas = 0
todas_temperaturas.each do |temperatura_mensal|
  total_de_todas_as_temperaturas = total_de_todas_as_temperaturas + temperatura_mensal.temperatura
end

media_anual = total_de_todas_as_temperaturas/todas_temperaturas.size

temperutas_mensais_acima_da_media = todas_temperaturas.select do |temperatura_mensal|
  temperatura_mensal.temperatura > media_anual
end

puts "Meses com temperatura acima da média: "

temperutas_mensais_acima_da_media.each do |temperatura_mensal|
  puts "#{temperatura_mensal.mes.nome}, #{temperatura_mensal.temperatura}ºC"
end

#NAO SEI FAZER REFERENCIA DO "n" ao mês para que ele puxe automaticamente que n = 1 é igual a janeiro.
#E DEPOIS DISSO NAO SEI ASSOCIAR O "n" de referência do mês relacionado a média daquele mês que por acaso vai tá sendo escolhida como acima da média.


#puts "Os meses que ocorreram acima da media anual foram: #{}"
