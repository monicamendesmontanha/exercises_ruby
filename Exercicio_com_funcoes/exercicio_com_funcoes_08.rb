#Faça uma função que informe a quantidade de dígitos de um determinado número inteiro informado.

def InformaQuantidadeDigitos (n)
  n.size
end

numero = []

print "Digite um número qualquer: "
numero << gets.to_i

quantidade_de_digitos_informados = InformaQuantidadeDigitos(numero)
puts "O número possui #{quantidade_de_digitos_informados} dígitos."