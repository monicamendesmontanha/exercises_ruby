#Faça um programa que peça uma nota, entre zero e dez. 
#Mostre uma mensagem caso o valor seja inválido e continue pedindo até que o usuário informe um valor válido.

print "Digite uma nota: "
nota = gets.to_f

while nota < 0 or nota > 10 do
  puts "valor inválido"
  print "Digite uma nota: "
  nota = gets.to_f
end

puts "A nota, #{nota}, foi cadastrada com sucesso!"