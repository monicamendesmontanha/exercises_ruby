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
#g. $800 - $899
#h. $900 - $999
#i. $1000 em diante

#Desafio: Crie uma fórmula para chegar na posição da lista a partir do
#salário, sem fazer vários ''ifs'' aninhados.

FAIXA_SALARIAL = {
  a: {
    min: 200,
    max: 299
  },
  b: {
    min: 300,
    max: 399
  },
  c: {
    min: 400,
    max: 499
  },
  d: {
    min: 500,
    max: 599
  },
  e: {
    min: 600,
    max: 699
  },
  f: {
    min: 700,
    max: 799
  },
  g: {
    min: 800,
    max: 899
  },
  h: {
    min: 900,
    max: 999
  },
  i: {
    min: 1000,
    max: 9999
  }
}

# def adiciona_faixa_salarial(dicionario, id, valor_min, valor_max)
#   dicionario[id] = {
#     min: valor_min,
#     max: valor_max
#   }

#   dicionario
# end

# adiciona_faixa_salarial(FAIXA_SALARIAL, :g, 800, 899)
# adiciona_faixa_salarial(FAIXA_SALARIAL, :h, 900, 999)
# adiciona_faixa_salarial(FAIXA_SALARIAL, :i, 1000, 9999)

QUANTIDADE_DE_VENDEDORES = 10

def salario_comissionado_do_vendedor (vendas_brutas)
  200 + 0.09 * vendas_brutas
end

def obter_vendas(quantidade_de_vendedores)
  vendas = []

  quantidade_de_vendedores.times do |n|
    puts "---------------"
    puts "Vendedor #{n + 1}"
    print "Valor de vendas: "
    vendas << gets.to_i
  end

  vendas
end

def obter_todos_os_salarios(vendas)
  todos_os_salarios = []
  vendas.each do |venda|
    todos_os_salarios << salario_comissionado_do_vendedor(venda)
  end

  todos_os_salarios
end

def imprimir_todos_os_salarios_por_venda(todos_os_salarios)
  todos_os_salarios.each do |salario|
    puts "Salário:  #{salario}"
  end
end

def determina_faixa_salarial(todos_os_salarios, categoria)
  todos_os_salarios.select do |salario|
    salario >= FAIXA_SALARIAL[categoria][:min] && salario <= FAIXA_SALARIAL[categoria][:max]
  end
end

todos_os_salarios = obter_todos_os_salarios(obter_vendas(QUANTIDADE_DE_VENDEDORES))

imprimir_todos_os_salarios_por_venda(todos_os_salarios)

FAIXA_SALARIAL.each do |categoria, _|
  faixa_salarial = determina_faixa_salarial(todos_os_salarios, categoria)
  puts "#{categoria} –> #{faixa_salarial.size}"
end