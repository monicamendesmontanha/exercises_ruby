#Faça um programa para o cálculo de uma folha de pagamento, sabendo que os descontos são do Imposto de Renda, 
#   que depende do salário bruto (conforme tabela abaixo) e 3% para o Sindicato e que o FGTS corresponde a 11% do 
#   Salário Bruto, mas não é descontado (é a empresa que deposita). O Salário Líquido corresponde ao Salário 
#   Bruto menos os descontos. O programa deverá pedir ao usuário o valor da sua hora e a quantidade de horas 
#  trabalhadas no mês.  

#  Desconto do IR:   
#    * Salário Bruto até 900  (inclusive)   - isento       
#    * Salário Bruto até 1500 (inclusive) - desconto de 5%   
#    * Salário Bruto até 2500 (inclusive) - desconto de 10%   
#    * Salário Bruto acima de 2500      - desconto de 20%  

#  Imprima na tela as informações, dispostas conforme o exemplo abaixo. 
#  No exemplo o valor da hora é 5 e a quantidade de hora é 220.     
#  Salário Bruto: (5 * 220)  : R$ 1100,00       
#  (-) IR (5%)   : R$   55,00    
#  (-) INSS ( 10%)          : R$  110,00  
#  FGTS (11%)   : R$  121,00 
#  Total de descontos  : R$  165,00  
#  Salário Liquido                 : R$  935,00    

valor_da_hora = 5
quantidade_de_horas = 220

def calcula_salario_bruto(valor_da_hora, quantidade_de_horas)
  valor_da_hora * quantidade_de_horas
end

def taxa_desconto_salario(salario_bruto)
  if salario_bruto <= 900
    0
  elsif salario_bruto > 900 && salario_bruto <= 1500
    0.05
  elsif salario_bruto > 1500 && salario_bruto <= 2500
    0.10
  else salario_bruto > 2500
    0.20
  end
end

def calcula_ir(salario_bruto)
  taxa_desconto_salario(salario_bruto) * salario_bruto
end

def calcula_inss(salario_bruto)
  0.10 * salario_bruto
end

def calcula_fgts(salario_bruto)
  0.11 * salario_bruto
end

salario_bruto = calcula_salario_bruto(valor_da_hora, quantidade_de_horas)
valor_ir = calcula_ir(salario_bruto)
valor_inss = calcula_inss(salario_bruto)
valor_fgts = calcula_fgts(salario_bruto)

valor_total_descontos = valor_ir + valor_inss  
salario_liquido = salario_bruto - valor_total_descontos

puts "O salário é de R$ #{salario_bruto}."
puts "O valor do IR é de R$ #{valor_ir}"
puts "O valor do INSS é de R$ #{valor_inss}."
puts "O valor do FGTS é de R$ #{valor_fgts}."
puts "O valor total dos descontos é de #{valor_total_descontos}."
puts "O salário líquido é de R$#{salario_liquido}."
