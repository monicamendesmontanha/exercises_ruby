#Faça um programa para imprimir:
#1
#2 2
#3 3 3
#.....
#n n n n n n
#para um '''n''' informado pelo usuário. Use uma função que receba um
#valor '''n''' inteiro e imprima até a n-ésima linha.

def imprime_n_vezes(n)
  n.times { |_| print "#{n} " }
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

#NAO SEI COMO IMPRIMIR CADA ELEMENTO A QUANTIDADE DE VEZES QUE SE REFERE A ELE MESMO, UM AO LADO DO OUTRO.