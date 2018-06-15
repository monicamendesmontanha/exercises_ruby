#O Sr. Manoel Joaquim expandiu seus negócios para além dos negócios de 1,99 e
#agora possui uma loja de conveniências. Faça um programa que implemente uma
#caixa registradora rudimentar. O programa deverá receber um número
#desconhecido de valores referentes aos preços das mercadorias. Um valor zero
#deve ser informado pelo operador para indicar o final da compra. O programa
#deve então mostrar o total da compra e perguntar o valor em dinheiro que o
#cliente forneceu, para então calcular e mostrar o valor do troco. Após esta
#operação, o programa deverá voltar ao ponto inicial, para registrar a próxima
#compra. A saída deve ser conforme o exemplo abaixo:

#Lojas Tabajara
#Produto 1: R$ 2.20
#Produto 2: R$ 5.80
#Produto 3: R$ 0
#Total: R$ 9.00
#Dinheiro: R$ 20.00
#Troco: R$ 11.00
#...

#NÃO SEI SEPARAR EM "PRODUTO 1, 2, 3 PARA APRESENTARA NO FINAL"
#NÃO SEI RECOMEÇAR O PROGRAMA AO PONTO INICIAL AUTOMATICAMENTE PARA UMA NOVA COMPRA.

def entrada_produtos(resp)
  compras =[]

  while resp != 0

    print "Digite o valor do produto: "
    resp = gets.to_f
    compras << resp

  end

  return compras
end

def total_compras(x)
  total = 0
    x.each do |n|
    total = total + n
  end

  return total
end

def troco(x,y)
  x - y
end
 
print "Para encerrar, aperte ZERO."
print "Digite o valor do produto: "
resp = gets.to_f


compras = entrada_produtos(resp)
puts "Produto: #{compras}."

total = total_compras(compras)
print "TOTAL: R$ #{total}."

print "DINHEIRO: "
dinheiro = gets.to_f

troco = troco(dinheiro,total)
print "TROCO: R$ #{troco}."