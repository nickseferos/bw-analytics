class PortCallsController < ApplicationController
  before_action :set_port_call, only: [:show, :edit, :update, :destroy]

  # GET /port_calls
  # GET /port_calls.json
  def index
    @port_calls = PortCall.all
  end

  # GET /port_calls/1
  # GET /port_calls/1.json
  def show

  end

  # GET /port_calls/new
  def new
    @port_call = PortCall.new
    @terminal = Terminal.all
    @voyage = Voyage.all
    @vessel = Vessel.all
  end

  # GET /port_calls/1/edit
  def edit
  end

  # POST /port_calls
  # POST /port_calls.json
  def create
    @port_call = PortCall.new(port_call_params)

    respond_to do |format|
      if @port_call.save!
        format.html { redirect_to root_path, notice: 'Port call was successfully created.' }
        format.json { render :show, status: :created, location: @port_call }
      else
        format.html { render :new }
        format.json { render json: @voyage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /port_calls/1
  # PATCH/PUT /port_calls/1.json
  def update
    respond_to do |format|
      if @port_call.update(port_call_params)
        format.html { redirect_to root_path, notice: 'Port call was successfully updated.' }
        format.json { render :show, status: :ok, location: @port_call }
      else
        format.html { render :edit }
        format.json { render json: @port_call.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /port_calls/1
  # DELETE /port_calls/1.json
  def destroy
    @port_call.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Port call was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_port_call
      @port_call = PortCall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def port_call_params
      params.require(:port_call).permit(:voyage_id, :terminal_id, :eta, :ata, :etd, :atd, :departed)
    end
end
