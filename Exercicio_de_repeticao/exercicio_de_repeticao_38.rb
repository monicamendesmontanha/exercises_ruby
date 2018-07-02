#Um funcionário de uma empresa recebe aumento salarial anualmente: Sabe-se que:
#a. Esse funcionário foi contratado em 1995, com salário inicial de R$ 1.000,00;
#b. Em 1996 recebeu aumento de 1,5% sobre seu salário inicial;
#c. A partir de 1997 (inclusive), os aumentos salariais sempre correspondem ao dobro do percentual do ano anterior.
#Faça um programa que determine o salário atual desse funcionário.
#Após concluir isto, altere o programa permitindo que o usuário digite o salário inicial do funcionário.

CONTRATACAO = 1995
SALARIO_INICIAL = 1000
AUMENTO_ANUAL_ATE_1997 = 0.015

print "Qual ano que vocẽ quer saber o valor do seu salário? "
ano = gets.to_i

aumento_anual = AUMENTO_ANUAL_ATE_1997
salario_atual = SALARIO_INICIAL

contador = CONTRATACAO
while contador <= ano do
  
  if ano >= 1997
    aumento_anual = aumento_anual * 2
  end

  puts "ano: #{contador}, aumento anual: #{aumento_anual}"

  contador = contador + 1
end

salario_atual = salario_atual + (salario_atual * aumento_anual)

puts "R$ #{salario_atual}"