#Faça um Programa que leia três números e mostre-os em ordem decrescente. 

require_relative "./calcula_maior_numero"
require_relative "./calcula_menor_numero"

def calcula_meio_entre(maior, menor, primeiro_numero, segundo_numero, terceiro_numero)
  if (primeiro_numero != maior && primeiro_numero != menor)
    primeiro_numero
  elsif (segundo_numero != maior && segundo_numero != menor)
    segundo_numero
  else
    terceiro_numero
  end
end

print "Digite um número: "
primeiro_numero = gets.to_i

print "Digite um segundo número: "
segundo_numero = gets.to_i

print "Digite um terceiro número: "
terceiro_numero = gets.to_i

menor = calcula_menor_numero_entre(primeiro_numero,segundo_numero,terceiro_numero)
maior = calcula_maior_numero_entre(primeiro_numero,segundo_numero,terceiro_numero)
meio = calcula_meio_entre(maior, menor, primeiro_numero, segundo_numero, terceiro_numero)

puts "A lista em ordem descrescente é: #{maior}, #{meio} e #{menor}."
