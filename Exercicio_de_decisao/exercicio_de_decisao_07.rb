#Faça um Programa que leia três números e mostre o maior e o menor deles.  

require_relative "./calcula_maior_numero"
require_relative "./calcula_menor_numero"

print "Digite um número: "
primeiro_numero = gets.to_i

print "Digite um segundo numero: "
segundo_numero = gets.to_i

print "Digite um terceiro numero: "
terceiro_numero = gets.to_i

maior_numero = calcula_maior_numero_entre(primeiro_numero, segundo_numero, terceiro_numero)
menor_numero = calcula_menor_numero_entre(primeiro_numero,segundo_numero,terceiro_numero)

puts  "O maior número é #{maior_numero} e o menor número é #{menor_numero}."