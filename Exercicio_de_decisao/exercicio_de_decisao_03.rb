#Faça um Programa que verifique se uma letra digitada é "F" ou "M". Conforme a
#etra escrever: F - Feminino, M - Masculino, Sexo Inválido.

print "Qual o seu sexo? [F] [M] "
sexo = gets.chomp

if sexo == "F" or sexo == "f"
  puts "F - Feminino"
elsif sexo == "M" or sexo == "m"
  puts "M - Masculino"
else
  puts "Sexo inválido!"
end