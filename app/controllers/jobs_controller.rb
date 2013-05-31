class JobsController < ApplicationController

  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find_by_id(params[:id])
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(params[:job])

    if @job.save
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
