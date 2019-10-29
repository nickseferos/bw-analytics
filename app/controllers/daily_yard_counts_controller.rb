class DailyYardCountsController < ApplicationController
  before_action :set_daily_yard_count, only: [:show, :edit, :update, :destroy]

  # GET /daily_yard_counts
  # GET /daily_yard_counts.json
  def index
    @daily_yard_counts = DailyYardCount.all.order("date DESC").reverse
  end

  # GET /daily_yard_counts/1
  # GET /daily_yard_counts/1.json
  def show
  end

  # GET /daily_yard_counts/new
  def new
    @daily_yard_count = DailyYardCount.new
  end

  # GET /daily_yard_counts/1/edit
  def edit
  end

  # POST /daily_yard_counts
  # POST /daily_yard_counts.json
  def create
    @daily_yard_count = DailyYardCount.new(daily_yard_count_params)

    respond_to do |format|
      if @daily_yard_count.save
        format.html { redirect_to @daily_yard_count, notice: 'Daily yard count was successfully created.' }
        format.json { render :show, status: :created, location: @daily_yard_count }
      else
        format.html { render :new }
        format.json { render json: @daily_yard_count.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_yard_counts/1
  # PATCH/PUT /daily_yard_counts/1.json
  def update
    respond_to do |format|
      if @daily_yard_count.update(daily_yard_count_params)
        format.html { redirect_to @daily_yard_count, notice: 'Daily yard count was successfully updated.' }
        format.json { render :show, status: :ok, location: @daily_yard_count }
      else
        format.html { render :edit }
        format.json { render json: @daily_yard_count.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_yard_counts/1
  # DELETE /daily_yard_counts/1.json
  def destroy
    @daily_yard_count.destroy
    respond_to do |format|
      format.html { redirect_to daily_yard_counts_url, notice: 'Daily yard count was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_yard_count
      @daily_yard_count = DailyYardCount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daily_yard_count_params
      params.require(:daily_yard_count).permit(:date, :trucks, :transactions, :detained, :turntime, :note, :terminal_id)
    end
end
