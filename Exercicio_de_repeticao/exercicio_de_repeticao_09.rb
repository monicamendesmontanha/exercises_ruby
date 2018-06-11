#Faça um programa que imprima na tela apenas os números ímpares entre 1 e 50.


# solução 01

array = []

contador = 0

while contador < 50 do

  contador = contador + 1
  array << contador
  
end

array_impar = []

for contador in array
    if contador  % 2 != 0
      array_impar << contador
    end
end

p array_impar

#---------------
# solução 02

array_impar = []

contador = 0

while contador < 50 do
  contador = contador + 1
  if contador % 2 != 0
    array_impar << contador
  end
end

p array_impar

#---------------
# solução03

array = []

contador = 0

while contador < 50 do
  contador = contador + 1
  array << contador
end

array_impar = array.select { |n| n % 2 != 0}
#array_impar = array.select { |n| n.odd? }

p array_impar

#---------------
# solução04


array_impar = []

contador = 0

while contador < 50 do
  contador = contador + 1
  if contador.odd?
    array_impar << contador
  end
end

p array_impar

#---------------
# solução 05


array = (1..50).to_a

array_impar = []

array.each do |n|
    if n.odd?
      array_impar << n
    end
end

p array_impar