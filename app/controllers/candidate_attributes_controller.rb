class CandidateAttributesController < ApplicationController
  # GET /candidate_attributes
  # GET /candidate_attributes.json
  def index
    @candidate_attributes = CandidateAttribute.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @candidate_attributes }
    end
  end

  # GET /candidate_attributes/1
  # GET /candidate_attributes/1.json
  def show
    @candidate_attribute = CandidateAttribute.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @candidate_attribute }
    end
  end

  # GET /candidate_attributes/new
  # GET /candidate_attributes/new.json
  def new
    @candidate_attribute = CandidateAttribute.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @candidate_attribute }
    end
  end

  # GET /candidate_attributes/1/edit
  def edit
    @candidate_attribute = CandidateAttribute.find(params[:id])
  end

  # POST /candidate_attributes
  # POST /candidate_attributes.json
  def create
    @candidate_attribute = CandidateAttribute.new(params[:candidate_attribute])

    respond_to do |format|
      if @candidate_attribute.save
        format.html { redirect_to @candidate_attribute, notice: 'Candidate attribute was successfully created.' }
        format.json { render json: @candidate_attribute, status: :created, location: @candidate_attribute }
      else
        format.html { render action: "new" }
        format.json { render json: @candidate_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /candidate_attributes/1
  # PUT /candidate_attributes/1.json
  def update
    @candidate_attribute = CandidateAttribute.find(params[:id])

    respond_to do |format|
      if @candidate_attribute.update_attributes(params[:candidate_attribute])
        format.html { redirect_to @candidate_attribute, notice: 'Candidate attribute was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @candidate_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /candidate_attributes/1
  # DELETE /candidate_attributes/1.json
  def destroy
    @candidate_attribute = CandidateAttribute.find(params[:id])
    @candidate_attribute.destroy

    respond_to do |format|
      format.html { redirect_to candidate_attributes_url }
      format.json { head :no_content }
    end
  end
end
