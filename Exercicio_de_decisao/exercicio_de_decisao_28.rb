#Um posto está vendendo combustíveis com a seguinte tabela de descontos:   

#a. Álcool:    
#    b. até 20 litros, desconto de 3% por litro    
#    c. acima de 20 litros, desconto de 5% por litro   
    
#d. Gasolina:    
#    e. até 20 litros, desconto de 4% por litro   
#    f. acima de 20 litros, desconto de 6% por litro 
    
#Escreva um algoritmo que leia o número de litros vendidos, 
#o tipo de combustível (codificado da seguinte forma: A-álcool, G-gasolina), 
#calcule e imprima o valor a ser pago pelo cliente sabendo-se que o preço do litro 
#  da gasolina é R$ 2,50 o preço do litro do álcool é R$ 1,90.  

PRECO_LITRO_ALCOOL = 1.90 
PRECO_LITRO_GASOLINA = 2.50

print "Qual o tipo de combustível? [A] [G] "
tipo_combustivel = gets.chomp

print "Quantos litros serão vendidos? "
litros_vendidos = gets.to_f

desconto_litro_alcool_ate_20_litros = PRECO_LITRO_ALCOOL * 0.03
desconto_litro_alcool_maior_que = PRECO_LITRO_ALCOOL * 0.05

desconto_litro_gasolina_ate_20_litros = PRECO_LITRO_GASOLINA * 0.04
desconto_litro_gasolina_maior_que = PRECO_LITRO_GASOLINA * 0.06

valor_sem_desconto_alcool = PRECO_LITRO_ALCOOL * litros_vendidos
valor_sem_desconto_gasolina = PRECO_LITRO_GASOLINA * litros_vendidos

valor_a_pagar_alcool_ate_20 = valor_sem_desconto_alcool - desconto_litro_alcool_ate_20_litros
valor_a_pagar_alcool_maior_que = valor_sem_desconto_alcool - desconto_litro_alcool_maior_que

valor_a_pagar_gasolina_ate_20 = valor_sem_desconto_gasolina - desconto_litro_alcool_ate_20_litros
valor_a_pagar_gasolina_maior_que = valor_sem_desconto_gasolina - desconto_litro_gasolina_maior_que


if tipo_combustivel == "A"
  
  if litros_vendidos <= 20
    valor_a_pagar_alcool_ate_20
  else litros_vendidos > 20
    valor_a_pagar_alcool_maior_que
  end

else tipo_combustivel == "G"

  if litros_vendidos <= 20
    valor_a_pagar_gasolina_ate_20
  else litros_vendidos > 20
    valor_a_pagar_gasolina_maior_que
  end

end

p valor_a_pagar_alcool_ate_20 or valor_a_pagar_alcool_maior_que or valor_a_pagar_gasolina_ate_20 or valor_a_pagar_gasolina_maior_que




