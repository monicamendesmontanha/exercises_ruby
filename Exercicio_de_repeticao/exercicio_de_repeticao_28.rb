#Faça um programa que calcule o valor total investido por um colecionador em sua
#coleção de CDs e o valor médio gasto em cada um deles. O usuário deverá informar 
#a quantidade de CDs e o valor para em cada um.

#01) qual a quantidade de cds que ele tem?
#02) qual foi o valor pago em cada um?
#03) qual foi o valor pago em média por toda a coleção que ele tem?

def valor_do_cd(quantidade)
  valores = []  
  cont = 0

  while cont < quantidade
    print "Qual valor pago no cd? "
    valor = gets.to_f
    valores << valor
    cont = cont + 1
  end
  return valores
end

def soma(x)
  total = 0
  x.each do |n|
    total = total + n
  end

  return total
end

def media(valores_pagos)
  resultado_soma = soma(valores_pagos)
  total = valores_pagos.size.to_f
  media = resultado_soma/total

  return media
end

print "Qual a quantidade de cds que você possui? "
quantidade = gets.to_i

valores_pagos = valor_do_cd(quantidade)
resultado = media(valores_pagos)
print "O acervo do colecionador custou em media: #{resultado.round(2)} reais."
