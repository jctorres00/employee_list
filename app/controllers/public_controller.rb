class PublicController < ApplicationController

  layout 'public'

  before_action :setup_navigation


  def index
    #intro text
  end

  def show
    @employee = Employee.where(:department_id => params[:id])
    @department = Department.where(:id => params[:id])
    if @employee.nil?
      redirect_to(root_path)
    else
      #display employee content
    end

  end

  private
  def setup_navigation
    @departments = Department.all
  end




end
