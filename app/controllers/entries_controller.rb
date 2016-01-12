class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :edit, :update, :destroy]
  helper :all
  #before_filter :save_login_state, :only => [:new, :create]
  set_tab :entries
  def search

  end 

  def get_cities
    if params[:country].present?
      @cities = City.where(language: get_languageid(I18n.locale.to_s), cou: params[:country])
    else
      @cities = City.where(nil)
    end  
    render json: @cities
  end  

  # GET /entries
  # GET /entries.json
  def index
    if I18n.locale.to_s == "pt"
      @regions = Region.where(language: 2)
    elsif I18n.locale.to_s == "en"
      @regions =  Region.where(language: 1)
    elsif I18n.locale.to_s == "de"
      @regions =  Region.where(language: 3)
    else
      @regions =  Region.where(language: 4) 
    end
    
    @entries = Entry.where(nil)
    filtering_params(params).each do |key, value|
      @entries = @entries.public_send(key, value) if value.present?
    end

    @cities = City.where(language: get_languageid(I18n.locale.to_s))
      
    @countries = Country.where(language: get_languageid(I18n.locale.to_s))

    puts @entries
    if @entries.first.blank?
      flash.now[:error] = "No results"
      render :index
    else
      @entries = @entries.where(active: true, approved: true)
    end  
      #@entries = @entries.region(params[:region_id]) if params[:region_id].present?
      #@entries = @entries.region(params[:region_id]).guests(params[:guests]) if params[:region_id].present? && params[:guests].present?  
    
    
  end


  # GET /entries/1
  # GET /entries/1.json
  def show
    if I18n.locale.to_s == "pt"
      @regions = Region.where(language: 2)
    elsif I18n.locale.to_s == "en"
      @regions =  Region.where(language: 1)
    elsif I18n.locale.to_s == "de"
      @regions =  Region.where(language: 3)
    else
      @regions =  Region.where(language: 4) 
    end

    @entry = Entry.find(params[:id])
    @owner = Owner.find(@entry.owner)
    @entries_review = EntriesReview.new
  end

  

  # GET /entries/new
  def new
    @entry = Entry.new
    
  end

  # GET /entries/1/edit
  def edit
    @owner = Owner.find(@entry.owner)
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
      params.slice(:region, :guests, :check_in,:check_out,:country,:city)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entry_params
      params[:entry].permit(:id,:name,:continent,:country,:region,:sleeps,:minimunrental,:catering,:nobedroms,:nodoubles,:notwins,
        :doublesofabeds,:singlesofabeds,:babybeds,:babyhighchairs,:nobathrooms,:noshowerrooms,:noguestwc,:iscity,:isbeach,
        :iscountryside,:isrural,:isskiarea,:ismountains,:iskitchen,:iskitchinette,:isseparatedining,:iscooker,:isove,:ismicrowave,
        :isrefrigerator,:isfreezer,:istoaster,:iscoffemachine,:isdishwater,:iswashmachine,:iskitchenware,:ispotspans,:isglassware,
        :istowels,:iscentralheating,:isairconditioning,:isceilingfans,:isventilators,:iselectricalheaters,:isfireplace,:istelephone,
        :isfax,:isinternetwificonnection,:isinternetwithcomputer,:isalarm,:istv,:iscablesatelitetv,:isradio,:issafe,:isstereo,:isdvd,
        :iscdplayer,:issauna,:islakeview,:ismountainsview,:ispoolview,:isriverview,:isseaview,:isbalcony,:isgarden,:isterrace,:isbbq,
        :isdeck,:isprivateswimmingpool,:isprivateswimmingpoolheated,:issharedswimmingpool,:issharedswimmingpoolheated,:ispoolshower,
        :isjacuzzi,:istabletennis,:istenniscourt,:isprivateparking,:isgarage,:isgolf,:isgastronomy)
    end
end
