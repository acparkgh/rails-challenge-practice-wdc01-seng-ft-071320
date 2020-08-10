class EmployeesController < ApplicationController


    def new
        @employee = Employee.new
        render(:new)
    end

    def create
        name = params[:employee][:name]
        title = params[:employee][:title]
        company = params[:employee][:company_id]
        employee = Employee.create({name: name, title: title, company_id: company})
        redirect_to(companies_path)
    end

    def destroy
        id = params[:id]
        Employee.destroy(id)
        redirect_to(companies_path)
    end

    def show
        id = params[:id]
        @employee = Employee.find(id)
        render(:show)   
    end



end
