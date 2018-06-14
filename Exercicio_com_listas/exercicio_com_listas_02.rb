#Faça um Programa que leia um vetor de 10 números reais e mostre-os na ordem inversa.

ordem_normal = []

contador = 0
while contador < 10 do
  print "Digite um numero: "
  numero = gets.to_i
  ordem_normal << numero
  contador = contador + 1
end

print ordem_normal
#print ordem_normal.reverse
ordem_normal.reverse_each {|x| print x, ' '}