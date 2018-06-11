#A série de Fibonacci é formada pela seqüência 1,1,2,3,5,8,13,21,34,55,... 
#Faça um programa capaz de gerar a série até o n−ésimo termo.

#A sequência é definida mediante a seguinte fórmula:
#Fn = Fn - 1 + Fn - 2
#Assim, começando pelo 1, essa sequência é formada somando cada numeral com o numeral que o antecede. 
#No caso do 1, repete-se esse numeral e soma-se, ou seja, 1 + 1 = 2.


serie_fibonacci = []

atual = 1
anterior = 0

while atual < 90 do
  temp = atual
  atual = anterior + atual
  anterior = temp

  serie_fibonacci << atual
end

p serie_fibonacci
