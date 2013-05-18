class RecruitersController < ApplicationController

  def index
    @recruiters = Recruiter.all
  end

  def show
    @recruiter = Recruiter.find_by_id(params[:id])
  end

  def new
    @recruiter = Recruiter.new
  end

  def create
    @recruiter = Recruiter.new
    @recruiter.first_name = params[:first_name]
    @recruiter.last_name = params[:last_name]
    @recruiter.title = params[:title]
    @recruiter.company_id = params[:company_id]
    @recruiter.email = params[:email]
    
    if @recruiter.save
            redirect_to recruiters_url
          else
      render 'new'
    end
  end

  def edit
    @recruiter = Recruiter.find_by_id(params[:id])
  end

  def update
    @recruiter = Recruiter.find_by_id(params[:id])
    @recruiter.first_name = params[:first_name]
    @recruiter.last_name = params[:last_name]
    @recruiter.title = params[:title]
    @recruiter.company_id = params[:company_id]
    @recruiter.email = params[:email]
    
    if @recruiter.save
            redirect_to recruiters_url
          else
      render 'edit'
    end
  end

  def destroy
    @recruiter = Recruiter.find_by_id(params[:id])
    @recruiter.destroy
        redirect_to recruiters_url
      end
end
