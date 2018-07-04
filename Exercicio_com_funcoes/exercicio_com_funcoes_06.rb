#Faça um programa que converta da notação de 24 horas para a notação de 12
#horas. Por exemplo, o programa deve converter 14:25 em 2:25 P.M. A entrada é
#dada em dois inteiros. Deve haver pelo menos duas funções: uma para fazer a
#conversão e uma para a saída. Registre a informação A.M./P.M. como um valor
#‘A’ para A.M. e ‘P’ para P.M. Assim, a função para efetuar as conversões terá um
#parâmetro formal para registrar se é A.M. ou P.M. Inclua um loop que permita
#que o usuário repita esse cálculo para novos valores de entrada todas as vezes que desejar.

def converte_hora(hora)
  equivalencia_da_hora = {
    13 => "1",
    14 => "2",
    15 => "3",
    16 => "4",
    17 => "5",
    18 => "6",
    19 => "7",
    20 => "8",
    21 => "9",
    22 => "10",
    23 => "11",
    24 => "12"
  }
end

Hora = Struct.new(:h_agora, :h_convertida)

print "Quer converter a hora da notação de 24 para 12 horas? [SIM/NAO]"
resposta = gets.chomp

if resposta == "SIM"
  print "Digite que horas são: [24H]"
  hora_agora = gets.to_i

  print "Digite os minutos: "
  minutos_agora = gets.to_i
end

hora = Hora.new(hora_agora, hora_convertida)

if hora_agora > 12 
  conversao = converte_hora(hora_agora)
  hora_convertida = conversao
  puts "#{hora_convertida}:#{minutos_agora}"
else
  puts "#{hora_agora}:#{minutos_agora}"
end