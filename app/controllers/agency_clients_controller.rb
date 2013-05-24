class AgencyClientsController < ApplicationController
  # GET /agency_clients
  # GET /agency_clients.json
  def index
    @agency_clients = AgencyClient.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @agency_clients }
    end
  end

  # GET /agency_clients/1
  # GET /agency_clients/1.json
  def show
    @agency_client = AgencyClient.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @agency_client }
    end
  end

  # GET /agency_clients/new
  # GET /agency_clients/new.json
  def new
    @agency_client = AgencyClient.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @agency_client }
    end
  end

  # GET /agency_clients/1/edit
  def edit
    @agency_client = AgencyClient.find(params[:id])
  end

  # POST /agency_clients
  # POST /agency_clients.json
  def create
    @agency_client = AgencyClient.new(params[:agency_client])

    respond_to do |format|
      if @agency_client.save
        format.html { redirect_to @agency_client, notice: 'Agency client was successfully created.' }
        format.json { render json: @agency_client, status: :created, location: @agency_client }
      else
        format.html { render action: "new" }
        format.json { render json: @agency_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /agency_clients/1
  # PUT /agency_clients/1.json
  def update
    @agency_client = AgencyClient.find(params[:id])

    respond_to do |format|
      if @agency_client.update_attributes(params[:agency_client])
        format.html { redirect_to @agency_client, notice: 'Agency client was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @agency_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agency_clients/1
  # DELETE /agency_clients/1.json
  def destroy
    @agency_client = AgencyClient.find(params[:id])
    @agency_client.destroy

    respond_to do |format|
      format.html { redirect_to agency_clients_url }
      format.json { head :no_content }
    end
  end
end
