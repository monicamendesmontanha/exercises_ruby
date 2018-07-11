#Altere o programa anterior, intercalando 3 vetores de 10 elementos cada.

def cria_vetor (quantidade_elementos)
  vetor = []

  quantidade_elementos.times do |n|
    puts "------------------"
    puts "#{n+1}"
    print "Digite o número: "
    vetor << gets.to_i
    
  end

  vetor

end


def intercala_vetor(quantidade_elementos, a, b, c)
  vetor = []

  quantidade_elementos.times do |index|
    vetor << a[index]
    vetor << b[index] 
    vetor << c[index]
  
  end

  vetor

end


QUANTIDADE_DE_ELEMENTOS = 2

puts "Vetor 01:"
vetor_01 = cria_vetor(QUANTIDADE_DE_ELEMENTOS)

puts "Vetor 02"
vetor_02 = cria_vetor(QUANTIDADE_DE_ELEMENTOS)

puts "Vetor 03"
vetor_03 = cria_vetor(QUANTIDADE_DE_ELEMENTOS)


puts "#{vetor_01}"
puts "#{vetor_02}"
puts "#{vetor_03}"

vetor_intercalado = intercala_vetor(QUANTIDADE_DE_ELEMENTOS, vetor_01, vetor_02, vetor_03)
puts "#{vetor_intercalado}"