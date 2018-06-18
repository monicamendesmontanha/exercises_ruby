#Faça um programa que leia dez conjuntos de dois valores, o primeiro
#representando o número do aluno e o segundo representando a sua altura em
#centímetros. Encontre o aluno mais alto e o mais baixo. Mostre o número do
#aluno mais alto e o número do aluno mais baixo, junto com suas alturas.

conjunto_codigo = []
conjunto_altura = []


alunos = 0

while alunos < 3 do

  print "Código do aluno: "
  codigo = gets.split(',')
  conjunto_codigo << codigo

  print "Altura do aluno: "
  altura = gets.split(',')
  conjunto_altura << altura

  alunos = alunos + 1
end

puts "#{conjunto_codigo}"
puts "#{conjunto_altura}"