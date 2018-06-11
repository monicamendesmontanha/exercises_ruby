#Faça um programa que receba dois números inteiros e gere os números inteiros
#que estão no intervalo compreendido por eles.

print "Digite um número inteiro: "
numero_01 = gets.to_i

print "Digite outro número inteiro: "
numero_02 = gets.to_i

#rag = Range.new(numero_01,numero_02)
rag = (numero_01..numero_02).to_a
p rag


# Como gerar um intervalo entre números? 
# ------------------------- Ranges ------------------------------------

#Ruby ao contrário de algumas linguagens tem ranges (“Gamas”), 
#um range é um intervalo com um valor inicial e um valor final. 
#Para isso temos operadores de Range e a classe Range.

#Podemos criar um Range de duas formas, uma é utilizando a classe Range

#!!! rag = Range.new(1,9)

#A expressão acima cria um Range com os valores de 1 a 9 inclusive, 
#mas é possivél criar Ranges de forma mais simples utilizando (..) e (…)

#!!! rag = (1..9)

#Esta expressão faz exactamente o mesmo que a anterior, basta utilizar 
#parênteses e (..) para ter um Range de 1 a 9, caso quisesse-mos nãuo incluir 
#o 9 no nosso Range bastaria trocar o (..) por (…), ou seja com (..) é incluido 
#o ultimo valor e com (…) o ultimo valor é excluído.

#!!! O método === determina se um valor está contido nos valores do Range para 
#  isso basta por exemplo
#(1..25) === 14
#=> true

#(1..25) === 26
#=> false