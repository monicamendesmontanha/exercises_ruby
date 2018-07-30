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

    candidatos_com_votos.each do |numero, votos|
      votos_por_candidato[numero] = votos.size
    end

    votos_por_candidato
  end

  def contabiliza_percentual_por_candidato
    votos_por_candidato = {}
    total_votos = contabiliza_total_de_votos

    candidatos_com_votos.each do |numero, votos|
      quantidade_de_votos = votos.size
      votos_por_candidato[numero] = calcula_percentual(quantidade_de_votos, total_votos)
    end

    votos_por_candidato.sort_by { |_, percentual| percentual }
  end

  def candidato_mais_votado
    candidato = candidatos_com_votos.max_by { |_, votos| votos }

    numero = candidato.first
    total_votos = candidato.last.size

    {
      numero: numero,
      total_votos: total_votos,
      percentual: calcula_percentual(total_votos, contabiliza_total_de_votos)
    }
  end

  private

  def candidatos_com_votos
    candidatos.select { |_, votos| votos.size > 0 }
  end

  def calcula_percentual(valor, valor_total)
    (valor.to_f / valor_total.to_f * 100.0).round(2)
  end
end