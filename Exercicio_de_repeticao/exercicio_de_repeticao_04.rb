#Supondo que a população de um país A seja da ordem de 80000 habitantes com
#uma taxa anual de crescimento de 3% e que a população de B seja 200000
#habitantes com uma taxa de crescimento de 1.5%. Faça um programa que calcule
#e escreva o número de anos necessários para que a população do país A ultrapasse
#ou iguale a população do país B, mantidas as taxas de crescimento.
TAXA_ANUAL_A = 0.02
TAXA_ANUAL_B = 0.01

populacao_a = 3.0
populacao_b = 5.0
anos_passados = 0

def calcula_crescimento(populacao, taxa_anual)
  populacao + (populacao * taxa_anual)
end

while populacao_a < populacao_b do
  puts "#{populacao_a} :: #{populacao_b}" 
  populacao_a = calcula_crescimento(populacao_a, TAXA_ANUAL_A)
  populacao_b = calcula_crescimento(populacao_b, TAXA_ANUAL_B)
  anos_passados = anos_passados + 1
end

puts "A população de A ultrapassou a população de B após #{anos_passados} anos."