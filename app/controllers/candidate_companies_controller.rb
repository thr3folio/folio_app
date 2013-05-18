class CandidateCompaniesController < ApplicationController

  def index
    @candidate_companies = CandidateCompany.all
  end

  def show
    @candidate_company = CandidateCompany.find_by_id(params[:id])
  end

  def new
    @candidate_company = CandidateCompany.new
  end

  def create
    @candidate_company = CandidateCompany.new
    @candidate_company.candidate_id = params[:candidate_id]
    @candidate_company.company_id = params[:company_id]
    
    if @candidate_company.save
            redirect_to candidate_companies_url
          else
      render 'new'
    end
  end

  def edit
    @candidate_company = CandidateCompany.find_by_id(params[:id])
  end

  def update
    @candidate_company = CandidateCompany.find_by_id(params[:id])
    @candidate_company.candidate_id = params[:candidate_id]
    @candidate_company.company_id = params[:company_id]
    
    if @candidate_company.save
            redirect_to candidate_companies_url
          else
      render 'edit'
    end
  end

  def destroy
    @candidate_company = CandidateCompany.find_by_id(params[:id])
    @candidate_company.destroy
        redirect_to candidate_companies_url
      end
end
