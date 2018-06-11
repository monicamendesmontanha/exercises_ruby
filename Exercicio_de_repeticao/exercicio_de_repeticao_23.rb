#Faça um programa que mostre todos os primos entre 1 e N sendo N um número
#inteiro fornecido pelo usuário. O programa deverá mostrar também o número de
#divisões que ele executou para encontrar os números primos. Serão avaliados o
#funcionamento, o estilo e o número de testes (divisões) executados.


numero_fornecido = 5
contador = 1

while contador <= numero_fornecido
  
  if numero_fornecido % 2 == 0
    "Esse número é PAR!"
  else  
    puts "Esse número #{numero_fornecido} é ÍMPAR!"
  end

  contador = contador + 1

end
