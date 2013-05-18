class RecruiterNotesController < ApplicationController

  def index
    @recruiter_notes = RecruiterNote.all
  end

  def show
    @recruiter_note = RecruiterNote.find_by_id(params[:id])
  end

  def new
    @recruiter_note = RecruiterNote.new
  end

  def create
    @recruiter_note = RecruiterNote.new
    @recruiter_note.candidate_id = params[:candidate_id]
    @recruiter_note.note_id = params[:note_id]
    @recruiter_note.recruiter_id = params[:recruiter_id]
    
    if @recruiter_note.save
            redirect_to recruiter_notes_url
          else
      render 'new'
    end
  end

  def edit
    @recruiter_note = RecruiterNote.find_by_id(params[:id])
  end

  def update
    @recruiter_note = RecruiterNote.find_by_id(params[:id])
    @recruiter_note.candidate_id = params[:candidate_id]
    @recruiter_note.note_id = params[:note_id]
    @recruiter_note.recruiter_id = params[:recruiter_id]
    
    if @recruiter_note.save
            redirect_to recruiter_notes_url
          else
      render 'edit'
    end
  end

  def destroy
    @recruiter_note = RecruiterNote.find_by_id(params[:id])
    @recruiter_note.destroy
        redirect_to recruiter_notes_url
      end
end
