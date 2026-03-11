class EmployeeAPI_Request
  
    def find_employee
        EmployeeAPI.get('/employees')
    end

    def create_employee (name, salary, age)
        EmployeeAPI.post('/create', body: {
            "employee_name": name,
            "employee_salary": salary,
            "employee_age": age,
            "profile_image": ""
          }.to_json)
    end

    def update_employee (id, name, salary, age)
            EmployeeAPI.put("/update/#{id}", body: {
                "employee_name": name,
                "employee_salary": salary,   
                "employee_age": age,
                "profile_image": ""
            }.to_json)
    end

    def delete_employee (id)
        EmployeeAPI.delete("/delete/#{id.to_s}")
    end

end