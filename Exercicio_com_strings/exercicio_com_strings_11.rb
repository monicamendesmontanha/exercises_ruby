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

novo_jogo = "s"

while novo_jogo == "s"

  #palavras = ["gato", "cachorro", "cavalo"]
  palavras = %w{gato cachorro cavalo}
  palavra_sorteada = palavras.sample
  tamanho_da_palavra = palavra_sorteada.size

  puts "JOGO DA FORCA"
  puts "-------------"
  palavra_parcial = []

  tamanho_da_palavra.times do 
    palavra_parcial << " _ "
  end

  puts "A palavra é: '#{palavra_parcial.join}'"

  fim = false
  while fim == false
    print "Digite uma letra: "
    letra = gets.chomp

    contador = 0
    palavra_sorteada.each_char do |l|
      if palavra_parcial[contador] == " _ "
        if l == letra
        palavra_parcial[contador] = letra
        end
      end

      contador += 1
    end

    if palavra_parcial.join.count(" _ ") > 0
      fim = false
      puts "#{palavra_parcial.join}"
    else
      fim = true
    end

  end
  
  puts "A palavra correta era: #{palavra_parcial.join}"
  puts "Gostaria de jogar novamente? [s/n]"
  novo_jogo = gets.chomp
end

puts "Jogo encerrado!"