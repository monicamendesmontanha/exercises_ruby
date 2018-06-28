#Faça um programa que leia uma quantidade indeterminada de números positivos e
#conte quantos deles estão nos seguintes intervalos: [0-25], [26-50], [51-75] e [76-100]. 
#A entrada de dados deverá terminar quando for lido um número negativo.

numeros = []

10.times do
  print "Digite um número de 0 a 100: "
  numeros << gets.to_i
end

de_0_a_25 = numeros.select { |n| n > 0 && n < 25 }
puts "Intervalo de 0 a 25: #{de_0_a_25.size}"

de_26_a_50 = numeros.select { |n| n > 26 && n < 50 }
puts "Intervalo de 26 a 50: #{de_26_a_50.size}"

de_51_a_75 = numeros.select { |n| n > 51 && n < 75 }
puts "Intervalo de 51 a 75: #{de_51_a_75.size}"

de_76_a_100 = numeros.select { |n| n > 76 && n < 100 }
puts "Intervalo de 76 a 100: #{de_76_a_100.size}"


