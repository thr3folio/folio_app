class CandidateJobsController < ApplicationController

  def index
    @job = Job.find_by_id(params["job_id"].to_i)
    @candidate_jobs = @job.candidates
  end

  def show
    @candidate_job = CandidateJob.find_by_id(params[:id])
  end

  def new
    @candidate_job = CandidateJob.new
  end

  def create
    @candidate_job = CandidateJob.new(params[:candidate_job])

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

    if @candidate_job.update_attributes(params[:candidate_job])
            redirect_to @candidate_job
          else
      render 'edit'
    end
  end

  def destroy
    @candidate_job = CandidateJob.find_by_id(params[:id])
    @candidate_job.destroy
    redirect_to candidate_jobs_url
  end

  def submit_jobs_for_candidate
    params[:job_ids].each do |job_id|
      cj = CandidateJob.new
      cj.job_id = job_id
      cj.candidate_id = params[:candidate_id]
      cj.save
    end if params[:job_ids]
    redirect_to candidate_url(params[:candidate_id]), notice: "Candidate Submitted For Selected Jobs"
  end
end


