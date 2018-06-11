#Altere o programa de cálculo dos números primos, informando, caso o número
#não seja primo, por quais número ele é divisível.


  # -------------  DÚVIDAAAA, 2ª PARTE DA QUESTÃO!


#array_divisíveis = []
contador = 1
contador_divisível = 0


print "Digite um número: "
n = gets.to_i

while contador <= n
  if n % contador == 0
#    array_divisíveis << n
    contador_divisível = contador_divisível + 1
#   array_divisíveis << contador_divisível
  end
  contador = contador + 1
end

puts "Ao todo existem #{contador_divisível} valores divisíveis por #{n}."
#puts array_divisíveis


if contador_divisível > 3
#  puts array_divisíveis
else
  contador_divisível <=  2 
  puts "E, por isso, esse número, #{n}, é primo!"
end

