
def calcula_maior_numero_entre(primeiro_numero,segundo_numero,terceiro_numero)
  if primeiro_numero > segundo_numero && primeiro_numero > terceiro_numero
    primeiro_numero
  elsif segundo_numero > primeiro_numero && segundo_numero > terceiro_numero
    segundo_numero
  else
    terceiro_numero
  end
end