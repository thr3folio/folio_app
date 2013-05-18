class CandidateJobsController < ApplicationController

  def index
    @candidate_jobs = CandidateJob.all
  end

  def show
    @candidate_job = CandidateJob.find_by_id(params[:id])
  end

  def new
    @candidate_job = CandidateJob.new
  end

  def create
    @candidate_job = CandidateJob.new
    @candidate_job.candidate_id = params[:candidate_id]
    @candidate_job.job_id = params[:job_id]
    
    if @candidate_job.save
            redirect_to candidate_jobs_url
          else
      render 'new'
    end
  end

  def edit
    @candidate_job = CandidateJob.find_by_id(params[:id])
  end

  def update
    @candidate_job = CandidateJob.find_by_id(params[:id])
    @candidate_job.candidate_id = params[:candidate_id]
    @candidate_job.job_id = params[:job_id]
    
    if @candidate_job.save
            redirect_to candidate_jobs_url
          else
      render 'edit'
    end
  end

  def destroy
    @candidate_job = CandidateJob.find_by_id(params[:id])
    @candidate_job.destroy
        redirect_to candidate_jobs_url
      end
end
