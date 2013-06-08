class CandidatesController < ApplicationController

  def index
    @candidates = Candidate.all
  end

  def show
    @candidate = Candidate.find_by_id(params[:id])
    # @candidate_sorted_recruiter_notes = RecruiterNote.where("candidate_id = #{@candidate.id}").order('note_id')
    # @notes = []
    # @notes << @candidate.recruiter_notes
    # @notes << @candidate.hiring_manager_notes
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
