class ClientsController < ApplicationController
  before_filter :save_client_login_state, :only => [:new, :create]
  set_tab :client
    

  # GET /owners
  # GET /owners.json
  def index
    @clients = Client.all
  end

  # GET /owners/1
  # GET /owners/1.json
  def show
    @client = Client.find(params[:id])
  end

  # GET /owners/new
  def new
    @client = Client.new
  end

  # GET /owners/1/edit
  def edit
    @client = Client.find(params[:id])
  end

  # POST /owners
  # POST /owners.json
  def create
    @client = Client.new(owner_params)

    respond_to do |format|
      if @client.save
        format.html { redirect_to @client, notice: 'Client was successfully created.' }
        format.json { render :show, status: :created, location: @client }
      else
        format.html { render :new }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /owners/1
  # PATCH/PUT /owners/1.json
  def update
    respond_to do |format|
      if @client.update(client_params)
        format.html { redirect_to @client, notice: 'Client was successfully updated.' }
        format.json { render :show, status: :ok, location: @client }
      else
        format.html { render :edit }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /owners/1
  # DELETE /owners/1.json
  def destroy
    @client.destroy
    respond_to do |format|
      format.html { redirect_to clients_url, notice: 'Client was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      #@owner = Owner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_params
      params[:client].permit(:id,:email,:password,:password_confirmation,:firstname,:lastname,:birtday,:street,:street2,:country,:zipandcity,
        :telhome,:telhome2,:mobile,:mobile2,:photo,:preferedlanguage)
    end
end
