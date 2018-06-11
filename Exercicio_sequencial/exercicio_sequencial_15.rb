#Faça um Programa que pergunte quanto você ganha por hora e o número de horas
#trabalhadas no mês. Calcule e mostre o total do seu salário no referido mês,
#sabendo-se que são descontados 11% para o Imposto de Renda, 8% para o INSS e
#5% para o sindicato, faça um programa que nos dê:

# a. salário bruto.
# b. quanto pagou ao INSS.
# c. quanto pagou ao sindicato.
# d. o salário líquido.
# e. calcule os descontos e o salário líquido, conforme a tabela abaixo:

#+ Salário Bruto : R$
#- IR (11%) : R$
#- INSS (8%) : R$
#- Sindicato ( 5%) : R$
#= Salário Liquido : R$

# Obs.: Salário Bruto - Descontos = Salário Líquido.

def calcula_salario_bruto(valor_hora_trabalhada, quantidade_hora_trabalhada)
  valor_hora_trabalhada * quantidade_hora_trabalhada
end

def calcula_imposto_de_renda(salario_bruto)
  0.11 * salario_bruto
end

def calcula_inss(salario_bruto)
  0.08 * salario_bruto
end

def calcula_sindicato(salario_bruto)
  0.05 * salario_bruto
end

def calcula_salario_liquido(salario_bruto, imposto_de_renda, inss, sindicato)
  salario_bruto - imposto_de_renda - inss - sindicato
end

def calcula_valores(valor_hora_trabalhada, quantidade_hora_trabalhada)
  salario_bruto = calcula_salario_bruto(valor_hora_trabalhada, quantidade_hora_trabalhada)
  imposto_de_renda = calcula_imposto_de_renda(salario_bruto)
  inss = calcula_inss(salario_bruto)
  sindicato = calcula_sindicato(salario_bruto)
  salario_liquido = calcula_salario_liquido(salario_bruto, imposto_de_renda, inss, sindicato)

  puts "O valor do Salário Bruto é de R$ #{salario_bruto.round(2)}."
  puts "O valor do IR é de R$ #{imposto_de_renda.round(2)}."
  puts "O valor do INSS é de R$ #{inss.round(2)}."
  puts "O valor do Sindicato é de R$ #{sindicato.round(2)}."
  puts "O valor do Salário Líquido é de R$ #{salario_liquido.round(2)}."
end

print "[Moniquinha] Qual o valor da hora trabalhada? "
valor_hora_trabalhada_monica = gets.to_f

print "[Moniquinha] Qual a quantidade de horas trabalhadas? "
quantidade_hora_trabalhada_monica = gets.to_f

calcula_valores(valor_hora_trabalhada_monica, quantidade_hora_trabalhada_monica)

print "[Alabe] Qual o valor da hora trabalhada? "
valor_hora_trabalhada_alabe = gets.to_f

print "[Alabe] Qual a quantidade de horas trabalhadas? "
quantidade_hora_trabalhada_alabe = gets.to_f

calcula_valores(valor_hora_trabalhada_alabe, quantidade_hora_trabalhada_alabe)