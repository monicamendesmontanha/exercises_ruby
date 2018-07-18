#'''Conta espaços e vogais.''' Dado uma string com uma frase informada pelo
#usuário (incluindo espaços em branco), conte:
#a. quantos espaços em branco existem na frase.
#b. quantas vezes aparecem as vogais a, e, i, o, u.
vogais = {
  "a" => [],
  "e" => [],
  "i" => [],
  "o" => [],
  "u" => [],
  " " => []
}


print "Digite uma frase: "
characteres = gets.chomp.split('')

characteres.each do |c|
  if vogais[c] != nil
    vogais[c] << 1
  end 
end

puts "A frase '#{characteres.join}' possui:"
#puts "#{vogais[" "].size} characteres em branco."
#puts "#{vogais["a"].size} characteres iguais a 'a'."
#puts "#{vogais["e"].size} characteres iguais a 'e'."

vogais.each do |chave, valor|
  puts "#{valor.size} characteres iguais a '#{chave}'."
end