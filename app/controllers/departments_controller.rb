class DepartmentsController < ApplicationController
  def index
    departments = Department.all
    render json: departments.as_json
  end

  def show
    department = Department.find_by(id: params[:id])
    render json: department.as_json
  end

  def create
    department = Department.new(
      department_name: params[:department_name],
      manager: params[:manager],
      code: params[:code]
    )
    department.save
    render json: department.as_json
  end

  def update
    department = Department.find_by(id: params[:id])
    department.department_name = params[:department_name] || department.department_name
    department.manager = params[:manager] || department.manager
    department.code = params[:code] || department.code
    
    department.save
    render json: department.as_json
  end

  def destroy
    department = Department.find_by(id: params[:id])
    department.destroy
    render json: {message: "Department TAKEN CARE OF"}
  end

end

