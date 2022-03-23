class EmployeesController < ApplicationController
  def index
    employees = Employee.all
    render json: employees.as_json
  end
end
