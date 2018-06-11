#Faça um Programa que leia um número inteiro menor que 1000 e imprima a quantidade 
#de centenas, dezenas e unidades do mesmo.     
#  Observando os termos no plural a colocação do "e", da vírgula entre outros.     
#    Exemplo:   
#    a. 326 = 3 centenas, 2 dezenas e 6 unidades       
#    b. 12  = 1 dezena e 2 unidades 

#    Testar com: 326, 300, 100, 320, 310,305, 301, 101, 311, 
#    111, 25, 20, 10, 21, 11, 1, 7 e 16 

#numeros = gets.split('')
# numeros.size -> 3 (tamanho do array)
# COMECA DO ZERO
# numeros -> [3, 2, 6]
# numeros[0].to_i -> 3
# numeros[1] -> '2'
# numeros[2] -> '6'
# numeros[3] -> ERRO

def pluraliza_ordem(numero, ordem)
  if numero > 1
    #ordem = ordem + "s"
    ordem += "s"
  end

  ordem
end

def imprime_unidades(unidades)
  ordem_pluralizada = pluraliza_ordem(unidades, "unidade")  

  if unidades > 0
    "#{unidades} #{ordem_pluralizada}"
  else
    ''
  end
end

def imprime_dezenas(dezenas, unidades)
  ordem_plurarizada = pluraliza_ordem(dezenas, 'dezena')
  valor_por_extenso = "#{dezenas} #{ordem_plurarizada}"

  if unidades > 0
    valor_por_extenso += " e #{imprime_unidades(unidades)}"    
  end

  valor_por_extenso
end

def imprime_centenas(centenas, dezenas, unidades)
  ordem_pluralizada = pluraliza_ordem(centenas, 'centena')

  "#{centenas} #{ordem_pluralizada}, #{imprime_dezenas(dezenas, unidades)}"
end

def converte_em_extenso(numeros_em_string)
  #numeros = numeros_em_string.map do |n|
  #  n.to_i
  #end
  numeros = numeros_em_string.map { |n| n.to_i }

  if numeros.size == 1
    imprime_unidades(numeros[0])
  elsif numeros.size == 2    
    imprime_dezenas(numeros[0], numeros[1])
  elsif numeros.size == 3
    imprime_centenas(numeros[0], numeros[1], numeros[2])
  else
    'Ainda não estamos preparados para lidar com números tão grandes...'
  end
end

puts converte_em_extenso('1'.split(''))
puts converte_em_extenso('0'.split(''))
puts converte_em_extenso('10'.split(''))
puts converte_em_extenso('11'.split(''))
puts converte_em_extenso('18'.split(''))
puts converte_em_extenso('25'.split(''))
puts converte_em_extenso('145'.split(''))
puts converte_em_extenso('326'.split(''))
puts converte_em_extenso('111'.split(''))
puts converte_em_extenso('1599'.split(''))

#centenas = numeros[0].to_i
#dezenas = numeros[1].to_i
#unidades = numeros[2].to_i

#if centenas > 1 or dezenas > 1 or unidades > 1
#  puts "#{centenas} centenas, #{dezenas} dezenas e #{unidades} unidades."
#else 
#  puts "#{centenas} centena, #{dezenas} dezena e #{unidades} unidade."
#end


#puts numeros
