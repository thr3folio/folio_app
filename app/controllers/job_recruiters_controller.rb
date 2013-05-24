class JobRecruitersController < ApplicationController
  # GET /job_recruiters
  # GET /job_recruiters.json
  def index
    @job_recruiters = JobRecruiter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @job_recruiters }
    end
  end

  # GET /job_recruiters/1
  # GET /job_recruiters/1.json
  def show
    @job_recruiter = JobRecruiter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @job_recruiter }
    end
  end

  # GET /job_recruiters/new
  # GET /job_recruiters/new.json
  def new
    @job_recruiter = JobRecruiter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @job_recruiter }
    end
  end

  # GET /job_recruiters/1/edit
  def edit
    @job_recruiter = JobRecruiter.find(params[:id])
  end

  # POST /job_recruiters
  # POST /job_recruiters.json
  def create
    @job_recruiter = JobRecruiter.new(params[:job_recruiter])

    respond_to do |format|
      if @job_recruiter.save
        format.html { redirect_to @job_recruiter, notice: 'Job recruiter was successfully created.' }
        format.json { render json: @job_recruiter, status: :created, location: @job_recruiter }
      else
        format.html { render action: "new" }
        format.json { render json: @job_recruiter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /job_recruiters/1
  # PUT /job_recruiters/1.json
  def update
    @job_recruiter = JobRecruiter.find(params[:id])

    respond_to do |format|
      if @job_recruiter.update_attributes(params[:job_recruiter])
        format.html { redirect_to @job_recruiter, notice: 'Job recruiter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @job_recruiter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_recruiters/1
  # DELETE /job_recruiters/1.json
  def destroy
    @job_recruiter = JobRecruiter.find(params[:id])
    @job_recruiter.destroy

    respond_to do |format|
      format.html { redirect_to job_recruiters_url }
      format.json { head :no_content }
    end
  end
end
