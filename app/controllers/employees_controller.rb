class EmployeesController < ApplicationController
  def index
    employees = Employee.all
    render json: employees.as_json
  end

  def show
    employee = Employee.find_by(id: params[:id])
    render json: employee.as_json
  end

  def create
    employee = Employee.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone: params[:phone],
      job_title: params[:job_title],
      department_id: params[:department_id],
      admin: params[:admin]
    )
    employee.save
    render json: employee.as_json
  end

end
