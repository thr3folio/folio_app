class JobsController < ApplicationController
  before_filter :require_signed_in_user
  # before_filter :determine_type_of_user, only: [:index, :edit, :update, :destroy]

  def determine_type_of_user
    case current_user.type
    when 'Candidate'
      flash[:notice] = "You're a candidate."
      redirect_to root_url
    when 'HiringManager'
      flash[:notice] = "You're a hiring manager."
      redirect_to root_url
    when 'Recruiter'
      flash[:notice] = "You're a recruiter."
      redirect_to root_url
    end
  end

  def index
    @jobs = []
    case current_user.type
    when 'Candidate'
      flash[:notice] = "You're a candidate."
      redirect_to root_url
    when 'HiringManager'
      flash[:notice] = "You're a hiring manager."
      redirect_to root_url
    when 'Recruiter' && params[:view] == 'all'
      flash[:notice] = "You're try to view all the jobs for the Agency."
      redirect_to root_url
    when 'Recruiter'
      flash[:notice] = "You're a recruiter."
      recruiter_jobs = JobRecruiter.where(:recruiter_id => session[:user_id])
      recruiter_jobs.each do |recruiter_job|
        @jobs << recruiter_job.job
      end
    end
    # if recruiter? && params[:view] != "list"
    #   recruiter_jobs = JobRecruiter.where(:recruiter_id => '1')
    #   recruiter_jobs.each do |recruiter_job|
    #     @jobs << recruiter_job.job
    #   end
    # else
    #   @jobs = Job.all
    # end
  end

  def show
    @job = Job.find_by_id(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @client }
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
