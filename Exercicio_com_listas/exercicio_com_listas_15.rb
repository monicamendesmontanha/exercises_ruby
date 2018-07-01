#Faça um programa que leia um número indeterminado de valores, correspondentes a notas, 
#encerrando a entrada de dados quando for informado um valor igual a -1 (que não deve ser armazenado). 
#Após esta entrada de dados, faça:
#a. Mostre a quantidade de valores que foram lidos;
#b. Exiba todos os valores na ordem em que foram informados, um ao lado do outro;
#c. Exiba todos os valores na ordem inversa à que foram informados, um abaixo do outro;
#d. Calcule e mostre a soma dos valores;
#e. Calcule e mostre a média dos valores;
#f. Calcule e mostre a quantidade de valores acima da média calculada;
#g. Calcule e mostre a quantidade de valores abaixo de sete;
#h. Encerre o programa com uma mensagem;
TOTAL_DE_NOTAS = 5
notas = []

TOTAL_DE_NOTAS.times do
  print "Digite uma nota: "
  notas << gets.to_f
end

puts "--------------------------------"
puts "Quantidade de notas: #{notas.size}"
puts "Notas: #{notas}"
print "Notas + recente até a + antiga: #{notas.reverse}"
puts "Soma de todas as notas: #{notas.sum}"
media = notas.sum/notas.size
puts "Média das notas: #{media}"
acima_da_media = notas.select { |nota| nota > media}
puts "Notas acima da média: #{acima_da_media}"
abaixo_de_sete = notas.select { |nota| nota < 7}
puts "Notas abaixo de sete: #{abaixo_de_sete}"
puts "--------------------------------"
puts "Programa finalizado!"
