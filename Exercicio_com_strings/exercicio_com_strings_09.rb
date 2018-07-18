#'''Verificação de CPF.''' Desenvolva um programa que solicite a digitação de um
#número de CPF no formato '''xxx.xxx.xxx-xx''' e indique se é um número válido
#ou inválido através da validação dos dígitos verificadores edos caracteres de formatação.

def cpf_valido?(cpf)
end

print "Digite seu CPF: [xxx.xxx.xxx-xx]"
cpf = gets.chomp.gsub(/\.|-/, '')

puts cpf