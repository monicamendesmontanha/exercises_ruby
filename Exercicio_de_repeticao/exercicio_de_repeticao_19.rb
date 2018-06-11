#Altere o programa anterior para que ele aceite apenas números entre 0 e 1000. 


# TIRAR DÚVIDAS



def numero_valido(numero)
  if numero > 0 and numero < 1000    
    puts numero
  else 
    print "Número inválido!"
    print "Digite um número: "
    numero = gets.to_i
  end

  return numero
end


array = []

contador = 0
while contador < 5 do
  print "Digite um número: "
  numero = gets.to_f
  numero = numero_valido(numero)
  array << numero
  contador = contador + 1
end

print array