#Faça um Programa que peça um número correspondente a um determinado ano 
#e em seguida informe se este ano é ou não bissexto. 
 
#Para ser bissexto, o ano deve ser:

# 1) Divisível por 4. Sendo assim, a divisão é exata com o resto igual a zero;

# 2) Não pode ser divisível por 100. Com isso, a divisão não é exata, ou seja, 
#deixa resto diferente de zero;

# 3) Pode ser que seja divisível por 400. Caso seja divisível por 400, 
#a divisão deve ser exata, deixando o resto igual a zero.

# 1997 não é um ano bissexto - não é divisivel por 4. (caso1)
# 2012 é bissexto - divisivel por 4 e nao por 100 (caso2)
# 2000 divisivel por 4 e tambem por 100 e por 400 (caso3)
# 1900 não é bissexto

def bissexto?(ano)
  (ano % 4 == 0 and ano % 100 != 0) or (ano % 400 == 0)
end

print "Digite um ano qualquer para saber se ele é bissexto ou não: [xxxx]"
ano = gets.to_i

if bissexto?(ano)
  puts "Esse ano #{ano} é bissexto"
else
  puts "NÃO é bissexto!" 
end

#if ano % 4 == 0 && ano % 100 != 0
#  puts "Esse ano #{ano} é bissexto (1)"
#elsif ano % 400 == 0
#  puts "Esse ano #{ano} é bissexto(2)!"
#else 
#  puts "NÃO é bissexto!"
#end