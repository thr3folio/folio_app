class JobsController < ApplicationController
  before_filter :require_signed_in_user
  # before_filter :determine_type_of_user, only: [:index, :edit, :update, :destroy]

  def determine_type_of_user
    case current_user
    when current_user.is_candidate?
      flash[:notice] = "You're a candidate."
      redirect_to root_url
    when current_user.is_hiring_manager?
      flash[:notice] = "You're a hiring manager."
      redirect_to root_url
    when current_user.is_recruiter?
      flash[:notice] = "You're a recruiter."
      redirect_to root_url
    end
  end

  def index
    @jobs = []
    case
    when is_candidate?
      flash[:notice] = "You're a candidate."
      redirect_to root_url
    when is_hiring_manager?
      flash[:notice] = "You're a hiring manager."
      redirect_to root_url
    when is_recruiter?
      if params[:view] == 'all'
        clients = current_user.recruiter_attribute.agency.clients
        clients.each do |client|
          client.jobs.each do |job|
            @jobs << job
          end
        end
      else
        flash[:notice] = "You're a recruiter."
        recruiter_jobs = JobRecruiter.where(:recruiter_id => session[:user_id])
        recruiter_jobs.each do |recruiter_job|
          @jobs << recruiter_job.job
        end
      end
    end
  end

  def show
    if current_user.recruiter?
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
      if is_recruiter? && signed_in?
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
