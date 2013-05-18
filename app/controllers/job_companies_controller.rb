class JobCompaniesController < ApplicationController

  def index
    @job_companies = JobCompany.all
  end

  def show
    @job_company = JobCompany.find_by_id(params[:id])
  end

  def new
    @job_company = JobCompany.new
  end

  def create
    @job_company = JobCompany.new
    @job_company.job_id = params[:job_id]
    @job_company.company_id = params[:company_id]
    
    if @job_company.save
            redirect_to job_companies_url
          else
      render 'new'
    end
  end

  def edit
    @job_company = JobCompany.find_by_id(params[:id])
  end

  def update
    @job_company = JobCompany.find_by_id(params[:id])
    @job_company.job_id = params[:job_id]
    @job_company.company_id = params[:company_id]
    
    if @job_company.save
            redirect_to job_companies_url
          else
      render 'edit'
    end
  end

  def destroy
    @job_company = JobCompany.find_by_id(params[:id])
    @job_company.destroy
        redirect_to job_companies_url
      end
end
