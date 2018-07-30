#As Organizações Tabajara resolveram dar um abono aos seus colaboradores em reconhecimento ao
#bom resultado alcançado durante o ano que passou. Para isto contratou você para desenvolver a
#aplicação que servirá como uma projeção de quanto será gasto com o pagamento deste abono.
#Após reuniões envolvendo a diretoria executiva, a diretoria financeira e os representantes
#do sindicato laboral, chegou-se a seguinte forma de cálculo:

#a.Cada funcionário receberá o equivalente a 20% do seu salário bruto de dezembro;
#a.O piso do abono será de 100 reais, isto é, aqueles funcionários cujo salário for muito baixo,
#recebem este valor mínimo;

#Neste momento, não se deve ter nenhuma preocupação com colaboradores com tempo menor de casa,
#descontos, impostos ou outras particularidades. Seu programa deverá permitir a digitação do
#salário de um número indefinido (desconhecido) de salários. Um valor de salário igual a 0 (zero)
#encerra a digitação. Após a entrada de todos os dados o programa deverá calcular o valor do
#abono concedido a cada colaborador, de acordo com a regra definida acima.
#Ao final, o programa deverá apresentar:

# Analise
# 1. Obtem salario do funcionario
# 2. Calcula abono salarial (quando chegar fim do ano, o seu abono vai ser X)
# 3. Resolve as perguntas abaixo....

#a. salário de cada funcionário, juntamente com o valor do abono;
#b. número total de funcionário processados;
#c. valor total a ser gasto com o pagamento do abono;
#d. número de funcionário que receberá o valor mínimo de 100 reais;
#e. maior valor pago como abono;
#A tela abaixo é um exemplo de execução do programa, apenas para fins ilustrativos.
#  Os valores podem mudar a cada execução do programa.
#Projeção de Gastos com Abono
#============================
#Salário: 1000
#Salário: 300
#Salário: 500
#Salário: 100
#Salário: 4500
#Salário: 0

#Salário           Abono
#R$ 1000.00        R$ 200.00
#R$ 300.00         R$ 100.00
#R$ 500.00         R$ 100.00
#R$ 100.00         R$ 100.00
#R$ 4500.00        R$ 900.00

#Foram processados 5 colaboradores
#Total gasto com abonos: R$ 1400.00
#Valor mínimo pago a 3 colaboradores
#Maior valor de abono pago: R$ 900.00

def solicita_valor_salario
  print "Valor salário: "
  valor = gets.to_f

  valor
end

def calcula_valor_abono(salario)
  valor = salario * 0.20

  if valor < 100
    return 100.0
  else
    return valor.to_f
  end
end

# funcionario = {
#   salario: [],
#   abono: []
# }

colaboradores = []

class Funcionario
  attr_reader :salario, :abono

  def initialize(salario, abono)
    @salario = salario
    @abono = abono
  end
end

3.times do
  valor_salario = solicita_valor_salario
  valor_abono = calcula_valor_abono(valor_salario)

  funcionario = Funcionario.new(valor_salario, valor_abono)
  colaboradores << funcionario
end

colaboradores.each do |colaborador|
  puts "\n\n>>>>> Funcionario: #{colaborador}"

  puts "O valor do salário é R$ #{colaborador.salario.round(2)}."
  puts "Abono salarial: R$ #{colaborador.abono.round(2)}."
end

total_abono = colaboradores.sum { |colaborador| colaborador.abono }
puts "\nValor total a ser gasto com o pagamento do abono: #{total_abono}"

funcionarios_que_receberao_valor_minimo = colaboradores.select { |colaborador| colaborador.abono == 100 }
puts "\nFuncionários que receberão o valor mínimo do abono: #{funcionarios_que_receberao_valor_minimo.size}"

funcionario_com_maior_valor_pago_com_abono = colaboradores.max_by { |colaborador| colaborador.abono }
puts "\nMaior valor pago como abono: #{funcionario_com_maior_valor_pago_com_abono.abono.round(2)}"
