#Faça um Programa que peça um valor e mostre na tela se o valor é positivo ou negativo. 

print "Digite um valor: "
valor = gets.to_i

if valor >= 0
  puts "Esse valor digitado é um número positivo: #{valor}."
else 
  puts "Esse valor digitado é um número negativo: #{valor}."
end