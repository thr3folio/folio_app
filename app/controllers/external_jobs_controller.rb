class ExternalJobsController < ApplicationController
  # GET /external_jobs
  # GET /external_jobs.json
  def index
    @external_jobs = ExternalJob.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @external_jobs }
    end
  end

  # GET /external_jobs/1
  # GET /external_jobs/1.json
  def show
    @external_job = ExternalJob.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @external_job }
    end
  end

  # GET /external_jobs/new
  # GET /external_jobs/new.json
  def new
    @external_job = ExternalJob.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @external_job }
    end
  end

  # GET /external_jobs/1/edit
  def edit
    @external_job = ExternalJob.find(params[:id])
  end

  # POST /external_jobs
  # POST /external_jobs.json
  def create
    @external_job = ExternalJob.new(params[:external_job])

    respond_to do |format|
      if @external_job.save
        format.html { redirect_to @external_job, notice: 'External job was successfully created.' }
        format.json { render json: @external_job, status: :created, location: @external_job }
      else
        format.html { render action: "new" }
        format.json { render json: @external_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /external_jobs/1
  # PUT /external_jobs/1.json
  def update
    @external_job = ExternalJob.find(params[:id])

    respond_to do |format|
      if @external_job.update_attributes(params[:external_job])
        format.html { redirect_to @external_job, notice: 'External job was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @external_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /external_jobs/1
  # DELETE /external_jobs/1.json
  def destroy
    @external_job = ExternalJob.find(params[:id])
    @external_job.destroy

    respond_to do |format|
      format.html { redirect_to external_jobs_url }
      format.json { head :no_content }
    end
  end
end
