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
    @candidate = Candidate.new
    @candidate.first_name = params[:first_name]
    @candidate.last_name = params[:last_name]
    @candidate.title = params[:title]
    @candidate.industry = params[:industry]
    @candidate.years_experience = params[:years_experience]
    @candidate.email = params[:email]
    @candidate.bio = params[:bio]
    @candidate.company_id = params[:company_id]

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
    @candidate.first_name = params[:first_name]
    @candidate.last_name = params[:last_name]
    @candidate.title = params[:title]
    @candidate.industry = params[:industry]
    @candidate.years_experience = params[:years_experience]
    @candidate.email = params[:email]
    @candidate.bio = params[:bio]
    @candidate.company_id = params[:company_id]

    if @candidate.save
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
