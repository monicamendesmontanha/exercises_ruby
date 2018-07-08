#Faça um programa para imprimir:
#1
#1 2
#1 2 3
#.....
#1 2 3 4 5 6 7 ...n
#para um '''n''' informado pelo usuário. Use uma função que receba um
#valor '''n''' inteiro imprima até a n-ésima linha.

def imprime_n_vezes(n)
  n.times { |numero_atual| print "#{numero_atual + 1} " }
end

def imprime_de_1_ate(n)
  n.times do |numero_atual|
    imprime_n_vezes(numero_atual + 1)
    puts ""
  end
end

print "Digite até que número você quer que mostre? "
n = gets.to_i

imprime_de_1_ate(n)