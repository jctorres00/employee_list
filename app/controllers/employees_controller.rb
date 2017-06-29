class EmployeesController < ApplicationController


  layout 'admin'
  def index
    @employees = Employee.all
    @departments = Department.all
  end

  def show
    @employee = Employee.find(params[:id])

  end

  def new
    @employee = Employee.new
    @departments = Department.all
  end

  def create
    #instantiate a new object
   @employee = Employee.new(employee_params)
    #save the object
    if @employee.save
      flash[:notice] = "Employee created successfully."

      #if save is succesful redirect to the index page
      redirect_to(employees_path)
    else
      #if save fails, redisplay the form
      render('new')
    end
  end

  def edit
    @employee = Employee.find(params[:id])
    @departments = Department.all

  end

  def update
    #Find an object
    @employee = Employee.find(params[:id])
    #update the object
    if @employee.update_attributes(employee_params)
      flash[:notice] = "Employee updated successfully."

      #if save is succesful redirect to the index page
      redirect_to(employees_path(@employee))
    else
      #if save fails, redisplay the form
      render('edit')
    end
  end

  def delete
    @employee = Employee.find(params[:id])
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    flash[:notice] = "Departmnet deleted successfully."
    redirect_to(employees_path)
  end


  private

  def employee_params
    params.required(:employee).permit(:last_name, :first_name, :jod_tittle, :email, :department_id)
  end


end
