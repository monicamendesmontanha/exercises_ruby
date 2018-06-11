#Faça um Programa que peça um número e informe se o número é inteiro ou decimal. 
#Dica: utilize uma função de arredondamento. 

print "Digite um número: "
numero = gets.to_f

#numero_em_string = numero.round(2).to_s

if numero
  puts "Esse número #{numero.to_i} é inteiro."
else 
  puts "Esse número #{numero.round(2).to_s} é decimal."
end