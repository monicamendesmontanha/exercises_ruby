#Os números primos possuem várias aplicações dentro da Computação, por exemplo na 
#Criptografia. Um número primo é aquele que é divisível apenas por um e por ele mesmo. 
#Faça um programa que peça um número inteiro e determine se ele é ou não um número primo.

print "Digite um número: "
numero = gets.to_i

if numero % 2 != 0 
  puts "O número #{numero} é primo!"
end