class CandidatesController < ApplicationController

  def index
    @candidates = Candidate.all
  end

  def show
    @candidate = Candidate.find_by_id(params[:id])
  end

  def new
    @candidate = Candidate.new
  end

  def create
    @candidate = Candidate.new(params[:candidate])

    if @candidate.save
            redirect_to candidates_url
          else
      render 'new'
    end
  end

  def edit
    @candidate = Candidate.find_by_id(params[:id])
  end

  def update
    @candidate = Candidate.find_by_id(params[:id])


    if @candidate.update_attributes(params[:candidate])
      redirect_to candidates_url
    else
      render 'edit'
    end
  end

  def destroy
    @candidate = Candidate.find_by_id(params[:id])
    @candidate.destroy
    redirect_to candidates_url
  end
end
