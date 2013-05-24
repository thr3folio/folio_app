class ClientJobsController < ApplicationController
  # GET /client_jobs
  # GET /client_jobs.json
  def index
    @client_jobs = ClientJob.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @client_jobs }
    end
  end

  # GET /client_jobs/1
  # GET /client_jobs/1.json
  def show
    @client_job = ClientJob.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @client_job }
    end
  end

  # GET /client_jobs/new
  # GET /client_jobs/new.json
  def new
    @client_job = ClientJob.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @client_job }
    end
  end

  # GET /client_jobs/1/edit
  def edit
    @client_job = ClientJob.find(params[:id])
  end

  # POST /client_jobs
  # POST /client_jobs.json
  def create
    @client_job = ClientJob.new(params[:client_job])

    respond_to do |format|
      if @client_job.save
        format.html { redirect_to @client_job, notice: 'Client job was successfully created.' }
        format.json { render json: @client_job, status: :created, location: @client_job }
      else
        format.html { render action: "new" }
        format.json { render json: @client_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /client_jobs/1
  # PUT /client_jobs/1.json
  def update
    @client_job = ClientJob.find(params[:id])

    respond_to do |format|
      if @client_job.update_attributes(params[:client_job])
        format.html { redirect_to @client_job, notice: 'Client job was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @client_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_jobs/1
  # DELETE /client_jobs/1.json
  def destroy
    @client_job = ClientJob.find(params[:id])
    @client_job.destroy

    respond_to do |format|
      format.html { redirect_to client_jobs_url }
      format.json { head :no_content }
    end
  end
end
