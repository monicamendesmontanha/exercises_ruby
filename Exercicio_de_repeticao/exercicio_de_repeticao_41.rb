#Faça um programa que receba o valor de uma dívida e mostre uma tabela com os
#seguintes dados: valor da dívida, valor dos juros, quantidade de parcelas e valor
#da parcela.
#Os juros e a quantidade de parcelas seguem a tabela abaixo:
#Quantidade de Parcelas          % de Juros sobre o valor inicial da dívida
#          1                                0
#          3                               10
#          6                               15
#          9                               20
#          12                              25
#Exemplo de saída do programa:
#Valor da Dívida     Valor dos Juros     Quantidade de Parcelas    Valor da Parcela

#R$ 1.000,00           0                         1                 R$ 1.000,00

#R$ 1.100,00          100                        3                 R$ 366,00

#R$ 1.150,00         150                         6                 R$ 191,67

JUROS_1 = 0
JUROS_3 = 0.10
JUROS_6 = 0.15


def valor_da_divida(divida, juros)
  divida + (divida * juros)
end

print "Digite o valor da dívida: "
divida = gets

print "Quer parcelar a dívida em quantas vezes? {1, 3, 6, 9 ou 12]"
quantidade_de_parcelas = gets.chomp

if quantidade_de_parcelas == "1"
  valor_total = valor_da_divida(divida, JUROS_1)
elsif quantidade_de_parcelas == "3"
  valor_total = valor_da_divida(divida, JUROS_3)
else quantidade_de_parcelas == "6"
  valor_total = valor_da_divida(divida, JUROS_6)
end

puts "Valor Total da Dívida: R$ #{valor_total}"
puts "Valor dos Juros: R$ #{divida*juros}"
puts "Quantidade de Parcelas: R$ #{quantidade_de_parcelas}"
puts "Valor de cada Parcela: R$ #{valor_total/quantidade_de_parcelas}"
