#Uma grande emissora de televisão quer fazer uma enquete entre os seus telespectadores para 
#saber qual o melhor jogador após cada jogo. Para isto, faz-se necessário o desenvolvimento 
#de um programa, que será utilizado pelas telefonistas, para a computação dos votos. 
#Sua equipe foi contratada para desenvolver este programa, utilizando a linguagem de 
#programação C++. Para computar cada voto, a telefonista digitará um número, entre 1 e 23,
#correspondente ao número da camisa do jogador. Um número de jogador igual zero, indica que 
#a votação foi encerrada. Se um número inválido for digitado, o programa deve ignorá-lo, 
#mostrando uma breve mensagem de aviso, e voltando a pedir outro número. 

#Após o final da votação, o programa deverá exibir:
#a. O total de votos computados;
#b. Os númeos e respectivos votos de todos os jogadores que receberam votos;
#c. O percentual de votos de cada um destes jogadores;
#d. O número do jogador escolhido como o melhor jogador da partida, juntamente com o número 
#de votos e o percentual de votos dados a ele.

#Observe que os votos inválidos e o zero final não devem ser computados como votos. 
#O resultado aparece ordenado pelo número do jogador. O programa deve fazer uso de arrays.
#O programa deverá executar o cálculo do percentual de cada jogador através de uma função. 
#Esta função receberá dois parâmetros: o número de votos de um jogador e o total de votos. 
#A função calculará o percentual e retornará o valor calculado.
#Abaixo segue uma tela de exemplo. O disposição das informações deve ser o mais próxima 
#possível ao exemplo. Os dados são fictícios e podem mudar a cada execução do programa.

#Ao final, o programa deve ainda gravar os dados referentes ao resultado da votação em um arquivo 
#texto no disco, obedecendo a mesma disposição apresentada na tela.

#Enquete: Quem foi o melhor jogador?
#Número do jogador (0=fim): 9
#Número do jogador (0=fim): 10
#Número do jogador (0=fim): 9
#Número do jogador (0=fim): 10
#Número do jogador (0=fim): 11
#Número do jogador (0=fim): 10
#Número do jogador (0=fim): 50
#Informe um valor entre 1 e 23 ou 0 para sair!
#Número do jogador (0=fim): 9
#Número do jogador (0=fim): 9
#Número do jogador (0=fim): 0

#Resultado da votação:
#Foram computados 8 votos.

#Jogador       Votos       total de votos.
#9             4%            50,0%
#10            3%            37,5%
#11            1%            12,5%

#O melhor jogador foi o número 9, com 4 votos, correspondendo a 50% dos votos.
def vota_no_jogador 
  puts "--------------VOTAÇÃO--------------"
  puts "[Informe um valor entre 1 e 23]"
  print "Qual nº de jogador você vai votar? "
  numero = gets.to_i
end

def votacao_invalida? (numero)
  numero > 24
end

def encerrar_votacao(numero)
  numero == 0
end

#O porque do programa estar dando LOOP INFINITO no momento que digito ZERO?

votacao = vota_no_jogador

while votacao_invalida?(votacao) do
  puts "----------------------------------"
  puts "Não existe jogador com este número." 
  puts "Por favor, digite um número válido."
  puts "----------------------------------"

  votacao = vota_no_jogador 
end

while encerrar_votacao(votacao)
  puts "Votação encerrada!"
end

puts "Votação realizada com sucesso!"

