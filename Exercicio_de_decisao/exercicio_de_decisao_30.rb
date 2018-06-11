#O Hipermercado Tabajara está com uma promoção de carnes que é imperdível. 
#Confira: 
#                   Até 5 Kg           Acima de 5 Kg 
#File Duplo      R$ 4,90 por Kg          R$ 5,80 por Kg 
#Alcatra         R$ 5,90 por Kg          R$ 6,80 por Kg 
#Picanha         R$ 6,90 por Kg          R$ 7,80 por Kg 


#Para atender a todos os clientes, cada cliente poderá levar apenas um dos tipos de 
#carne da promoção, porém não há limites para a quantidade de carne por cliente. 
#Se compra for feita no cartão Tabajara o cliente receberá ainda um desconto de 5% 
#sobre o total a compra. Escreva um programa que peça o tipo e a quantidade de carne 
#comprada pelo usuário e gere um cupom fiscal, contendo as informações da compra: 
#tipo e quantidade de carne, preço total, tipo de pagamento, valor do desconto e 
#  valor a pagar. 

#01. tipo de carne?
#02. quantidade de carne?
#03. gerar um cupom fiscal contendo:
#  3.1. tipo de carne
#  3.2. quantidade de carne
#  3.3. preço total
#  3.4. tipo de pagamento
#  3.5. valor de desconto
#  3.6. valor a pagar
#if compra == "cartao tabajara", aplicar 0.05 de desconto sobre o total da compra.

print "01. Qual tipo de carne? [fileduplo, alcatra ou picanha] "
carne = gets.chomp

print "02. Qual a quantidade de carne? [kg] "
peso = gets.to_f

def tabela(carne, peso)
  if carne == "fileduplo"
    if peso <= 5
      peso * 4.90
    else peso > 5
      peso * 5.80
    end
  end

  if carne == "alcatra"
    if peso <= 5
      peso * 5.90
    else peso > 5
      peso * 6.80
    end
  end

  if carne == "picanha"
    if peso <= 5
      peso * 6.90
    else peso > 5
      peso * 7.80
    end
  end
end

preco_total = tabela(carne, peso).round(2)
p "O preco total eh R$ #{preco_total}."
#p preco_total.round(2)


print "03. Qual será o tipo do pagamento? [cartao, dinheiro] "
tipo = gets.chomp

if tipo == "cartao"
  puts "A forma de pagamento é do tipo: #{tipo} tabajara."
  puts "O valor do desconto é: R$ #{(preco_total * 0.05).round(2)}."
  puts "O valor a pagar é: R$ #{(preco_total - (preco_total * 0.05)).round(2)}."
else
  puts "A forma de pagamento é do tipo: #{tipo} + ,e por isso, não teve desconto."
  puts "O valor a pagar é: R$ #{preco_total.round(2)}."
end


#def aplica_desconto(preco_total)
#  preco_total * 0.05
#end

#desconto = (preco_total + 0.05)
#p desconto.to_f

#def tipo_pagamento(tipo, preco_total,desconto)
#  desconto = (preco_total * 0.05)
#  
#  if tipo == "cartao"
#    preco_total - desconto
#    p "Valor do desconto: #{desconto}."
#  else 
#    p "Não teve desconto!"
#  end
#end

#p preco_com_desconto = tipo_pagamento(tipo, preco_total, desconto)