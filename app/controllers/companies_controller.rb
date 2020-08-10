class CompaniesController < ApplicationController

    def index
        @companies = Company.all
        render(:index)
    end

    def show
        company_object = params
        company_id = params[:id]
        @company = Company.find(company_id)
        @company = Company.find(params[:id])
    end

end