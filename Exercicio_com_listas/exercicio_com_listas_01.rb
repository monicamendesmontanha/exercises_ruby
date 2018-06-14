#Faça um Programa que leia um vetor de 5 números inteiros e mostre-os.

array = []
vetor = 5
contador = 0

while contador < vetor do
  print "Digite um numero: "
  numero = gets.to_i
  array << numero
  contador = contador + 1
end

print array
