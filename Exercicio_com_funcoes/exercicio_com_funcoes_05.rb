#Faça um programa com uma função chamada somaImposto. A função possui dois
#parâmetros formais: taxaImposto, que é a quantia de imposto sobre vendas
#expressa em porcentagem e custo, que é o custo de um item antes do imposto. A
#função “altera” o valor de custo para incluir o imposto sobre vendas.

def SomaImposto(taxa_imposto, custo)
  custo = (taxa_imposto * custo) + custo
end

print "Qual o valor do item? "
valor = gets.to_f

TAXA = 0.15

altera = SomaImposto(TAXA, valor)
puts "R$ #{altera}"