#Faça um programa que leia e valide as seguintes informações:
# a. Nome: maior que 3 caracteres;
# b. Idade: entre 0 e 150;
# c. Salário: maior que zero;
# d. Sexo: 'f' ou 'm';
# e. Estado Civil: 's', 'c', 'v', 'd';

nome = "monica"
idade = 31
salario = 100
sexo = "f"
estado_civil = "c"

FEMININO = "f"
MASCULINO = "m"

SOLTEIRO = "s"
CASADO = "c"
VIUVO = "v"
DIVORCIADO = "d"

 def informacoes_validas?(nome, idade, salario, sexo, estado_civil)

    if nome.size < 3
      return false
    end

    if idade < 0 or idade > 150
      return false
    end

    if salario < 0
      return false
    end

    if sexo != FEMININO and sexo != MASCULINO
      return false
    end

    if estado_civil != SOLTEIRO and estado_civil != CASADO and estado_civil != VIUVO and estado_civil != DIVORCIADO
      return false
    end
    
    return true
end

resultado = informacoes_validas?(nome, idade, salario, sexo, estado_civil)

if resultado
  puts "Cadastro efetuado."
else 
  puts "Dados inválidos."
end