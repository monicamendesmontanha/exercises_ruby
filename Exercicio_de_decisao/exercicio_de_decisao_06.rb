#Faça um Programa que leia três números e mostre o maior deles.

print "Digite um número: "
primeiro_numero = gets.to_i

print "Digite um segundo numero: "
segundo_numero = gets.to_i

print "Digite um terceiro numero: "
terceiro_numero = gets.to_i

if primeiro_numero > segundo_numero && primeiro_numero > terceiro_numero
  maior_numero = primeiro_numero
elsif segundo_numero > primeiro_numero && segundo_numero > terceiro_numero
  maior_numero = segundo_numero
else
  maior_numero = terceiro_numero
end

puts  "O maior número é #{maior_numero}."
