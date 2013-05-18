class HiringManagerNotesController < ApplicationController

  def index
    @hiring_manager_notes = HiringManagerNote.all
  end

  def show
    @hiring_manager_note = HiringManagerNote.find_by_id(params[:id])
  end

  def new
    @hiring_manager_note = HiringManagerNote.new
  end

  def create
    @hiring_manager_note = HiringManagerNote.new
    @hiring_manager_note.candidate_id = params[:candidate_id]
    @hiring_manager_note.note_id = params[:note_id]
    @hiring_manager_note.hiring_manager_id = params[:hiring_manager_id]
    
    if @hiring_manager_note.save
            redirect_to hiring_manager_notes_url
          else
      render 'new'
    end
  end

  def edit
    @hiring_manager_note = HiringManagerNote.find_by_id(params[:id])
  end

  def update
    @hiring_manager_note = HiringManagerNote.find_by_id(params[:id])
    @hiring_manager_note.candidate_id = params[:candidate_id]
    @hiring_manager_note.note_id = params[:note_id]
    @hiring_manager_note.hiring_manager_id = params[:hiring_manager_id]
    
    if @hiring_manager_note.save
            redirect_to hiring_manager_notes_url
          else
      render 'edit'
    end
  end

  def destroy
    @hiring_manager_note = HiringManagerNote.find_by_id(params[:id])
    @hiring_manager_note.destroy
        redirect_to hiring_manager_notes_url
      end
end
