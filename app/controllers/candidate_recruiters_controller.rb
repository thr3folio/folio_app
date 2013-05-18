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
    @candidate_recruiter = CandidateRecruiter.new
    @candidate_recruiter.candidate_id = params[:candidate_id]
    @candidate_recruiter.recruiters_id = params[:recruiters_id]
    
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
    @candidate_recruiter.candidate_id = params[:candidate_id]
    @candidate_recruiter.recruiters_id = params[:recruiters_id]
    
    if @candidate_recruiter.save
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
