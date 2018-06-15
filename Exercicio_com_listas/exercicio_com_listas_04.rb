#Faça um Programa que leia um vetor de 10 caracteres, e diga quantas consoantes
#foram lidas. Imprima as consoantes.

letras = []

print "Digite um nome com 10 letras: "
letras = gets.split('')

consoantes = []

#1) FOR
for n in letras
  if n != "a" && n != "e" && n != "i" && n != "o" && n != "u"
    consoantes << n
  end
end

#2) EACH
#letras.each do |n|
#  if n != "a" && n != "e" && n != "i" && n != "o" && n != "u"
#    consoantes << n
#  end
#end

#3) SELECT
#consoantes = letras.select { |n| n != "a" && n != "e" && n != "i" && n != "o" && n != "u"}

puts consoantes
puts "Quantidade de consoantes no nome: #{consoantes.size}."