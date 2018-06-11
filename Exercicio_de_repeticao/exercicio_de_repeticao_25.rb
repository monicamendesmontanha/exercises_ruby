#Faça um programa que peça para n pessoas a sua idade, ao final o programa
#devera verificar se a média de idade da turma varia entre 0 e 25,26 e 60 e maior
#que 60; e então, dizer se a turma é jovem, adulta ou idosa, conforme a média calculada.

#1) pedir a idade de N pessoas
#2) pegas as idades e calcular a média
#3) de acordo com média dizer se é jovem, adulta ou idosa.


def colhendo_idade(das_pessoas)
  array = []
  contador = 0

  while contador < das_pessoas do
    print "Qual é a idade? "
    idade = gets.to_i
    array << idade
    contador = contador + 1
  end
  
  return array
end


def soma(x)
  total = 0
  x.each do |n|
    total = total + n
  end

  return total

end


def media(n)
  total_n = soma(n)
  qntidade_n = n.size
  media = total_n/qntidade_n

  return media
end

def categorizando_turma(valor)

  if valor < 20
   categoria = "jovem"
  elsif valor >= 21 && valor < 60
    categoria = "adulta"
  else valor >= 61
    categoria = "idosa"
  end

  return categoria
end

print "Quantas pessoas tem a turma? "
pessoas = gets.to_i

todas_idades = colhendo_idade(pessoas)
media_da_turma = media(todas_idades)
categoria = categorizando_turma(media_da_turma)

p "A media da turma eh: #{media_da_turma}, e ela se enquadra como uma turma #{categoria}."