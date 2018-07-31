#Sua organização acaba de contratar um estagiário para trabalhar no Suporte de Informática, 
#com a intenção de fazer um levantamento nas sucatas encontradas nesta área. 
#A primeira tarefa dele é testar todos os cerca de 200 mouses que se encontram lá, testando e 
#anotando o estado de cada um deles, para verificar o que se pode aproveitar deles.
#Foi requisitado que você desenvolva um programa para registrar este levantamento. 
#O programa deverá receber um número indeterminado de entradas, cada uma contendo:
#um número de identificação do mouse o tipo de defeito:

#a. necessita da esfera;
#b. necessita de limpeza;
#c. necessita troca do cabo ou conector;
#d. quebrado ou inutilizado

#Uma identificação igual a zero encerra o programa. 
#Ao final o programa deverá emitir o seguinte relatório:

#Quantidade de mouses: 100

#Situação                                             Quantidade          Percentual
#1- necessita da esfera                                   40                   40%
#2- necessita de limpeza                                  30                   30%
#3- necessita troca do cabo ou conector                   15                   15%
#4- quebrado ou inutilizado                               15                   15%

def solicita_tipo_de_defeito

  puts "-------------------------------------------"
  puts "TIPOS DE DEFEITOS DO MOUSE"
  puts "a. necessita da esfera;"
  puts "b. necessita de limpeza;"
  puts "c. necessita troca do cabo ou conector;"
  puts "d. quebrado ou inutilizado"
  print " => Identifique o tipo de defeito encontrado no mouse: "
  tipo = gets.chomp
  
end 

  # "a": {
  #   situacao: "necessita da esfera",
  #   quantidade: [],
  #   percentual: [] 
  # },
  # "b": {
  #   situacao: "necessita de limpeza",
  #   quantidade: [],
  #   percentual: [] 
  # },
  # "c": {
  #   situacao: "necessita troca de cabo ou conector",
  #   quantidade: [],
  #   percentual: [] 
  # },
  # "d": {
  #   situacao: "quebrado ou inutilizado",
  #   quantidade: [],
  #   percentual: [] 
  # }

class Identificadores
  
  attr_accessor :id, :situacao, :quantidade, :percentual

  def initialize(id, situacao, quantidade, percentual)
    @id = id
    @situacao = situacao
    @quantidade = quantidade
    @percentual = percentual
  end

end

identificador_a = Identificadores.new('a', "necessita da esfera", 0, 0)
identificador_b = Identificadores.new('b', "necessita de limpeza", 0, 0)

identificacao = [
  identificador_a, 
  identificador_b
]

3.times do
  tipo_de_defeito_digitado = solicita_tipo_de_defeito

  tipo = identificacao.find { |d| d.id == tipo_de_defeito_digitado }
  tipo.quantidade += 1
end

puts "Quantidade de acordo com cada tipo de defeito"
identificacao.each do |tipo|
  puts "------------------------"
  puts "#{tipo.situacao} ~> #{tipo.quantidade}"
end