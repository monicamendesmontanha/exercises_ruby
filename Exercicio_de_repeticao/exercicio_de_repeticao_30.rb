#O Sr. Manoel Joaquim acaba de adquirir uma panificadora e pretende implantar a
#metodologia da tabelinha, que já é um sucesso na sua loja de 1,99. Você foi
#contratado para desenvolver o programa que monta a tabela de preços de pães, de
#1 até 50 pães, a partir do preço do pão informado pelo usuário, conforme o
#exemplo abaixo:
#Preço do pão: R$ 0.18
#Panificadora Pão de Ontem - Tabela de preços
#1 - R$ 0.18
#2 - R$ 0.36
#...
#50 - R$ 9.00

def calcula_preco(preco_do_pao,paes_comprados)
  preco_do_pao * paes_comprados
end

#  contador = 1
#  tabela = []
# while contador <= paes_comprados do
#    preco_a_pagar = calcula_preco(preco_do_pao, paes_comprados)
#    tabela << preco_a_pagar
#    contador = contador + 1
#  end



print "Qual o preço do pão? "
preco_do_pao = gets.to_f

print "Quantos pães serão comprados? "
paes_comprados = gets.to_i

preco_a_pagar = calcula_preco(preco_do_pao, paes_comprados)
puts preco_a_pagar

#puts tabela

