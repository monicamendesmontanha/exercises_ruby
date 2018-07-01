#Faça um programa que receba a temperatura média de cada mês do ano e
#  armazene-as em uma lista. Após isto, calcule a média anual das temperaturas e
#  mostre todas as temperaturas acima da média anual, e em que mês elas ocorreram
#  (mostrar o mês por extenso: 1 – Janeiro, 2 – Fevereiro, . . . ).

todas_temperaturas = []

12.times do |n|
  print "Qual temperatura média do mês #{n + 1}? "
  todas_temperaturas << gets.to_f
end

media_anual = todas_temperaturas.sum/todas_temperaturas.size

acima_da_media = todas_temperaturas.select { |media| media > media_anual}
puts "A medias acima de media anual observadas foram: #{acima_da_media}"

#NAO SEI FAZER REFERENCIA DO "n" ao mês para que ele puxe automaticamente que n = 1 é igual a janeiro.
#E DEPOIS DISSO NAO SEI ASSOCIAR O "n" de referência do mês relacionado a média daquele mês que por acaso vai tá sendo escolhida como acima da média.


#puts "Os meses que ocorreram acima da media anual foram: #{}"
