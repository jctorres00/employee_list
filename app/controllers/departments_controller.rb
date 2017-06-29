class DepartmentsController < ApplicationController

  layout 'admin'

  def index
    @departments = Department.all
  end

  def show
    @department = Department.find(params[:id])
  end

  def new
    @department = Department.new
  end

  def create
    #instantiate a new object
    @department = Department.new(department_params)
    #save the object
    if @department.save
      flash[:notice] = "Departmnet created successfully."
      #if save is succesful redirect to the index page
      redirect_to(departments_path)
    else
      #if save fails, redisplay the form
      render('new')
  end
end

  def edit
    @department = Department.find(params[:id])
  end

  def update
    #Find an object
    @department = Department.find(params[:id])
    #update the object
    if @department.update_attributes(department_params)
      flash[:notice] = "Department updated successfully."
      #if save is succesful redirect to the index page
      redirect_to(departments_path(@department))
    else
      #if save fails, redisplay the form
      render('edit')
    end
  end

  def delete
    @department = Department.find(params[:id])
  end

  def destroy
    @department = Department.find(params[:id])
    @department.destroy
    flash[:notice] = "Department destroyed successfully."
    redirect_to(departments_path)

  end


  private

  def department_params
    params.required(:department).permit(:name)
  end

end
