#Faça um programa que peça 10 números inteiros, calcule e mostre a quantidade de números 
#pares e a quantidade de números impares.

array = []

contador = 0
while contador < 10 do
  print "Digite um número: "
  numero = gets.to_i
  array << numero
  contador = contador + 1
end

print array

array_par = []
array_impar = []

for n in array
  if n % 2 == 0
    array_par << n
  else
    array_impar << n
  end
end

puts " A quantidade de números pares no array disposto acima é: #{array_par.size}."
puts " A quantidade de números pares no array disposto acima é: #{array_impar.size}."