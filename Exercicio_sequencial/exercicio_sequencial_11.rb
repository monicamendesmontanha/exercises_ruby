#Faça um programa qye peça 2 números inteiros e 1 número real. Calcule e mostre:
# a) o produto do dobro do primeiro com metade do segundo.
# b) a soma do triplo do primeiro com o terceiro.
# c) o terceiro elevado ao cubo.

print "Digite um número inteiro: "
primeiro_inteiro = gets.to_i

print "Digite um segundo número inteiro: "
segundo_inteiro = gets.to_i


#  numero real = numero flutuante 
print "Digite um número real: "
terceiro_real = gets.to_f

resultado_a = (primeiro_inteiro*2) * (segundo_inteiro/2)
resultado_b = (primeiro_inteiro*3) + (terceiro_real)
resultado_c = (terceiro_real**3)

puts "A letra A é: #{resultado_a}"
puts "A letra B é #{resultado_b}"
puts "A letra C é #{resultado_c}"