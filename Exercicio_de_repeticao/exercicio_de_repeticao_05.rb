#Altere o programa anterior permitindo ao usuário informar as populações e as
#taxas de crescimento iniciais. Valide a entrada e permita repetir a operação.

def dados_validos(numero)
  while numero <= 0 do
    puts "Inválido."
    print "Por favor, digite novamente: "
    numero = gets.to_f
  end
  return numero
end

def tamanho_populacao
  print "Qual o tamanho da população ? "
  populacao = gets.to_f
  populacao = dados_validos(populacao)
  return populacao
end

populacao_a = tamanho_populacao
populacao_b = tamanho_populacao


def crescimento
 print "Qual a taxa de crescimento da população? "
  taxa = gets.to_f
  taxa = dados_validos(taxa)
  return taxa
end

taxa_a = crescimento
taxa_b = crescimento

def calcula_crescimento(populacao, taxa) 
  populacao + (populacao * taxa)
end

anos_passados = 0

while populacao_a < populacao_b do
  puts "#{populacao_a} :: #{populacao_b}" 
  populacao_a = calcula_crescimento(populacao_a, taxa_a)
  populacao_b = calcula_crescimento(populacao_b, taxa_b)
  anos_passados = anos_passados + 1
end

puts "A população de A ultrapassou a população de B após #{anos_passados} anos."