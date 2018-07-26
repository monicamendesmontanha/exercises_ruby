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

sistemas = {
  1 => {
    sistema: "Windows Server",
    respostas: []
  },
  2 => {
    sistema: "Unix",
    respostas: []
  },
  3 => {
    sistema: "Linux",
    respostas: []
  },
  4 => {
    sistema: "Netware",
    respostas: []
  },
  5 => {
    sistema: "Mac OS",
    respostas: []
  },
  6 => {
    sistema: "Outro",
    respostas: []
  }
}

def computa_resposta(sistemas, valor_digitado)
  opcao = sistemas[valor_digitado]
  # verifica se opçâo existe
  if opcao
    opcao[:respostas] << 1
  end
end

def contabiliza_total_respostas(sistemas)
  total_de_respostas = 0
  sistemas.each do |chave, valor|
    total_de_respostas += valor[:respostas].size
  end

  total_de_respostas
end

def contabiliza_respostas_por_sistema(sistemas)
  respostas_por_sistema = {}

  sistemas.each do |chave, valor|
    sistema = valor[:sistema]
    respostas_por_sistema[sistema] = valor[:respostas].size
  end

  respostas_por_sistema.select { |chave, total_de_respostas| total_de_respostas > 0}
end

def define_percentual_das_respostas(sistemas)
  respostas_por_sistema = {}

  sistemas.each do |chave, valor|
    sistema = valor[:sistema]
    total = valor[:respostas].size

    percentual = total.to_f / contabiliza_total_respostas(sistemas).to_f * 100

    respostas_por_sistema[sistema] = percentual
  end

  respostas_por_sistema
end


def enquete_em_andamento?(resposta)
  resposta != 0
end

def solicita_resposta_do_usuario
  puts "Digite o sistema em que você quer votar: "
  resposta = gets.to_i
  resposta
end

resposta = solicita_resposta_do_usuario
computa_resposta(sistemas, resposta)

while enquete_em_andamento?(resposta)
  resposta = solicita_resposta_do_usuario
  computa_resposta(sistemas, resposta)
end

total_respostas = contabiliza_total_respostas(sistemas)
puts "----------------------------------------"
puts "O total de respostas foram: #{total_respostas}"

respostas_por_sistema = contabiliza_respostas_por_sistema(sistemas)
puts "----------------------------------------"
puts "Nº de respostas por sistema: #{respostas_por_sistema}"

percentual = define_percentual_das_respostas(sistemas)
puts "----------------------------------------"
percentual.each do |chave, valor|
  puts "#{chave} ~> #{valor.round(2)} %"
end