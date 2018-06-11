#Faça um programa que calcule as raízes de uma equação do segundo grau, 
#na forma ax2 + bx + c. O programa deverá pedir os valores de a, b e c 
#e fazer as consistências, informando ao usuário nas seguintes situações: 
#  a. Se o usuário informar o valor de A igual a zero, a equação não é do 
#    segundo grau e o programa não deve fazer pedir os demais valores, sendo encerrado;   
#  b. Se o delta calculado for negativo, a equação não possui raizes reais. 
#  Informe ao usuário e encerre o programa;   
#  c. Se o delta calculado for igual a zero a equação possui apenas uma raiz real; 
#  informe-a ao usuário;   
#  d. Se o delta for positivo, a equação possui duas raiz reais; informe-as ao usuário;

def verifica_se_eh_equacao(a, b, c)
  delta = calcula_delta(a, b, c)

  if a == 0
    return "Não é equação de segundo grau."
  elsif delta < 0
    return "A equação não possui raízes."
  elsif delta >= 0
    raiz_delta = Math.sqrt(delta)
    raiz_positiva = calcula_valor_de_x(a, b, raiz_delta)
    raiz_negativa = calcula_valor_de_x(a, b, - raiz_delta)
    
    if delta == 0
      return "A equação possui apenas uma raíz real: #{raiz_positiva} e #{raiz_negativa}."
    else
      return "A equação possui duas raízes reais: #{raiz_positiva} e #{raiz_negativa}."
    end
  end 
end

def calcula_delta(a,b,c)
  (b**2) - (4*a*c)
end

def calcula_valor_de_x(a, b, raiz_delta)
  (-b + raiz_delta) / (2*a)
end

print "Digite o valor de A: "
a = gets.to_i

print "Digite o valor de B: "
b = gets.to_i

print "Digite o valor de C: "
c = gets.to_i

resposta = verifica_se_eh_equacao(a, b, c)

puts resposta