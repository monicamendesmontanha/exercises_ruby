require_relative './votacao'

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