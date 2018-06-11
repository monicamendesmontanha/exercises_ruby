#Numa eleição existem três candidatos. Faça um programa que peça o número total de eleitores.
#Peça para cada eleitor votar e ao final mostrar o número de votos de cada candidato.

#01) existem 3 candidatos
#02) pedir numero de eleitores
#03) cada eleitor votar ----- COMO FAZER ISSO?
#04) mostrara o numero de votos de cada candidato

def numero_eleitores
  print "Digite numero de eleitores: "
  numero = gets.to_f
end

def conjunto_de_votos(eleitores)
  array = []
  contador = 0

  while contador < eleitoresprint "Digite qual é o seu voto? [1] [2] [3]"
    voto = gets.to_i
    
    array << voto
    contador = contador + 1
  end
  return array
end

def define_vencedor(candidato_1, candidato_2, candidato_3)

  if candidato_1 > candidato_2 && candidato_1 > candidato_3
    resposta = " O candidato numero 1 ganhou!"
  elsif candidato_2 > candidato_1 && candidato_2 > candidato_3
    resposta = " O candidato numero 2 ganhou!"
  else candidato_3 > candidato_1 && candidato_3 > candidato_2
    resposta = " O candidato numero 3 ganhou!"
  end

  return resposta

end

eleitores = numero_eleitores
array_de_votos = conjunto_de_votos(eleitores)

total_candidato_1 = array_de_votos.select { |x| x == 1 }
candidato_1 = total_candidato_1.size
total_candidato_2 = array_de_votos.select { |x| x == 2 }
candidato_2 = total_candidato_2.size
total_candidato_3 = array_de_votos.select { |x| x == 3 }
candidato_3 = total_candidato_3.size

puts "O numero total de eleitores foi de: #{eleitores}."
puts "Candidato 1: #{ candidato_1 } votos. "
puts "Candidato 2: #{ candidato_2 } votos. "
puts "Candidato 3: #{ candidato_3 } votos. "

resposta_final = define_vencedor(candidato_1, candidato_2, candidato_3)
puts resposta_final
