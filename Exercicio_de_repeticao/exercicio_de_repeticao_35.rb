#Encontrar números primos é uma tarefa difícil. Faça um programa que gera uma
#lista dos números primos existentes entre 1 e um número inteiro informado pelo usuário.

print "Quer contar até que número? "
limite = gets.to_i

contador = 0
while contador < limite
  contador = contador + 1
  if contador %2 != 0
    puts contador
  end
end