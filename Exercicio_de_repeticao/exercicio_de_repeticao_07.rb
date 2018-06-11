#Faça um programa que leia 5 números e informe o maior número.

array = []

contador = 0
while contador < 5 do
  puts "Digite um número: "
  numero = gets.to_i
  array << numero

  contador = contador + 1
end

puts "O maior número entre os digitados foi #{array.max}."