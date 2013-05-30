class CandidateRecruitersController < ApplicationController

  def index
    @candidate_recruiters = CandidateRecruiter.all
  end

  def show
    @candidate_recruiter = CandidateRecruiter.find_by_id(params[:id])
  end

  def new
    @candidate_recruiter = CandidateRecruiter.new
  end

  def create
    @candidate_recruiter = CandidateRecruiter.new(params[:candidate_recruiter])

    if @candidate_recruiter.save
            redirect_to candidate_recruiters_url
          else
      render 'new'
    end
  end

  def edit
    @candidate_recruiter = CandidateRecruiter.find_by_id(params[:id])
  end

  def update
    @candidate_recruiter = CandidateRecruiter.find_by_id(params[:id])

    if @candidate_recruiter.update_attributes(params[:candidate_recruiter])
      redirect_to candidate_recruiters_url
    else
      render 'edit'
    end
  end

  def destroy
    @candidate_recruiter = CandidateRecruiter.find_by_id(params[:id])
    @candidate_recruiter.destroy
    redirect_to candidate_recruiters_url
  end
end
