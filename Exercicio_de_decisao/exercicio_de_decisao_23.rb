#Faça um Programa para um caixa eletrônico. 
#O programa deverá perguntar ao usuário a valor do saque e depois informar 
#  quantas notas de cada valor serão fornecidas. As notas disponíveis serão 
#  as de 1, 5, 10, 50 e 100 reais. O valor mínimo é de 10 reais e o máximo de 600 reais. 
#  O programa não deve se preocupar com a quantidade de notas existentes na máquina.    
#    a. Exemplo 1: Para sacar a quantia de 256 reais, o programa fornece duas notas de 100, 
#      uma nota de 50, uma nota de 5 e uma nota de 1;    
#    b. Exemplo 2: Para sacar a quantia de 399 reais, o programa fornece três notas de 100, 
#      uma nota de 50, quatro notas de 10, uma nota de 5 e quatro notas de 1. 

# 1. Perguntar o valor do saque
# 2. Informar quantas notas de cada valor deverão ser fornecidas.
#   2.1 As notas [1, 5, 10, 50, 100]
# 3. Validar valor mínimo e máximo são 10 e 600 reais.

# Exemplos:
# a. R$ 256 -> [100, 100, 50, 5, 1]

# f(x) = x + 2
# f(2) -> 4

NOTAS_DISPONIVEIS = [1, 5, 10, 50, 100]

def saque(valor)
  if valor < 10 or valor > 600
    return "Saque inválido"
  end

  notas = []
  indice = NOTAS_DISPONIVEIS.size - 1
  while notas.sum < valor do
    if (valor == NOTAS_DISPONIVEIS[indice])
      notas << valor
    end

    indice = indice - 1
  end

  return "As notas são #{notas}"
end

puts "Qual o valor do saque?"
valor_saque = 10
#valor_saque = gets.to_f

puts saque(valor_saque)
