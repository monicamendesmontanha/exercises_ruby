#Faça um Programa que leia dois vetores com 10 elementos cada. Gere um terceiro vetor de 20 elementos,
#cujos valores deverão ser compostos pelos elementos intercalados dos dois outros vetores.

def cria_vetor(quantidade_elementos)
  vetor = []

  quantidade_elementos.times do |n|
    puts "------------------"
    puts "#{n+1}"
    print "Digite o número: "
    vetor << gets.to_i
  end

  vetor
end

def intercala_vetor(quantidade_elementos, a, b)
  vetor = []

  quantidade_elementos.times do |index|
    vetor << a[index]
    vetor << b[index]
  end

  vetor
end

QUANTIDADE_DE_ELEMENTOS = 4

puts "vetor 01:"
vetor_01 = cria_vetor(QUANTIDADE_DE_ELEMENTOS)

puts "vetor 02:"
vetor_02 = cria_vetor(QUANTIDADE_DE_ELEMENTOS)

puts "#{vetor_01}"
puts "#{vetor_02}"

vetor_intercalado = intercala_vetor(QUANTIDADE_DE_ELEMENTOS, vetor_01, vetor_02)
puts "#{vetor_intercalado}"