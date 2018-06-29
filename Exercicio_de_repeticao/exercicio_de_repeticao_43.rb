#O cardápio de uma lanchonete é o seguinte:
#Especificação          Código        Preço
#Cachorro Quente          100         1,20
#Bauru Simples            101         1,30    
#Bauru com ovo            102         1,50
#Hambúrguer               103         1,20
#Cheeseburguer            104         1,30
#Refrigerante             105         1,00

#Faça um programa que leia o código dos itens pedidos e as quantidades desejadas. 
#Calcule e mostre o valor a ser pago por item (preço * quantidade) e o total geral do pedido. 
#Considere que o cliente deve informar quando o pedido deve ser encerrado

def total_da_conta(preco,quantidade)
  preco * quantidade
end

print "Digite o código do produto: "
codigo = gets.chomp

print "Qual quantidade do produto? "
quantidade = gets.to_i

if codigo == "100"
  preco = 1.20
elsif codigo == "101"
  preco = 1.30
elsif codigo == "102"
  preco = 1.50
elsif codigo == "103"
  preco = 1.20
elsif codigo == "104"
  preco = 1.30
else codigo == "105"
   preco = 1.00
end

valor_a_ser_pago = total_da_conta(preco,quantidade)
puts "Valor da conta: R$ #{valor_a_ser_pago.round(2)}"