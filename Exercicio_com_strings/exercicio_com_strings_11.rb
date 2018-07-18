#'''Jogo de Forca.''' Desenvolva um jogo da forca. O programa terá uma lista de
#palavras lidas de um arquivo texto e escolherá uma aleatoriamente. O jogador
#poderá errar 6 vezes antes de ser enforcado.

#Digite uma letra: A
#-> Você errou pela 1a vez. Tente de novo!
#Digite uma letra: O
#A palavra é: _ _ _ _ O
#Digite uma letra: E
#A palavra é: _ E _ _ O
#Digite uma letra: S
#-> Você errou pela 2a vez. Tente de novo!

PALAVRA = "SUCO"

puts "JOGO DA FORCA"
puts "-------------"
print "Digite uma letra: "
letra = gets


resultado = ""
PALAVRA.each do |c|
  resultado = resultado + c
  puts resultado
end
