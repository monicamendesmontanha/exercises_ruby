def calcula_media(primeira_nota, segunda_nota)
  (primeira_nota + segunda_nota)/2
end

def calcula_conceito(media)
  if media >= 9 and media <= 10
    "A"
  elsif media >= 7.5 and media < 9
    "B"
  elsif media >= 6 and media < 7.5 
    "C"
  elsif media >= 4 and media < 6
    "D"
  else media < 4
    "E"
  end
end