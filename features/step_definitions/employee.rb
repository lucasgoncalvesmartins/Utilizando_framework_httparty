Dado('que o usuario consulte informacoes de um funcionario') do
  @getlist = EmployeeAPI_Request.new
end

Quando('ele realizar a pesquisa') do
  @list_employees = @getlist.find_employee
end

Entao('uma lista de funcionarios deve retornar') do
  expect(@list_employees.code).to eql 200
  expect(@list_employees.message).to eql 'OK'
end


Dado('que o usuario cadastre um novofuncionario') do
  @create = EmployeeAPI_Request.new
end

Quando('ele deve enviar as informacoes do funcionario') do
  @create_employee = @create.create_employee(DATABASE[:name][:name1], DATABASE[:salary][:salary1], DATABASE[:age][:age1])
  puts @create_employee
end


Entao('esse funcionario sera cadastrado') do
  expect(@create_employee.code).to eql (200)
  expect(@create_employee.message).to eql 'OK'
  expect(@create_employee["status"]).to eql 'success'
  expect(@create_employee["message"]).to eql 'Successfully! Record has been added.'
  expect(@create_employee.parsed_response["data"]["employee_name"]).to eql DATABASE[:name][:name1]
  expect(@create_employee.parsed_response["data"]["employee_salary"]).to eql DATABASE[:salary][:salary1]
  expect(@create_employee.parsed_response["data"]["employee_age"]).to eql DATABASE[:age][:age1]

end


Dado('que o usuario altere uma informacao de um funcionario') do
  @request = EmployeeAPI_Request.new
  
end

Quando('ele enviar as novas informacoes') do
  @update_employee = @request.update_employee(123, 'John Doe Updated', 55000, 31)
  puts @update_employee
end

Entao('as informacoes serao alteradas') do
expect(@update_employee.code).to eql (200)
  expect(@update_employee.message).to eql 'OK'
  expect(@update_employee["status"]).to eql 'success'
  expect(@update_employee["message"]).to eql 'Successfully! Record has been updated.'
  expect(@update_employee.parsed_response["data"]["employee_name"]).to eql 'John Doe Updated'
  expect(@update_employee.parsed_response["data"]["employee_salary"]).to eql (55000)
  expect(@update_employee.parsed_response["data"]["employee_age"]).to eql (31)
end


Dado('que o usuario queria deletar um funcionario') do
  @request = EmployeeAPI_Request.new
end

Quando('ele enviar a identificacao unica') do
  @delete_employee = @request.delete_employee(@request.find_employee['data'][0]['id'])
end

Entao('o funcionario sera deletado do sistema') do
  expect(@delete_employee.code).to eql (200)
  expect(@delete_employee.message).to eql 'OK'
  expect(@delete_employee["status"]).to eql 'success'
  expect(@delete_employee["data"]).to eql '123'
  expect(@delete_employee["message"]).to eql 'Successfully! Record has been deleted'
end