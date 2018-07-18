#'''Número por extenso.''' Escreva um programa que solicite ao usuário a digitação
#de um número até 99 e imprima-o na tela por extenso.

numeros = {
  1 => "um",
  2 => "dois",
  3 => "três",
  4 => "quatro",
  5 => "cinco",
  6 => "seis",
  7 => "sete",
  8 => "oito",
  9 => "nove",

  11 => "onze",
  12 => "doze",
  13 => "treze",
  14 => "quartorze",
  15 => "quinze",
  16 => "dezesseis",
  17 => "dezessete",
  18 => "dezoito",
  19 => "dezenove",


  10 => "dez",  
  20 => "vinte",
  30 => "trinta"
}



print "Digite um numero que você quer saber por extenso: "
n = gets.to_i

puts "Número: #{n}"
puts "Número por extenso: #{numeros[n]}"