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
    @job = Job.new
    @job.title = params[:title]
    @job.description = params[:description]
    @job.location = params[:location]
    @job.email = params[:email]
    @job.url = params[:url]
    
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
    @job.title = params[:title]
    @job.description = params[:description]
    @job.location = params[:location]
    @job.email = params[:email]
    @job.url = params[:url]
    
    if @job.save
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
