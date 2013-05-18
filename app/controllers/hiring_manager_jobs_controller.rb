class HiringManagerJobsController < ApplicationController

  def index
    @hiring_manager_jobs = HiringManagerJob.all
  end

  def show
    @hiring_manager_job = HiringManagerJob.find_by_id(params[:id])
  end

  def new
    @hiring_manager_job = HiringManagerJob.new
  end

  def create
    @hiring_manager_job = HiringManagerJob.new
    @hiring_manager_job.hiring_manager_id = params[:hiring_manager_id]
    @hiring_manager_job.job_id = params[:job_id]
    
    if @hiring_manager_job.save
            redirect_to hiring_manager_jobs_url
          else
      render 'new'
    end
  end

  def edit
    @hiring_manager_job = HiringManagerJob.find_by_id(params[:id])
  end

  def update
    @hiring_manager_job = HiringManagerJob.find_by_id(params[:id])
    @hiring_manager_job.hiring_manager_id = params[:hiring_manager_id]
    @hiring_manager_job.job_id = params[:job_id]
    
    if @hiring_manager_job.save
            redirect_to hiring_manager_jobs_url
          else
      render 'edit'
    end
  end

  def destroy
    @hiring_manager_job = HiringManagerJob.find_by_id(params[:id])
    @hiring_manager_job.destroy
        redirect_to hiring_manager_jobs_url
      end
end
