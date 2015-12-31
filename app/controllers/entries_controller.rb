class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :edit, :update, :destroy]
  helper :all
  before_filter :save_login_state, :only => [:new, :create]
  set_tab :entries
  def search

  end 

  # GET /entries
  # GET /entries.json
  def index

    @regions = Region.all
    if session[:client_id]
      @entries = Entry.active
    elsif session[:owner_id]
      @entries = Entry.where(owner: session[:owner_id])
    else  
      @entries = Entry.active.approved
      filtering_params(params).each do |key, value|
        @entries = @entries.public_send(key, value) if value.present?
      end
      #@entries = @entries.region(params[:region_id]) if params[:region_id].present?
      #@entries = @entries.region(params[:region_id]).guests(params[:guests]) if params[:region_id].present? && params[:guests].present?
      
    end  

    
  end


  # GET /entries/1
  # GET /entries/1.json
  def show
    @entry = Entry.find(params[:id])
    @entries_review = EntriesReview.new
  end

  

  # GET /entries/new
  def new
    @entry = Entry.new
  end

  # GET /entries/1/edit
  def edit
  end

  # POST /entries
  # POST /entries.json
  def create
    @entry = Entry.new(entry_params)

    respond_to do |format|
      if @entry.save
        format.html { redirect_to @entry, notice: 'Entry was successfully created.' }
        format.json { render :show, status: :created, location: @entry }
      else
        format.html { render :new }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entries/1
  # PATCH/PUT /entries/1.json
  def update
    respond_to do |format|
      if @entry.update(entry_params)
        format.html { redirect_to @entry, notice: 'Entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @entry }
      else
        format.html { render :edit }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entries/1
  # DELETE /entries/1.json
  def destroy
    @entry.destroy
    respond_to do |format|
      format.html { redirect_to entries_url, notice: 'Entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry
      @entry = Entry.find(params[:id])
    end

    def filtering_params(params)
      params.slice(:location, :guests, :check_in,:check_out)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entry_params
      params[:entry]
    end
end
