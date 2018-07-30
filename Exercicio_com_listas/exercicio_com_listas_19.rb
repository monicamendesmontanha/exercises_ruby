#Uma empresa de pesquisas precisa tabular os resultados da seguinte enquete feita 
#a um grande quantidade de organizações:
#"Qual o melhor Sistema Operacional para uso em servidores?"
#As possíveis respostas são:
#1-Windows Server
#2-Unix
#3-Linux
#4-Netware
#5-Mac OS
#6-Outro

#Você foi contratado para desenvolver um programa que leia o resultado da enquete e informe 
#ao final o resultado da mesma. O programa deverá ler os valores até ser informado o valor 0, 
#que encerra a entrada dos dados. Não deverão ser aceitos valores além dos válidos para o 
#programa (0 a 6). Os valores referentes a cada uma das opções devem ser armazenados num vetor.
#Após os dados terem sido completamente informados, o programa deverá calcular a percentual 
#de cada um dos concorrentes e informar o vencedor da enquete. O formato da saída foi dado 
#pela empresa, e é o seguinte:

#Sistema Operacional         Votos               %     
#---------------------------------------------------------
#Windows Server              1500                17    
#Unix                        3500                40
#Linux                       3000                34
#Netware                      500                 5
#Mac OS                       150                 2
#Outro                        150                 2
#---------------------------------------------------------
#Total                       8800

#O Sistema Operacional mais votado foi o Unix, com 3500 votos, correspondendo a 40% dos votos.

class Enquete

  def initialize(opcoes)
    @opcoes = opcoes
  end

  def computa_resposta(valor_digitado)
    opcao = @opcoes[valor_digitado]
    # verifica se opçâo existe
    if opcao
      opcao[:respostas] << 1
    end
  end

  def contabiliza_total_respostas
    total_de_respostas = 0
    @opcoes.each do |chave, valor|
      total_de_respostas += valor[:respostas].size
    end
  
    total_de_respostas
  end

  def obtem_respostas_por_voto_e_percentual
    respostas_por_opcao = {}

    @opcoes.each do |chave, valor|
      nome = valor[:nome]
      total = valor[:respostas].size

      percentual = total.to_f / contabiliza_total_respostas.to_f * 100

      respostas_por_opcao[nome] = {
        percentual: percentual,
        total_votos: total
      }
    end

    respostas_por_opcao
  end

  def obtem_resposta_com_maior_numero_de_votos
    opcoes = []
    obtem_respostas_por_voto_e_percentual.each do |chave, valor|
      opcao_customizada = {
        nome: chave,
        total_votos: valor[:total_votos],
        percentual: valor[:percentual]
      }

      opcoes << opcao_customizada
    end

    opcoes.max_by { |opcao| opcao[:total_votos] }
  end
end


def enquete_em_andamento?(resposta)
  resposta != 0
end

def solicita_resposta_do_usuario
  puts "Digite o sistema em que você quer votar: "
  resposta = gets.to_i
  resposta
end

sistemas = {
  1 => {
    nome: "Windows Server",
    respostas: []
  },
  2 => {
    nome: "Unix",
    respostas: []
  },
  3 => {
    nome: "Linux",
    respostas: []
  },
  4 => {
    nome: "Netware",
    respostas: []
  },
  5 => {
    nome: "Mac OS",
    respostas: []
  },
  6 => {
    nome: "Outro",
    respostas: []
  }
}

resposta = solicita_resposta_do_usuario
enquete = Enquete.new(sistemas)
enquete.computa_resposta(resposta)

while enquete_em_andamento?(resposta)
  resposta = solicita_resposta_do_usuario
  enquete.computa_resposta(resposta)
end

total_respostas = enquete.contabiliza_total_respostas
puts "----------------------------------------"
puts "O total de respostas foram: #{total_respostas}"

respostas = enquete.obtem_respostas_por_voto_e_percentual

#respostas:
# {
#   "Windows Server" => {
#    :percentual => 50.0, 
#    :total_votos => 3
#   }, 
#   "Unix" => {
#     :percentual => 16.666666666666664, 
#     :total_votos => 1 
#   }, 
#   "Linux" => {
#     :percentual => 33.33333333333333, 
#     :total_votos => 2
#     }, 
#     "Netware" => {
#       :percentual => 0.0, 
#       :total_votos => 0
#     }, 
#     "Mac OS" => {
#       :percentual => 0.0, 
#       :total_votos => 0
#     }, 
#     "Outro" => {
#       :percentual => 0.0, 
#       :total_votos => 0
#     }
# }

puts "----------------------------------------"
puts "Nº de respostas por sistema: "
respostas.each do |chave, valor|
  puts "#{chave} ~> #{valor[:total_votos]}"
end

puts "----------------------------------------"
puts "Percentual de respostas por sistema: "
respostas.each do |chave, valor|
  puts "#{chave} ~> #{valor[:percentual].round(2)} %"
end

mais_votos = enquete.obtem_resposta_com_maior_numero_de_votos
puts "----------------------------------------"
puts "O Sistema Operacional mais votado foi o #{mais_votos[:nome]}, com #{mais_votos[:total_votos]} votos, correspondendo a #{mais_votos[:percentual].round(2)}% dos votos."