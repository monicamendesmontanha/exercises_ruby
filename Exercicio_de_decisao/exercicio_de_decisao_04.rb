#Faça um Programa que verifique se uma letra digitada é vogal ou consoante. 

print "Digite em maiúsculo uma letra do alfabeto? "
letra = gets.chomp

if letra == "A" or letra == "E" or letra == "I" or letra == "O" or letra == "U"
  puts "Essa letra, #{letra}, do alfabeto é uma vogal!"
else
  puts "Essa letra, #{letra}, é uma consoante!"
end
