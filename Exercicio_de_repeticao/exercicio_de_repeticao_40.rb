#Foi feita uma estatística em cinco cidades brasileiras para coletar dados sobre
#acidentes de trânsito. Foram obtidos os seguintes dados:
#a. Código da cidade;
#b. Número de veículos de passeio (em 1999);
#c. Número de acidentes de trânsito com vítimas (em 1999).
#Deseja-se saber:
#d. Qual o 1) maior e 2) menor índice de acidentes de transito e a que cidade pertence;
#e. 3) Qual a média de veículos nas cinco cidades juntas;
#f. 4) Qual a média de acidentes de trânsito nas cidades com menos de 2.000 veículos de passeio.

def soma(x)
  total = 0
  x.each do |n|
    total = total + n
  end

  return total
end

conjunto_codigo = []
conjunto_veiculos = []
conjunto_acidentes = []

contador = 0
while contador < 3 do
  print "Codigo da cidade: "
  codigo = gets.to_i
  conjunto_codigo << codigo
  print "Numero de veiculos de passeio: "
  veiculos = gets.to_i
  conjunto_veiculos << veiculos
  print "Numero de acidentes de transito com vitimas: "
  acidentes = gets.to_i
  conjunto_acidentes << acidentes

  contador = contador + 1
end



# O "codigo" abaixo ta saindo sempre o referente ao codigo da ultima cidade digitada.
maior_indice_acidentes = conjunto_acidentes.max
puts "1) O maior indice é de #{maior_indice_acidentes} acidentes e corresponde a cidade #{codigo}."
menor_indice_acidentes = conjunto_acidentes.min
puts "2) O menor indice é de #{menor_indice_acidentes} acidentes e corresponde a cidade #{codigo}."

total_veiculos = soma(conjunto_veiculos)
media_veiculos = total_veiculos/5
puts " 3) A media é de #{media_veiculos} veiculos nas cinco cidades."



if veiculos <= 200 
    cidades_com_menos_veiculos = []
    cidades_com_menos_veiculos << veiculos
    total_cidades_com_menos_veiculos = soma(cidades_com_menos_veiculos)
    quantidade_de_cidades = total_cidades_com_menos_veiculos.size
    media_acidentes_cidades_menores = total_cidades_com_menos_veiculos/quantidade_de_cidades
    puts "A cidades com menos de 200 veículos possui uma media de #{media_acidentes_cidades_menores} acidentes." 
end
