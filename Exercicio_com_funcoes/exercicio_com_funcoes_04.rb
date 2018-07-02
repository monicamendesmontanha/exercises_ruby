#Faça um programa, com uma função que necessite de um argumento. A função
#retorna o valor de caractere ‘P’, se seu argumento for positivo, e ‘N’, se seu
#argumento for zero ou negativo.


def retorna_valor(numero)
  if numero >= 0
    "positivo"
  else numero < 0
    "negativo"
  end
end

resultado = retorna_valor(-8)
puts resultado