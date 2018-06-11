#Faça um programa que calcule o mostre a média aritmética de N notas. 

# pedir as notas (seja quantas forem)
# calcular a media das notas (soma de todas as notas / quantidade total de notas)
# mostrar a media

# NÃO TEM COMO FAZER FUNCAO PARA RECEBER VARIAS NOTAS ?
# resp: não. cada função só retorna uma coisa. 
# ONDE TEM QUE FICAR O ARRAY? DENTRO DA FUNCAO OU FORA? 
# resp: tanto faz, importa saber como chamar apos retornar ele na função.


def inserir_nota(quantidade_digitadas)
  array = []
  contador = 0
  
  while contador < quantidade_digitadas do 
    print "Digite uma nota: "
    nota = gets.to_f
    array << nota
    contador = contador + 1
  end

  return array

end

def soma(x)
  total = 0
  x.each do |n|
    total = total + n
  end

  return total
end

#def media(soma_das_notas, quantidade_de_notas)
#  soma_das_notas/quantidade_de_notas
#end
# ISSO MELHORADO:
def media_x(numeros)
  total_x = soma(numeros)
  quantidade =  numeros.size
  media = total_x/quantidade

  return media
end


print "Quantas notas você quer digitar? "
quantidade_digitadas = gets.to_i


notas_digitadas = inserir_nota(quantidade_digitadas)
#puts notas_digitadas.size

#soma_das_notas = soma(notas_digitadas)
#print soma_das_notas

#media_das_notas = media(soma_das_notas,notas_digitadas.size)
#print media_das_notas

media_das_notas = media_x(notas_digitadas)
print media_das_notas