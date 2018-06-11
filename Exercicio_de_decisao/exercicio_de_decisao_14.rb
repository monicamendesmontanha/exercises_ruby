#Faça um Programa que leia um número e exiba o dia correspondente da semana. 
#(1-Domingo, 2- Segunda, etc.), se digitar outro valor deve aparecer valor inválido

def verifica_dia_corresponente_da_semana(numero)
  if numero <= 0 or numero > 7
    return 'valor inválido'  
  end
  
  # Isso é um Hash (map em outras linguagens, conhecido também como hashmap)
  dias_da_semana = {
    1 => 'Domingo',
    2 => 'Segunda',
    3 => 'Terça',
    4 => 'Quarta',
    5 => 'Quinta',
    6 => 'Sexta',
    7 => 'Sábado'
  }

  dias_da_semana[numero]
end

print "Digite um número: "
numero = gets.to_i

puts verifica_dia_corresponente_da_semana(numero)