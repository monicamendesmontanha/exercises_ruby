#Faça um programa que peça dois números, base e expoente, calcule e mostre o
#primeiro número elevado ao segundo número. Não utilize a função de potência da linguagem.

print "Digite um número que será a base: "
base = gets.to_i

print "Digite um número que será o expoente da base: "
expoente = gets.to_i

#O QUE É FUNÇÃO DE POTêNCIA DE LINGUAGEM?

resultado = base**expoente
puts "A base, #{base}, elevando ao expoente, #{expoente}, é igual a: #{resultado}."