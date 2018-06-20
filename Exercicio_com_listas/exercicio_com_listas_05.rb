#Faça um Programa que leia 20 números inteiros e armazene-os num vetor.
#Armazene os números pares no vetor PAR e os números IMPARES no vetor impar. 
#Imprima os três vetores.

array = []
array_par = []
array_impar = []

contador = 0
while contador < 10 do
  print "Digite um numero: "
  numero = gets.to_i
  array << numero

  if numero % 2 == 0
    array_par << numero
  else
    array_impar << numero
  end

  contador = contador + 1
end

puts "Array: #{array}"
puts "Pares: #{array_par}"
puts "Ímpares: #{array_impar}"