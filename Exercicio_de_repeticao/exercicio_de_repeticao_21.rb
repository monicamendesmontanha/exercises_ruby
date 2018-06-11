#Faça um programa que peça um número inteiro e determine se ele é ou não um número primo. 
#Um número primo é aquele que é divisível somente por ele mesmo e por 1.


contador = 1
contador_divisível = 0

print "Digite um número: "
n = gets.to_i


while contador <= n
  if n % contador == 0 
    contador_divisível = contador_divisível + 1
  end
  contador = contador + 1
end

puts "Ao todo existem #{contador_divisível} valores divisíveis por #{n}."

if contador_divisível <=  2 
  puts "E, por isso, esse número, #{n}, é primo!"
end
