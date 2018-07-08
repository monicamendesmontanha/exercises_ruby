#Utilize uma lista para resolver o problema a seguir. Uma empresa paga seus
#vendedores com base em comissões. O vendedor recebe $200 por semana mais 9
#por cento de suas vendas brutas daquela semana. Por exemplo, um vendedor que
#teve vendas brutas de $3000 em uma semana recebe $200 mais 9 por cento de
#$3000, ou seja, um total de $470. Escreva um programa (usando um array de
#contadores) que determine quantos vendedores receberam salários nos seguintes
#intervalos de valores:

#a. $200 - $299
#b. $300 - $399
#c. $400 - $499
#d. $500 - $599
#e. $600 - $699
#f. $700 - $799
#. $800 - $899
#h.$900 - $999
#i. $1000 em diante

#Desafio: Crie uma fórmula para chegar na posição da lista a partir do
#salário, sem fazer vários ''ifs'' aninhados.

def salario_comissionado_do_vendedor (vendas_brutas)
  200 + 0.09 * vendas_brutas
end

#vendas = 3000
QUANTIDADE_DE_VENDEDORES = 2
todas_as_vendas = []

QUANTIDADE_DE_VENDEDORES.times do |n|
  puts "---------------"
  puts "Vendedor #{n+1}"
  print "Valor de vendas: "
  todas_as_vendas << gets.to_i
end

todas_as_vendas.each do |vendas|
  total_salario = salario_comissionado_do_vendedor(vendas)
  puts "Salário:  #{total_salario}"
end