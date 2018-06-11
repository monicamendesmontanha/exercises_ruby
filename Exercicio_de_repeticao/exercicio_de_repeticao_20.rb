#Altere o programa de cálculo do fatorial, permitindo ao usuário calcular o fatorial
#várias vezes e limitando o fatorial a números inteiros positivos e menores que 16.

def contador_valido()
  contador = 0
  while contador <= 0 or contador > 16 do
    print "Digite um numero que você queria saber o fatorial: "
    contador = gets.to_i
  end

  return contador
end


contador = contador_valido()
fatorial = contador

while contador > 1 do
  fatorial = fatorial * (contador - 1)
  contador = contador - 1
end

puts fatorial
