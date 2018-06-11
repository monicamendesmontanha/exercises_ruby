#Faça um Programa que peça uma data no formato dd/mm/aaaa e determine 
#se a mesma é uma data válida. 

def data_valida?(dia, mes, ano)
  if mes == 2
    if dia > 29
      return false
    end
  end

  if mes == 4 or mes == 6 or mes == 9 or mes == 11
    if dia > 30
      return false
    end
  end
  
  if dia > 31
    return false
  elsif mes > 12
    return false
  elsif ano < 1000 or ano > 2018
    return false
  else
    true
  end
end

print "Digite sua data de nascimento: [dd/mm/aaaa] "
#data = '32/02/1988'.split('/')
data = gets.split('/')

dia = data[0].to_i
mes = data[1].to_i
ano = data[2].to_i

if data_valida?(dia, mes, ano)
  puts "Data válida"
else
  puts "Data INVÁLIDA"
end
