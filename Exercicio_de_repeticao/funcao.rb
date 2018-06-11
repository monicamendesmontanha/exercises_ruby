#funcao que some dois numeros
#funcao que subtraia dois numeros
#funcao que tira uma media entre os dois numeros


def soma_numeros (x, y)
  x + y
end

def subtrai_numeros (x, y)
  x - y
end

def media_numeros (x, y)
  (x + y) / 2
end

def fatorial_numero (x)

  fatorial = x
  array = []

  while x > 1 do
    fatorial = fatorial * (x - 1)
    x = x - 1
    array << x
  end

  return fatorial

end

numero_1 = 5
numero_2 = 3

resultado_soma = soma_numeros(numero_1, numero_2)
resultado_subtracao = subtrai_numeros(numero_1,numero_2)
resultado_media = media_numeros(numero_1,numero_2)
total_fatorial = fatorial_numero(numero_1)

p resultado_soma
p resultado_subtracao
p resultado_media
p total_fatorial
