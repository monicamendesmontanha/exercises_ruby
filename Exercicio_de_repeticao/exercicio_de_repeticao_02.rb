#Faça um programa que leia um nome de usuário e a sua senha e não aceite a senha
#igual ao nome do usuário, mostrando uma mensagem de erro e voltando a pedir as
#informações.
def dados_do_usuario
  print "Digite seu usuário: "
  usuario = gets
  return usuario
end

def dados_da_senha
  print "Digite sua senha: "
  senha = gets
  return senha 
  #ou só: return gets
  #ou só: gets (porque a função sempre retorna alguma coisa na última linha.)
end

def usuario_senha_invalidos?(usuario, senha)
  resultado = usuario == senha
  return resultado
end

usuario = dados_do_usuario
senha = dados_da_senha

while usuario_senha_invalidos?(usuario, senha) do 
  puts "Usuário e Senha inválidas, as mesmas não podem ser iguais."
  
  usuario = dados_do_usuario
  senha = dados_da_senha
end

puts "Usuário e Senha criados com sucesso!"