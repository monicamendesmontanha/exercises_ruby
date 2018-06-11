#Faça um programa que, dado um conjunto de N números, determine o menor valor, 
#o maior valor e a soma dos valores.


array = [27, 94, 54, 78, 32, 25, 190, 86]

total = 0
array.each do |n|
  total += n
#  total = total + n => total += n 
#  total = total + 1 =>  total++
end

puts "A soma total do array é de: #{total}."



contador = array.size
soma = 0

while contador > 0 do
  soma = soma + array[contador - 1]
  contador = contador - 1
end

puts "A soma total do array é de: #{soma}."





array_decrescente = []
maior = 0

array.each_with_index do |n, maior|
  if n > maior
    maior = n

    array_decrescente << n
  end
end

puts "A ordem decrescente do array é: #{array_decrescente}."
puts "A resposta correta é: #{array.sort.reverse }."
puts "O menor número desse array é: #{array_decrescente[array_decrescente.size - 1]}."
#puts "O menor número desse array é: #{array_decrescente.last}."



