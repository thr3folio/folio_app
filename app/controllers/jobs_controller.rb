class JobsController < ApplicationController
  before_filter :require_signed_in_user
  before_filter :authorize_user, only: [:edit, :update, :destroy]

  def index
    @jobs = []
    if recruiter? && params[:view] != "list"
      recruiter_jobs = JobRecruiter.where(:recruiter_id => '1')
      recruiter_jobs.each do |recruiter_job|
        @jobs << recruiter_job.job
      end
    else
      @jobs = Job.all
    end
  end

  def show
    if recruiter?
      @jobs = []
      recruiter_jobs = JobRecruiter.where(:recruiter_id => '1')
      recruiter_jobs.each do |recruiter_job|
        @jobs << recruiter_job.job
      end
      render 'jobs/recruiter/show'
    else
      @job = Job.find_by_id(params[:id])
    end
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(params[:job])

    if @job.save
      if recruiter? && signed_in?
      # create job_recruiters entry
      JobRecruiter.create(@job,session[:user_id],)
      end
      redirect_to jobs_url
    else
      render 'new'
    end
  end

  def edit
    @job = Job.find_by_id(params[:id])
  end

  def update
    @job = Job.find_by_id(params[:id])

    if @job.update_attributes(params[:job])
      redirect_to jobs_url
    else
      render 'edit'
    end
  end

  def destroy
    @job = Job.find_by_id(params[:id])
    @job.destroy
    redirect_to jobs_url
  end

end
