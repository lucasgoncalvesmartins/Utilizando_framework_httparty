Dado('que o usuario consulte informacoes de um funcionario') do
  @teste = HTTParty.get('http://dummy.restapiexample.com/api/v1/employees')
  puts @teste
end

Quando('ele realizar a pesquisa') do
  
end

Entao('uma lista de funcionarios deve retornar') do
  
end