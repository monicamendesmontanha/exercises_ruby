#Faça um programa que calcule o fatorial de um número inteiro fornecido pelo
#usuário. Ex.: 5!=5.4.3.2.1=120. A saída deve ser conforme o exemplo abaixo:
#Fatorial de: 5
#5! = 5 . 4 . 3 . 2 . 1 = 120

print "Qual fatorial você quer calular? "
contador = gets.to_i

#contador = 5
fator = contador
fatorial = contador
array = []

while contador > 1 do
  fatorial = fatorial * (contador - 1)
  contador = contador - 1
  array << contador
end

print "#{fator}! X #{array} = #{fatorial}"
#puts fatorial