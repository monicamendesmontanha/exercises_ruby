#Faça um Programa que leia um vetor de 10 caracteres, e diga quantas consoantes
#foram lidas. Imprima as consoantes.

vetor = []

print "Digite um nome com 10 letras: "
letras = gets.chomp
#letras = gets.split('')

vetor << letras
puts vetor

vogais = []
consoantes = []

#TENTATIVA COM FOR
#for n in vetor
#  if n == "a" || n == "e" || n == "i" || n == "o" || n == "u"
#    vogais << n
#  else n != "a" && n != "e" && n != "i" && n != "o" && n != "u"
#    consoantes << n
#  end
#end

# TENTATIVA COM EACH
#vetor.each do |n|
#  consoantes << n == "a" || n == "e" || n == "i" || n == "o" || n == "u"
#end

# TENTATIVA COM SELECT
#consoantes << vetor.select { |n| n == "a" || n == "e" || n == "i" || n == "o" || n == "u"}

#puts vogais
puts consoantes
puts "O vetor é composto por #{consoantes.size} consoantes."