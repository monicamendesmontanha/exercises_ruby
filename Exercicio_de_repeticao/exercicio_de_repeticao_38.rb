#Um funcionário de uma empresa recebe aumento salarial anualmente: Sabe-se que:
#a. Esse funcionário foi contratado em 1995, com salário inicial de R$ 1.000,00;
#b. Em 1996 recebeu aumento de 1,5% sobre seu salário inicial;
#c. A partir de 1997 (inclusive), os aumentos salariais sempre correspondem ao dobro do percentual do ano anterior.
#Faça um programa que determine o salário atual desse funcionário.
#Após concluir isto, altere o programa permitindo que o usuário digite o salário inicial do funcionário.

CONTRATACAO = 1995
SALARIO_INICIAL = 1.000

print "Qual ano que vocẽ quer saber o valor do seu salário? "
ano = gets.to_f

aumento_anual = 1.5
while ano > 1997 do
  novo_aumento_anual = aumento_anual * 2
  aumento_anual << novo_aumento_anual
  #return aumento_anual
  salario_atual = aumento_anual * SALARIO_INICIAL
  ano = ano + 1
  return salario_atual
end


puts "R$ #{salario_atual}"