#Utilizando listas faça um programa que faça 5 perguntas para uma pessoa sobre um crime.
#As perguntas são:
#a."Telefonou para a vítima?"
#b."Esteve no local do crime?"
#c."Mora perto da vítima?"
#d."Devia para a vítima?"
#e."Já trabalhou com a vítima?"
#O programa deve no final emitir uma classificação sobre a participação da pessoa no crime.
#Se a pessoa responder positivamente a 2 questões ela deve ser classificada como "Suspeita",
#entre 3 e 4 como "Cúmplice" e 5 como "Assassino". Caso contrário, ele será classificado como "Inocente".

def coleta_respostas
  perguntas = [
    "Telefonou para vítima? [S/N] ",
    "Esteve no local do crime? [S/N] ",
    "Mora perto da vítima? [S/N] ",
    "Devia para vítima? [S/N] ",
    "Já trabalho para a vítima? [S/N] "
  ]

  respostas = []

  perguntas.each do |pergunta|
    print pergunta
    respostas << gets.chomp
  end

  respostas
end

def obter_apenas_respostas_positivas(respostas)
  respostas.select { |resposta| resposta == "S" }
end

def classifica_participacao_no_crime(respostas)
  positivo = obter_apenas_respostas_positivas(respostas)
  respostas_positivas = positivo.size

  if respostas_positivas == 2
    "SUSPEITA"
  elsif respostas_positivas > 2 && respostas_positivas <= 4
    "CÚMPLICE"
  elsif respostas_positivas == 5
    "ASSASSINO"
  else
    "INOCENTE"
  end
end

respostas = coleta_respostas
classificacao = classifica_participacao_no_crime(respostas)
puts classificacao


