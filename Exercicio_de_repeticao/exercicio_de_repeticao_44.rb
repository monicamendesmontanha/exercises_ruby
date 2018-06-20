#Em uma eleição presidencial existem quatro candidatos. Os votos são informados
#por meio de código. Os códigos utilizados são: 1 , 2, 3, 4 - Votos para os 
#respectivos candidatos (você deve montar a tabela ex: 1 - Jose/ 2- João/etc)
#5 - Voto Nulo
#6 - Voto em Branco
#Faça um programa que calcule e mostre:
#a. O total de votos para cada candidato;
#b. O total de votos nulos;
#c. O total de votos em branco;
#d. A  percentagem de votos nulos sobre o total de votos;
#e. A percentagem de votos em branco sobre o total de votos.
#Para finalizar o conjunto de votos tem-se o valor zero.
puts "----------------------------"
puts "Para votar em José, digite 1"
puts "Para votar em João, digite 2"
puts "Para votar em Jeremias, digite 3"
puts "Para votar em Júlio, digite 4"
puts "Para votar NULO, digite 5"
puts "Para votar EM BRANCO, digite 6"
puts "-----------------------------"

# SUPOR QUE 10 PESSOAS VÃO VOTAR.
# NÃO TENHO UM NUMERO DETERMINADO DE PESSOAS PARA VOTAR, SERIA MELHOR USAR O FOR NESSE CASO? COMO SERIA ?
contador = 0
conjunto_de_votos = []

while contador < 10 do
  print "Digite o seu voto: "
  voto = gets.chomp
  conjunto_de_votos << voto
  contador = contador + 1
end

puts "#{conjunto_de_votos}"


candidato_01 = []
candidato_02 = []

for i in conjunto_de_votos
# TENTEI:  conjunto_de_votos.each do |i|
  if i == "1"
    candidato_01 << i
    puts "JOSÉ; Total de votos: #{candidato_01}."
  else i == "2"
    candidato_02 << i
    puts "JOÃO; Total de votos: #{candidato_02}."
  end
end


#quando terminar, fazer a validação de apenas digitar numero de 1 a 6.