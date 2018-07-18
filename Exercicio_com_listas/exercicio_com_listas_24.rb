#Faça um programa que simule um lançamento de dados. Lance o dado 100 vezes
#e armazene os resultados em um vetor . Depois, mostre quantas vezes cada valor
#foi conseguido. Dica: use um vetor de contadores(1-6) e uma função para gerar
#numeros aleatórios, simulando os lançamentos dos dados.

numeros_do_dado = {
  1 => [],
  2 => [],
  3 => [],
  4 => [],
  5 => [],
  6 => []
}

10.times do
  print "Lance o dado: "
  resultado = gets.to_i

  numeros_do_dado[resultado] << 1
end

numeros_do_dado.each do |numero, resultado|
  if resultado.size > 0
    numeros_do_dado[numero] = resultado.size
  end
end

puts numeros_do_dado