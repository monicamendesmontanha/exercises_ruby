#O Sr. Manoel Joaquim possui uma grande loja de artigos de R$ 1,99, com cerca
#de 10 caixas. Para agilizar o cálculo de quanto cada cliente deve pagar ele
#desenvolveu um tabela que contém o número de itens que o cliente comprou e ao
#lado o valor da conta. Desta forma a atendente do caixa precisa apenas contar
#quantos itens o cliente está levando e olhar na tabela de preços. Você foi
#contratado para desenvolver o programa que monta esta tabela de preços, que
#conterá os preços de 1 até 50 produtos, conforme o exemplo abaixo:

#Lojas Quase Dois - Tabela de preços
#1 - R$ 1.99
#2 - R$ 3.98
#...
#50 - R$ 99.50



#def tabela_de_precos(produtos)
#  contador = 1
#  while contador <= produtos do
#    preco_produto = calcula_preco(contador)
#    puts "#{contador} - R$ #{preco_produto}."
#    contador = contador + 1    
#  end 
#end
PRECO = 1.99


def calcula_preco(unidade)
  PRECO * unidade
end

def calcula_tabela_de_precos(produtos)
  contador = 1
  tabela = []
  while contador <= produtos do
    preco_produto = calcula_preco(contador)
    tabela << preco_produto
    contador = contador + 1    
  end

  return tabela
end

def imprime_tabela_de_precos(tabela_de_precos)
  tabela_de_precos.each_with_index do |preco, index|
    puts "#{index + 1} - R$ #{preco}"
  end
end

print "Quantos produtos você vai comprar? "
n = gets.to_i

tabela = calcula_tabela_de_precos(n)
imprime_tabela_de_precos(tabela)
#tabela_de_precos(n)
valor_compra = calcula_preco(n) 
puts "Comprando #{n} produtos, você vai pagar R$ #{valor_compra}."
