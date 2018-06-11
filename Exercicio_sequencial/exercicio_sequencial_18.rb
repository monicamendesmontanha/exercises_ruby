#Faça um programa que peça o tamanho de um arquivo para download (em MB) e
#a velocidade de um link de Internet (em Mbps), calcule e informe o tempo
#aproximado de download do arquivo usando este link (em minutos)

print "Qual tamanho do arquivo para download? [em MB]"
tamanho_arquivo = gets.to_f

print "Qual a velocidade do link da internet? [em Mbps] "
velocidade_internet = gets.to_f

# tempo em minutos = (tam-em-gb * 1024 * 1024 * 8) / velocidade-kbits / 60

tempo_minutos = (tamanho_arquivo * 1024 * 1024 * 8) / velocidade_internet / 60
puts "O tempo aproximado de download usando este link é de #{tempo_minutos.round(2)} minutos."
