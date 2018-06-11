#Altere o programa anterior para mostrar no final a soma dos números.

print "Digite um número inteiro: "
numero_01 = gets.to_i

print "Digite outro número inteiro: "
numero_02 = gets.to_i

#rag = Range.new(numero_01,numero_02)
rag = (numero_01..numero_02).to_a
p rag

total = 0
rag.each do |n|
  total += n
end

p "A soma total do array eh de: #{total}."