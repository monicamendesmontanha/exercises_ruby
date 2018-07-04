#'''Jogo de Craps.''' Faça um programa de implemente um jogo de Craps. O jogador
#lança um par de dados, obtendo um valor entre 2 e 12. Se, na primeira jogada,
#você tirar 7 ou 11, você um "natural" e ganhou. Se você tirar 2, 3 ou 12 na
#primeira jogada, isto é chamado de "craps" e você perdeu. Se, na primeira jogada,
#você fez um 4, 5, 6, 8, 9 ou 10,este é seu "Ponto". Seu objetivo agora é continuar
#jogando os dados até tirar este número novamente. Você perde, no entanto, se
#tirar um 7 antes de tirar este Ponto novamente.


print "{n1}º Dado lançado: "
dado = gets.to_i

if dado == 7 || dado == 11
  puts "natural: você ganhou!"
elsif dado == 2 || dado == 3 || dado == 12
  puts "craps: você perdeu!"
else
  puts "ponto! continue jogando"
end

print "{n2}º Dado lançado: "
segundo_dado = gets.to_i

if segundo_dado != 7 
  while segundo_dado != dado do
    print "{ns}º Dado lançado: "
    dado_seguintes = gets.to_i
  end
end