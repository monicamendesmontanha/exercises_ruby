print => pula uma linha
puts or p => imprime na mesma linha

nome_da_variavel = recebe_alguma_coisa

.gets => ler a resposta
.chomp => leitura de string
obs. nesse caso usar o xxx.chomp => xxx == "nome_esperado"

.to_f => transformar em decimal
.to_i => transformar em inteiro
.to_a => transformar em array 
exemplo:
#rag = Range.new(numero_01,numero_02)
#rag = (numero_01..numero_02).to_a

.round(2) => arrendondar casas decimais
def nome_qualquer (argumento1, argumento2)

  return => forçar saída
end

variavel = passa_nome_da_funcao_nome_qualquer(passa_os_argumentos_dela_trambém)


** => potência
% => resto da divisão
&& or and => e (preferir: &&)
|| or or => ou (preferir: ||)
!= => diferente
== => igual
<= => menor ou igual
>= => maior ou igual

pluralizar_números, adicionar o + "s", por exemplo => ordem = ordem + "s"

Herança: require_relative "./calcula_media" => se quiser fazer referência a uma função em outro lugar.

Array: É uma coleção ordenada de qualquer objeto indexado por um inteiro. Cada elemento de um Array é associado e referenciado por índice.

01) array_a = [] 
array_a.push(09)

[0]09
array_a.push(777)
[0]09,
[1]777

02) array_b = Array.new
array_b.push(88)

[0]88

03) array_c = %w(curso de ruby on rails)
[0] "curso",
[1] "de",
[2] "ruby"
[3] "on"
[4] "rails"

Hash: é uma coleção de pares CHAVE-VALOR. 
É similar a um Array exceto por seus índices serem definidos arbitrariamente.
{ :key => :value }

options = {"font => "arial", "font_size" => 12}

-------------------------- exemplo de Hash -----------------------------------
def verifica_dia_corresponente_da_semana(numero)
  if numero <= 0 or numero > 7
    return 'valor inválido'  
  end

Isso é um Hash (map em outras linguagens, conhecido também como hashmap)
dias_da_semana = {
  1 => 'Domingo',
  2 => 'Segunda',
  3 => 'Terça',
  4 => 'Quarta',
  5 => 'Quinta',
  6 => 'Sexta',
  7 => 'Sábado'
}

dias_da_semana[numero]

-----------------------------------------------------------------------------


----------------------- exemplo de método boleano ---------------------------

def bissexto?(ano)
  (ano % 4 == 0 and ano % 100 != 0) or (ano % 400 == 0)
end

print "Digite um ano qualquer para saber se ele é bissexto ou não: [xxxx]"
ano = gets.to_i

if bissexto?(ano)
  puts "Esse ano #{ano} é bissexto"
else
  puts "NÃO é bissexto!" 
end

-----------------------------------------------------------------------------


------- exemplo de SPLIT, separador de string através de um critério --------

print "Digite sua data de nascimento: [dd/mm/aaaa] "
#data = '32/02/1988'.split('/')
data = gets.split('/')

dia = data[0].to_i
mes = data[1].to_i
ano = data[2].to_i

-----------------------------------------------------------------------------

--------- exemplo de ARRAY, .size (tamanho_do_array) -----

numeros = gets.split('')
numeros.size -> 3 (tamanho do array)
COMECA DO ZERO
numeros -> [3, 2, 6]
numeros[0].to_i -> 3
numeros[1] -> '2'
numeros[2] -> '6'
numeros[3] -> ERRO
------------------------------------------------------------------------

------------------ exemplo de SELECT, buscador alguma coisa em um array 
(string ou numero) através de um critério ------------------------------


total_sim = todas_respostas.select { |x| x == 'S' } #['S', 'S', 'S']
total_nao = todas_respostas.select { |x| x == 'N' } #['N', 'N']

p total_sim
p total_nao
------------------------------------------------------------------------


---------------------- SOMAR ELEMENTOS DE UM ARRAY -----------------------
array = [1, 2, 3, 5, 8]

total = 0
array.each do |array|
  total += array
end

puts total # => 19
-------------------------------------------------------------------------

MÉTODOS (ações)
array.TAB => Mostrar todas as possibilidades de métodos (y or n) 

.size => mostra quantos elementos tem no array.



PARÂMETROS

.eql? => Passa um parâmetro e uma interrogação como questionamento.
exemplo: array.size.eql?(5) => false    array.size.eql?(3) => true

BLOCOS

.each => extrair os elementos de um bloco de elementos 
exemplo: 
array.each do |elm|
  puts elm
end

[0] 89,
[1] 777,
[2] "ruby"

CLASS é uma construção que é usada para criar instância de si mesmo.
No Ruby tudo é objeto! .CLASSES
exemplos:
a = 123
a.class => Fixnum < Integer

nome = "monica"
nome.class => String < Object

01) Criar class
class PessoaLegal
  dentro da classe vem os métodos (que são as ações)
  def falar 
    pus "Ola, eu estou falando!"
  end
end

pss = Pessoa.new
pss.falar
=> "Ola, eu estou falando!"
pss.class
Pessoa < Object

02) Herança
exemplos:
require_relative "./calcula_media"
or
require_relative "pessoa"

class Atleta < Pessoa => O que tem em Pessoa, tem também em Atleta.
  def correr
    puts "correndo"
  end
end


MÓDULO é uma coleção de métodos e constantes

MIXINS

YIELD
