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
    @recruiter = Recruiter.new(params[:recruiter])

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

    if @recruiter.update_attributes(params[:recruiter])
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
