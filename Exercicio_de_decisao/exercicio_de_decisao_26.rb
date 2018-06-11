#Faça um Programa que leia 2 números e em seguida pergunte ao usuário qual operação 
#ele deseja realizar. O resultado da operação deve ser acompanhado de uma frase que 
#diga se o número é:     
#  a. par ou ímpar;   
#  b. positivo ou negativo;   
#  c. inteiro ou decimal. 


numero_1 = 3
numero_2 = 2 

print "Qual operação que você deseja realizar? [soma, subtracao, divisao, multiplicacao]"
operacao = gets.chomp

soma = numero_1 + numero_2
subtracao = numero_1 - numero_2
divisao = numero_1/numero_2
multplicacao = numero_1 * numero_2


if operacao == "soma"
  puts "#{soma}"
elsif operacao == "subtracao"
 puts "#{subtracao}"
elsif operacao == "divisao"
  puts "#{divisao.to}"
else operacao = "multiplicacao"
  puts "#{multplicacao}"
end





