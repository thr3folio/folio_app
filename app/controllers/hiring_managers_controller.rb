class HiringManagersController < ApplicationController

  def index
    @hiring_managers = HiringManager.all
  end

  def show
    @hiring_manager = HiringManager.find_by_id(params[:id])
  end

  def new
    @hiring_manager = HiringManager.new
  end

  def create
    @hiring_manager = HiringManager.new(params[:hiring_manager])

    if @hiring_manager.save
            redirect_to hiring_managers_url
          else
      render 'new'
    end
  end

  def edit
    @hiring_manager = HiringManager.find_by_id(params[:id])
  end

  def update
    @hiring_manager = HiringManager.find_by_id(params[:id])

    if @hiring_manager.update_attributes(params[:hiring_manager])
      redirect_to hiring_managers_url
    else
      render 'edit'
    end
  end

  def destroy
    @hiring_manager = HiringManager.find_by_id(params[:id])
    @hiring_manager.destroy
        redirect_to hiring_managers_url
      end
end
