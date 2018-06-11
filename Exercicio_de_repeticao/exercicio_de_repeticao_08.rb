#Faça um programa que leia 5 números e informe a soma e a média dos números.

array = []

contador = 0
while contador < 5 do
  p "Digite um numero: "
  numero = gets.to_i
  array << numero

  contador = contador + 1
end

print "O conjunto de números digitados foram: #{array}."


# PODERIA FAZER UM "FOR" PARA SOMAR OS NUMEROS CONTIDOS NO ARRAY?

#for n in array
# [ERRADO, "manual"] soma = n[0] + n[1] + n[2] + n[3] + n[4]
# soma = soma + n
#  p soma
#end 

total = 0
array.each do |n|
  total += n
#  total = total + n => total += n 
#  total = total + 1 =>  total++
end

puts "A soma total do array é de: #{total}."

media = total/5
puts "A média dos números digitados é #{media}."

#somar um array
#values = [1, 2, 3, 5, 8]

#total = 0
#values.each do |value|
#  total += value
#end

#puts total # => 19