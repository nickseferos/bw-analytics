class SteamshiplinesController < ApplicationController
  before_action :set_steamshipline, only: [:show, :edit, :update, :destroy]

  # GET /steamshiplines
  # GET /steamshiplines.json
  def index
    @steamshiplines = Steamshipline.all
  end

  # GET /steamshiplines/1
  # GET /steamshiplines/1.json
  def show
  end

  # GET /steamshiplines/new
  def new
    @steamshipline = Steamshipline.new
    @countries = Country.all
  end

  # GET /steamshiplines/1/edit
  def edit
  end

  # POST /steamshiplines
  # POST /steamshiplines.json
  def create
    @steamshipline = Steamshipline.new(steamshipline_params)

    respond_to do |format|
      if @steamshipline.save
        format.html { redirect_to @steamshipline, notice: 'Steamshipline was successfully created.' }
        format.json { render :show, status: :created, location: @steamshipline }
      else
        format.html { render :new }
        format.json { render json: @steamshipline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /steamshiplines/1
  # PATCH/PUT /steamshiplines/1.json
  def update
    respond_to do |format|
      if @steamshipline.update(steamshipline_params)
        format.html { redirect_to @steamshipline, notice: 'Steamshipline was successfully updated.' }
        format.json { render :show, status: :ok, location: @steamshipline }
      else
        format.html { render :edit }
        format.json { render json: @steamshipline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /steamshiplines/1
  # DELETE /steamshiplines/1.json
  def destroy
    @steamshipline.destroy
    respond_to do |format|
      format.html { redirect_to steamshiplines_url, notice: 'Steamshipline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_steamshipline
      @steamshipline = Steamshipline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def steamshipline_params
      params.require(:steamshipline).permit(:name, :country_id)
    end
end
