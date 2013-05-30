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
    @hiring_manager_note = HiringManagerNote.new(params[:hiring_manager_note])

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

    if @hiring_manager_note.update_attributes(params[:hiring_manager_note])
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
