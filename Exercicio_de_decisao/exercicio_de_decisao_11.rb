#2.11 As Organizações Tabajara resolveram dar um aumento de salário aos seus colaboradores 
#e lhe contraram para desenvolver o programa que calculará os reajustes. 
 
#2.12   Faça um programa que recebe o salário de um colaborador e o reajuste segundo 
#o seguinte critério, baseado no salário atual: 
#   * salários até R$ 280,00 (incluindo)  : aumento de 20%   
#   * salários entre R$ 280,00 e R$ 700,00 : aumento de 15%   
#   * salários entre R$ 700,00 e R$ 1500,00 : aumento de 10%   
#   * salários de R$ 1500,00 em diante   : aumento de 5% 
#   
#   Após o aumento ser realizado, informe na tela: 
#   a. o salário antes do reajuste;   
#   b. o percentual de aumento aplicado;   
#   c. o valor do aumento;   
#   d. o novo salário, após o aumento. 
 
def calcula_percentual(salario_atual)
  if salario_atual <= 280
   0.20
  elsif salario_atual > 280 && salario_atual <= 700
   0.15
  elsif salario_atual > 700 && salario_atual <= 1500
   0.10
  else salario_atual > 1500
   0.05
  end
end

def calcula_salario_novo(salario_atual, percentual)
  salario_atual + (salario_atual * percentual)
end

def calcula_aumento(salario_atual, salario_novo) 
  salario_novo - salario_atual
end

print "Qual é o seu salário? "
salario_atual = gets.to_f

puts "O seu salário atual é de: R$ #{salario_atual}."

percentual = calcula_percentual(salario_atual)
salario_novo = calcula_salario_novo(salario_atual, percentual)
aumento = calcula_aumento(salario_atual, salario_novo)

puts "O percentual de aumento no seu salário é de #{percentual}."
puts "O valor do seu aumento foi de R$ #{aumento}."
puts "O seu salário a partir de agora será de R$ #{salario_novo}."
