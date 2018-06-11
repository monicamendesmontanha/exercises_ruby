#Uma fruteira está vendendo frutas com a seguinte tabela de preços: 
#                     Até 5 Kg           Acima de 5 Kg 
# Morango         R$ 2,50 por Kg          R$ 2,20 por Kg 
# Maçã            R$ 1,80 por Kg          R$ 1,50 por Kg    

#Se o cliente comprar mais de 8 Kg em frutas ou o valor total da compra ultrapassar 
#$ 25,00, receberá ainda um desconto de 10% sobre este total. Escreva um algoritmo 
#para ler a quantidade (em Kg) de morangos e a quantidade (em Kg) de maças adquiridas 
#e escreva o valor a ser pago pelo cliente.  
 
#01. ler quantidade em kilos de morangos e maças.
#02. escrever o valor pago pelo cliente.

#obs01. if frutas > 8kg or frutas > 25 reais: aplicar desconto de 10% sobre o total.

print "Quantos kilos de morango? "
peso_morango = gets.to_f

print "Quantos kilos de maca? "
peso_maca = gets.to_i


def preco_por_kilo
  
    if peso_morango =< 5
      peso_morango * 2.50
    else peso_morango > 5
      peso_morango * 2.20
    end
  
    if peso_maca =< 5
      peso_maca * 1.80
    else peso_maca > 5
      peso_maca * 1.50
    end

    return valor_morango + " e " valor_maca

end