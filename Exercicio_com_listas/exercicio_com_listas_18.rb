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

class Votacao
  # atributos
  attr_reader :candidatos

  # construtor
  def initialize(candidatos)
    @candidatos = candidatos
  end

  # métodos (comportamentos)
  def computa_voto(voto)
    candidatos[voto] << 1
  end

  def contabiliza_total_de_votos
    total_votos = 0
    candidatos.each do |numero, votos|
      total_votos = total_votos + votos.size
    end

    total_votos
  end

  def contabiliza_votos_por_candidato
    votos_por_candidato = {}

    candidatos.each do |numero, votos|
      votos_por_candidato[numero] = votos.size
    end

    votos_por_candidato.select { |numero, total_votos| total_votos > 0 }
  end
end

class VotacaoJogador < Votacao
  def computa_voto
    # solicita voto do usuário na primeira execução
    voto = solicita_voto_usuario

    # verifica se a votação ainda está em andamento (se voto não for 0)
    while votacao_em_andamento?(voto) do

      # verifica se a votação é válida (se voto está entre 1 e 23)
      while votacao_invalida?(voto) do
        puts "----------------------------------"
        puts "Não existe jogador com este número."
        puts "Por favor, digite um número válido."
        puts "----------------------------------"

        # solicita voto do usuário até ser válido
        voto = solicita_voto_usuario
      end

      # Chama o pai – Votacao – para chamar 'computa_voto' passando 'voto' como argumento
      # Essa chamada vai chamar 'computaVoto' do pai, que adiciona de fato o voto.
      super(voto)

      # solicita voto do usuário mais uma vez
      voto = solicita_voto_usuario
    end
  end

  private

  def solicita_voto_usuario
    puts "--------------VOTAÇÃO--------------"
    puts "[Informe um valor entre 1 e 23]"
    puts ">>   Digite 0 para sair"
    print "Qual nº de jogador você vai votar? "

    voto = gets.to_i

    voto
  end

  def votacao_em_andamento?(numero)
    numero != 0
  end

  def votacao_invalida?(numero)
    numero < 0 || numero > 23
  end
end

jogadores = {
  1 => [],
  2 => [],
  3 => [],
  4 => [],
  5 => [],
  6 => [],
  7 => [],
  8 => [],
  9 => [],
  10 => [],
  11 => [],
  12 => [],
  13 => [],
  14 => [],
  15 => [],
  16 => [],
  17 => [],
  18 => [],
  19 => [],
  20 => [],
  21 => [],
  22 => [],
  23 => []
}

votacao = VotacaoJogador.new(jogadores)
votacao.computa_voto()

puts "Votação realizada com sucesso!"

puts "a. #{votacao.contabiliza_total_de_votos}"

resposta_b = votacao.contabiliza_votos_por_candidato

puts "b."
resposta_b.each do |numero, total_votos|
  puts "   O jogador de número #{numero} recebeu #{total_votos} voto(s)."
end

# puts "c. #{percentual_de_votos_de_cada_um_destes_jogadores(jogadores)}"
# puts "d. #{numero_do_jogador_escolhido_como_o_melhor_jogador_da_partida_juntamente_com_o_numero_de_votos_e_o_percentual_de_votos_dados_a_ele(jogadores)}"
