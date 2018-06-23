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
#Total: R$ 8.00
#Dinheiro: R$ 20.00
#Troco: R$ 12.00
#...

#NÃO SEI SEPARAR EM "PRODUTO 1, 2, 3 PARA APRESENTARA NO FINAL" (Tentei por .split('') e não deu certo)
# => RESOLVIDO NA LINHA 48. 
#NÃO SEI RECOMEÇAR O PROGRAMA AO PONTO INICIAL AUTOMATICAMENTE PARA UMA NOVA COMPRA.

def entrada_produtos
  compras =[]
  resp = nil
# "resp = nil" => Usa-se para iniciar a variável como indefinida e ele entrar no While ao menos uma vez.

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

def imprime_carrinho_de_compras(carrinho)
  carrinho.each_with_index do |produto, index|
    puts "Produto #{index + 1}: R$ #{produto}"
  end
end


def troco(x,y)
  x - y
end
 
puts "Para encerrar, aperte ZERO."

carrinho = entrada_produtos()
total = total_compras(carrinho)

imprime_carrinho_de_compras(carrinho)

puts "TOTAL: R$ #{total}."

print "DINHEIRO: "
dinheiro = gets.to_f

troco = troco(dinheiro,total)
print "TROCO: R$ #{troco}."