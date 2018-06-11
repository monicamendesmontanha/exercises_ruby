#João Papo-de-Pescador, homem de bem, comprou um microcomputador para
#controlar o rendimento diário de seu trabalho. Toda vez que ele traz um peso de
#peixes maior que o estabelecido pelo regulamento de pesca do estado de São
#Paulo (50 quilos) deve pagar uma multa de R$ 4,00 por quilo excedente. João
#precisa que você faça um programa que leia a variável peso (peso de peixes) e
#verifique se há excesso. Se houver, gravar na variável excesso e na variável multa
#o valor da multa que João deverá pagar. Caso contrário mostrar tais variáveis com
#o conteúdo ZERO.
print "Qual valor do peso de peixes trazido? "
peso_de_peixes = gets.to_f

PESO_MAXIMO = 50.0
VALOR_MULTA_POR_KILO = 4.0

excesso = peso_de_peixes - PESO_MAXIMO
multa = VALOR_MULTA_POR_KILO * excesso

if peso_de_peixes > PESO_MAXIMO
  puts "Houve um excesso de #{excesso.round(2)} kg de Peixe e terá que pagar uma multa de R$ #{multa.round(2)} reais."
else
  puts "O peso de peixes está dentro do estabelecido pelo regulamento." 
end