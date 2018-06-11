#  Faça um Programa que peça um número inteiro e determine se ele é par ou impar. 
#Dica: utilize o operador módulo (resto da divisão). 

print "Digite um número: "
numero = gets.to_i

if numero % 2 == 0
  puts "O número #{numero} é par"
else
  puts "O número #{numero} é ímpar"
end