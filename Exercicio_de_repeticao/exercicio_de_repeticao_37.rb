#Uma academia deseja fazer um senso entre seus clientes para descobrir o mais
#alto, o mais baixo, a mais gordo e o mais magro, para isto você deve fazer um
#programa que pergunte a cada um dos clientes da academia seu código, sua altura
#e seu peso. O final da digitação de dados deve ser dada quando o usuário digitar 0
#(zero) no campo código. Ao encerrar o programa também deve ser informados os
#códigos e valores do clente mais alto, do mais baixo, do mais gordo e do mais
#magro, além da média das alturas e dos pesos dos clientes

conjunto_codigo = []
conjunto_altura = []
conjunto_peso =[]

resposta = 1
while resposta != 0 do
  print "Código: "  
  resposta = gets.to_i
  conjunto_codigo << resposta

  print "Altura: "
  resposta = gets.to_i
  conjunto_altura << resposta

  print "Peso: "
  resposta = gets.to_i
  conjunto_peso << resposta
end

puts "Mais alto: #{conjunto_altura.sort.last}"
#puts "Mais baixo: #{conjunto_altura.sort.first}"
puts "Mais gordo: #{conjunto_peso.sort.last}"
#puts "Mais magro: #{conjunto_peso.sort.first}"

for menor in conjunto_altura

  if menor1 <= menor
  else menor1 > menor
    menor << menor1 
  end
   return menor1
end

puts menor1

# visual log
#se i = 1 entao
#menor1 := vet1
#fimse
#se menor1 > vet1 entao
#menor1:= vet1
#fimse
#
#retorne menor1
#fimfuncao